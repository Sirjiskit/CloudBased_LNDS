<?php include'db_connect.php' ?>
<div class="col-lg-12">
    <div class="card card-outline card-success">
        <div class="card-header">
            <div class="card-tools">
                <?php if ($_SESSION['login_type'] != 3): ?>
                <a class="btn btn-block btn-sm btn-default btn-flat border-success" href="./?page=new_lecture_note"><i class="fa fa-plus"></i> Add New</a>
                <?php endif;?>
            </div>
        </div>
        <div class="card-body">
            <table class="table tabe-hover table-bordered" id="list">
                <?php if ($_SESSION['login_type'] == 1): ?>
                    <colgroup>
                        <col width="10%">
                        <col width="25%">
                        <col width="35%">
                        <col width="20%">
                        <col width="10%">
                    </colgroup>
                <?php else: ?>
                    <colgroup>
                        <col width="10%">
                        <col width="30%">
                        <col width="50%">
                        <col width="10%">
                    </colgroup>
                <?php endif; ?>

                <thead>
                    <tr>
                        <th class="text-center">#</th>
                        <th>Title</th>
                        <th>Description</th>
                        <?php if ($_SESSION['login_type'] == 1 || $_SESSION['login_type'] == 3): ?>
                            <th>User</th>
                        <?php endif; ?>
                        <th>Action</th>
                    </tr>
                </thead>
                <tbody>
                    <?php
                    $i = 1;
                    $where = '';
                    if ($_SESSION['login_type'] == 1):
                        $user = $conn->query("SELECT * FROM users where id in (SELECT user_id FROM documents) ");
                        while ($row = $user->fetch_assoc()) {
                            $uname[$row['id']] = ucwords($row['lastname'] . ', ' . $row['firstname'] . ' ' . $row['middlename']);
                        }
                    else:
                        $where = " where user_id = '{$_SESSION['login_id']}' ";
                    endif;
                    $qry = $conn->query("SELECT * FROM documents $where order by unix_timestamp(date_created) desc ");
                    if ($_SESSION['login_type'] == 3):
                        $qry = $conn->query("SELECT d.* FROM documents d JOIN doc_shared s ON d.id = s.nId "
                                . "WHERE level = {$_SESSION['login_level']}  order by unix_timestamp(date_created) desc ");
                    endif;
                    while ($row = $qry->fetch_assoc()):
                        $trans = get_html_translation_table(HTML_ENTITIES, ENT_QUOTES);
                        unset($trans["\""], $trans["<"], $trans[">"], $trans["<h2"]);
                        $desc = strtr(html_entity_decode($row['description']), $trans);
                        $desc = str_replace(array("<li>", "</li>"), array("", ", "), $desc);
                        ?>
                        <tr>
                            <th class="text-center"><?php echo $i++ ?></th>
                            <td><b><?php echo ucwords($row['title']) ?></b></td>
                            <td><b class="truncate"><?php echo strip_tags($desc) ?></b></td>
                            <?php if ($_SESSION['login_type'] == 1 || $_SESSION['login_type'] == 3): ?>
                                <td><?php echo isset($uname[$row['user_id']]) ? $uname[$row['user_id']] : "Deleted User" ?></td>
                            <?php endif; ?>
                            <td class="text-center">

                                <div class="btn-group">
                                    <a href="./?page=edit_lecture_note&id=<?php echo $row['id'] ?>" class="btn btn-success btn-flat">
                                        <i class="fas fa-edit"></i>
                                    </a>
                                    <a  href="./?page=view_lecture_note&id=<?php echo md5($row['id']) ?>" class="btn btn-info btn-flat">
                                        <i class="fas fa-eye"></i>
                                    </a>
                                    <button type="button" class="btn btn-danger btn-flat delete_lecture_note" data-id="<?php echo $row['id'] ?>">
                                        <i class="fas fa-trash"></i>
                                    </button>
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
        $('#list').dataTable();
        $('.delete_document').click(function () {
            _conf("Are you sure to delete this lecture note?", "delete_lecture_note", [$(this).attr('data-id')]);
        });
    });
    function delete_lecture_note($id) {
        start_load();
        $.ajax({
            url: 'ajax.php?action=delete_file',
            method: 'POST',
            data: {id: $id},
            success: function (resp) {
                if (parseInt(resp) === 1) {
                    alert_toast("Data successfully deleted", 'success')
                    setTimeout(function () {
                        location.reload();
                    }, 1500);

                }
            }
        });
    }
</script>