<?php
$id = filter_input(INPUT_GET, "id", FILTER_SANITIZE_NUMBER_INT);
include 'db_connect.php';
if (filter_has_var(INPUT_GET, "id") && !empty($id)):
    $qry = $conn->query("SELECT * FROM courses where id = $id ")->fetch_array();
    foreach ($qry as $k => $v) {
        $$k = $v;
    }
endif;
?>
<form action="" id="manage_course">
    <input type="hidden" name="id" value="<?php echo isset($id) ? $id : '' ?>">
    <div class="form-group">
        <label for="" class="control-label">Course</label>
        <input type="text" name="course" class="form-control form-control-sm" required value="<?php echo isset($course) ? $course : '' ?>">
    </div>
    <div class="form-group">
        <label for="" class="control-label">Description</label>
        <textarea rows="2" class="form-control" name="description" required=""><?php echo isset($description) ? $description : '' ?></textarea>
    </div>
</form>
<script>
    $('#manage_course').submit(function (e) {
        e.preventDefault();
        start_load();
        $('input').removeClass("border-danger");
        if ($("[name='course']").val() === '' && $("[name='description']").val() === '') {
            $('[name="course"],[name="description"]').addClass("border-danger");
            end_load();
            return false;
        }
        $.ajax({
            url: 'ajax.php?action=save_course',
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
                        location.reload();
                    }, 750);
                } else if (parseInt(resp) === 2) {
                    $('#msg').html("<div class='alert alert-danger'>Course already exist.</div>");
                    $('[name="course"]').addClass("border-danger");
                    end_load();
                } else {
                    alert_toast('Unabled to save new course please try again later.', "error");
                }
            }
        });
    });
</script>