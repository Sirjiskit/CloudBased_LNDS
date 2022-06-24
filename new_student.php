<?php 
?>
<div class="col-lg-12">
    <div class="card">
        <div class="card-body">
            <form action="" id="manage_student">
                <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
                <div class="row">
                    <div class="col-md-6 border-right">
                        <b class="text-muted">Personal Information</b>
                        <div class="form-group">
                            <label for="" class="control-label">Reg No.</label>
                            <input type="text" name="regNo" class="form-control form-control-sm" required value="<?php echo isset($regNo) ? $regNo : '' ?>">
                            <small id="msg"></small>
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">First Name</label>
                            <input type="text" name="firstname" class="form-control form-control-sm" required value="<?php echo isset($firstname) ? $firstname : '' ?>">
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Middle Name</label>
                            <input type="text" name="middlename" class="form-control form-control-sm"  value="<?php echo isset($middlename) ? $middlename : '' ?>">
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Last Name</label>
                            <input type="text" name="lastname" class="form-control form-control-sm" required value="<?php echo isset($lastname) ? $lastname : '' ?>">
                        </div>
                        <div class="form-group">
                            <label for="" class="control-label">Phone No.</label>
                            <input type="text" name="phone" pattern="^(080|090|070|081|091)+[0-9]{8}$" class="form-control form-control-sm" required value="<?php echo isset($phone) ? $phone : '' ?>">
                            <small id="msg2"></small>
                        </div>
                    </div>
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="" class="control-label">Avatar</label>
                            <div class="custom-file">
                                <input type="file" class="custom-file-input" id="customFile" name="img" onchange="displayImg(this, $(this))">
                                <label class="custom-file-label" for="customFile">Choose file</label>
                            </div>
                        </div>
                        <div class="form-group d-flex justify-content-center">
                            <img src="<?php echo isset($avatar) ? 'assets/uploads/' . $avatar : '' ?>" alt="" id="cimg" class="img-fluid img-thumbnail">
                        </div>
                        <b class="text-muted">System Credentials</b>
                        <div class="form-group">
                            <label for="" class="control-label">Level</label>
                            <select name="level" id="type" class="custom-select custom-select-sm">
                                <option value="1" <?php echo isset($level) && $level == 1 ? 'selected' : '' ?>>ND1</option>
                                <option value="2" <?php echo isset($level) && $level == 2 ? 'selected' : '' ?>>ND2</option>
                                <option value="3" <?php echo isset($level) && $level == 3 ? 'selected' : '' ?>>HND1</option>
                                <option value="4" <?php echo isset($level) && $level == 4 ? 'selected' : '' ?>>HND2</option>
                            </select>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Email</label>
                            <input type="email" class="form-control form-control-sm" name="email" required value="<?php echo isset($email) ? $email : '' ?>">
                            <small id="msg3"></small>
                        </div>
                        <div class="form-group">
                            <label class="control-label">Password</label>
                            <input type="password" class="form-control form-control-sm" name="password" <?php echo isset($id) ? "" : 'required' ?>>
                            <small><i><?php echo isset($id) ? "Leave this blank if you dont want to change you password" : '' ?></i></small>
                        </div>
                        <div class="form-group">
                            <label class="label control-label">Confirm Password</label>
                            <input type="password" class="form-control form-control-sm" name="cpass" <?php echo isset($id) ? '' : 'required' ?>>
                            <small id="pass_match" data-status=''></small>
                        </div>
                    </div>
                </div>
                <hr>
                <div class="col-lg-12 text-right justify-content-center d-flex">
                    <button class="btn btn-primary mr-2">Save</button>
                    <button class="btn btn-secondary" type="button" onclick="location.href = 'index.php?page=student_list'">Cancel</button>
                </div>
            </form>
        </div>
    </div>
</div>
<style>
    img#cimg{
        max-height: 15vh;
        /*max-width: 6vw;*/
    }
</style>
<script>
    $('[name="password"],[name="cpass"]').keyup(function () {
        var pass = $('[name="password"]').val();
        var cpass = $('[name="cpass"]').val();
        if (cpass === '' || pass === '') {
            $('#pass_match').attr('data-status', '');
        } else {
            if (cpass === pass) {
                $('#pass_match').attr('data-status', '1').html('<i class="text-success">Password Matched.</i>');
            } else {
                $('#pass_match').attr('data-status', '2').html('<i class="text-danger">Password does not match.</i>');
            }
        }
    });
    function displayImg(input, _this) {
        if (input.files && input.files[0]) {
            var reader = new FileReader();
            reader.onload = function (e) {
                $('#cimg').attr('src', e.target.result);
            };

            reader.readAsDataURL(input.files[0]);
        }
    }
    $('#manage_student').submit(function (e) {
        e.preventDefault();
        $('input').removeClass("border-danger");
        start_load();
        $('#msg').html('');
        $('#msg2').html('');
        $('#msg3').html('');
        if (parseInt($('#pass_match').attr('data-status')) !== 1) {
            if ($("[name='password']").val() !== '') {
                $('[name="password"],[name="cpass"]').addClass("border-danger");
                end_load();
                return false;
            }
        }
        $.ajax({
            url: 'ajax.php?action=save_student',
            data: new FormData($(this)[0]),
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST',
            success: function (resp) {
                if (parseInt(resp) === 1) {
                    alert_toast('Data successfully saved.', "success");
                    setTimeout(function () {
                        location.replace('index.php?page=student_list');
                    }, 750);
                } else if (parseInt(resp) === 2) {
                    $('#msg').html("<div class='alert alert-danger'>Reg No already exist.</div>");
                    $('[name="regNo"]').addClass("border-danger");
                    end_load();
                } else if (parseInt(resp) === 3) {
                    $('#msg2').html("<div class='alert alert-danger'>Phone number already exist.</div>");
                    $('[name="phone"]').addClass("border-danger");
                    end_load();
                } else if (parseInt(resp) === 4) {
                    $('#msg3').html("<div class='alert alert-danger'>Email already exist.</div>");
                    $('[name="email"]').addClass("border-danger");
                    end_load();
                }
            }
        });
    });


    "use strict";
    $.fn.extend({
        lowerCase: function () {
            $(this).keyup(function (event) {
                var box = event.target;
                var txt = $(this).val();
                var start = box.selectionStart;
                var end = box.selectionEnd;
                $(this).val(txt.toLowerCase());
                box.setSelectionRange(start, end);
            });
            return this;
        },
        upperCase: function () {
            $(this).keyup(function (event) {
                var box = event.target;
                var txt = $(this).val();
                var start = box.selectionStart;
                var end = box.selectionEnd;
                $(this).val(txt.toUpperCase());
                box.setSelectionRange(start, end);
            });
            return this;
        }
    });
    $(document).ready(function () {
        $('[name="regNo"]').upperCase();
        $('[name="email"]').lowerCase();
    });
</script>