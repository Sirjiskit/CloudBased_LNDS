<?php include'db_connect.php' ?>
<?php
$id = filter_input(INPUT_GET, "did", FILTER_SANITIZE_NUMBER_INT);
?>

<form id="share_file">
    <input type="hidden" value="<?php echo $id ?>" name="nId">
    <div class="container-fluid">
        <div class="form-group">
            <label for="" class="control-label">Course</label>
            <select name="cId" id="cId" class="custom-select custom-select-sm" required="">
                <option value="">Select</option>
                <?php
                $qry = $conn->query("SELECT * FROM courses order by course asc");
                while ($row = $qry->fetch_assoc()):
                    ?>
                    <option value="<?php echo $row["id"] ?>"><?php echo $row["course"] ?> : <?php echo $row["description"] ?></option>
                    <?php
                endwhile;
                ?>


            </select>
        </div>
        <div class="form-group">
            <label for="" class="control-label">Level</label>
            <select name="level" id="level" class="custom-select custom-select-sm" required="">
                <option value="">Select</option>
                <option value="1">ND1</option>
                <option value="2">ND2</option>
                <option value="3">HND1</option>
                <option value="4">HND2</option>
            </select>
        </div>
    </div>
    <div class="modal-footer display p-0 m-0">
        <button type="submit" class="btn bg-gradient-success" type="button"><i class="fa fa-share-alt"></i> Distribute</button>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
    </div>
</form>
<style>
    #uni_modal .modal-footer{
        display: none
    }
    #uni_modal .modal-footer.display{
        display: flex
    }
</style>
<script>

    $('#share_file').submit(function (e) {
        e.preventDefault();
        $.ajax({
            url: 'ajax.php?action=distribute_note',
            data: new FormData($(this)[0]),
            cache: false,
            contentType: false,
            processData: false,
            method: 'POST',
            type: 'POST',
            success: function (resp) {
                if (parseInt(resp) === 1) {
                    alert_toast('Lecture note successfully distributed.', "success");
                    setTimeout(function () {
                        location.reload();
                    }, 750);
                } else if (parseInt(resp) === 2) {
                    alert_toast('Lecture note already distributed.', "error");
                    end_load();
                } else {
                    alert_toast('Unabled to distribute lecture note please try again later.', "error");
                }
            }, error: function (err) {
                alert_toast(err.message, "error");
            }
        });
    });
</script>