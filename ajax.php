<?php

ob_start();
$action = $_GET['action'];
include 'admin_class.php';
$crud = new Action();
if ($action == 'login') {
    $login = $crud->login();
    if ($login):
        echo $login;
    endif;
}
if ($action == 'logout') {
    $logout = $crud->logout();
    if ($logout):
        echo $logout;
    endif;
}
if ($action == 'save_user') {
    $save = $crud->save_user();
    if ($save):
        echo $save;
    endif;
}
if ($action == 'update_user') {
    $save = $crud->update_user();
    if ($save):
        echo $save;
    endif;
}
if ($action == 'upload_file') {
    $save = $crud->upload_file();
    if ($save):
        echo $save;
    endif;
    // var_dump($_FILES);
}
if ($action == 'remove_file') {
    $delete = $crud->remove_file();
    if ($delete):
        echo $delete;
    endif;
}

if ($action == 'save_upload') {
    $save = $crud->save_upload();
    if ($save):
        echo $save;
    endif;
}
if ($action == 'delete_file') {
    $delete = $crud->delete_file();
    if ($delete):
        echo $delete;
    endif;
}
if ($action == 'delete_user') {
    $save = $crud->delete_user();
    if ($save):
        echo $save;
    endif;
}
if ($action == 'save_course'):
    echo $crud->save_course();
endif;
if ($action == "delete_course"):
    echo $crud->delete_course();
endif;
if($action == "save_student"):
    echo $crud->save_student();
endif;
if($action == "delete_student"):
    echo $crud->delete_student();
endif;
if($action == "distribute_note"):
    echo $crud->distribute_note();
endif;
ob_end_flush();
