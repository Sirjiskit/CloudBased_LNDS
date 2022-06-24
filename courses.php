<?php include'db_connect.php' ?>
<div class="col-lg-12">
    <div class="card card-outline card-success">
        <div class="card-header">
            <div class="card-tools">
                <a class="btn btn-block btn-sm btn-default btn-flat border-success" id="btn-new_course" href="./?page=new_course"><i class="fa fa-plus"></i> Add New Course</a>
            </div>
        </div>
        <div class="card-body">
            <table class="table tabe-hover table-bordered" id="list">
                <thead>
                    <tr>
                        <th class="text-center">#</th>
                        <th>Course</th>
                        <th>Description</th>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i = 1;
                    $qry = $conn->query("SELECT * FROM `courses` order by course asc");
                    while ($row = $qry->fetch_assoc()):
                        ?>
                        <tr>
                            <th class="text-center"><?php echo $i++ ?></th>
                            <td><b><?php echo ucwords($row['course']) ?></b></td>
                            <td><b><?php echo $row['description'] ?></b></td>
                            <td class="text-center">
                                <button type="button" class="btn btn-default btn-sm btn-flat border-success wave-effect text-success dropdown-toggle" data-toggle="dropdown" aria-expanded="true">
                                    Action
                                </button>
                                <div class="dropdown-menu" style="">
                                    <a class="dropdown-item edit_course" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Edit</a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item delete_user" href="javascript:void(0)" data-id="<?php echo $row['id'] ?>">Delete</a>
                                </div>
                            </td>
                        </tr>	
                    <?php endwhile; ?>
                </tbody>
            </table>
        </div>
    </div>
</div>
<script>
    $(document).ready(function () {
        $('#btn-new_course').click(function (e) {
            e.preventDefault();
            uni_modal("<i class='fa fa-plus'></i> Add new course.", "new_course.php");
        });
        $('#list').dataTable();
        $('.edit_course').click(function () {
            uni_modal("<i class='fa fa-edit'></i> Edit course.", "new_course.php?id=" + $(this).attr('data-id'));
        });
        $('.delete_user').click(function () {
            _conf("Deleting this course may affect all data associated it Are you sure?", "delete_course", [$(this).attr('data-id')]);
        });
    });
    function delete_course($id) {
        start_load();
        $.ajax({
            url: 'ajax.php?action=delete_course',
            method: 'POST',
            data: {id: $id},
            success: function (resp) {
                if (parseInt(resp) === 1) {
                    alert_toast("Data successfully deleted", 'success');
                    setTimeout(function () {
                        location.reload();
                    }, 1500);

                }
            }
        });
    }
</script>