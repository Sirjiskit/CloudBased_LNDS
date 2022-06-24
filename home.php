<?php include('db_connect.php') ?>
<!-- Info boxes -->
<?php if ($_SESSION['login_type'] == 1) { ?>
    <div class="row">
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
                <span class="info-box-icon bg-success elevation-1"><i class="fas fa-graduation-cap"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total Students</span>
                    <span class="info-box-number">
                        <?php echo $conn->query("SELECT * FROM students")->num_rows; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
                <span class="info-box-icon bg-info elevation-1"><i class="fas fa-users"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total Users</span>
                    <span class="info-box-number">
                        <?php echo $conn->query("SELECT * FROM users where type = 2")->num_rows; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
                <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-folder"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total Notes</span>
                    <span class="info-box-number">
                        <?php echo $conn->query("SELECT * FROM documents")->num_rows; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
                <span class="info-box-icon bg-warning elevation-1"><i class="fas fa-book text-white"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total Courses</span>
                    <span class="info-box-number">
                        <?php echo $conn->query("SELECT * FROM courses")->num_rows; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
    </div>

<?php } else if ($_SESSION['login_type'] == 2) { ?>
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                Welcome <?php echo $_SESSION['login_name'] ?>!
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
                <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-folder"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total Documents</span>
                    <span class="info-box-number">
                        <?php echo $conn->query("SELECT * FROM documents  where user_id = {$_SESSION['login_id']}")->num_rows; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
    </div>

<?php } else { 
    ?>
    <div class="col-12">
        <div class="card">
            <div class="card-body">
                Welcome <?php echo $_SESSION['login_name'] ?>!
            </div>
        </div>
    </div>
    <div class="row">
        <div class="col-12 col-sm-6 col-md-3">
            <div class="info-box">
                <span class="info-box-icon bg-primary elevation-1"><i class="fas fa-folder"></i></span>

                <div class="info-box-content">
                    <span class="info-box-text">Total Documents</span>
                    <span class="info-box-number">
                        <?php echo $conn->query("SELECT d.* FROM documents d JOIN doc_shared s ON d.id = s.nId  where level = {$_SESSION['login_level']}")->num_rows; ?>
                    </span>
                </div>
                <!-- /.info-box-content -->
            </div>
            <!-- /.info-box -->
        </div>
        <!-- /.col -->
    </div>
<?php
}