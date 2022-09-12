<!DOCTYPE html>
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>PH Asset Management System</title>
    <!-- Tell the browser to be responsive to screen width -->
    <meta name="csrf-token" content="{{ csrf_token()}}">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!-- Font Awesome -->
    <link rel="stylesheet" href="assets/plugins/fontawesome-free/css/all.min.css">
    <!-- iCheck -->
    <link rel="stylesheet" href="assets/plugins/icheck-bootstrap/icheck-bootstrap.min.css">
    <!-- Theme style -->
    <link rel="stylesheet" href="assets/dist/css/adminlte.min.css">
    <!-- overlayScrollbars -->
    <link rel="stylesheet" href="assets/plugins/overlayScrollbars/css/OverlayScrollbars.min.css">
    <!-- SweetAlert2 -->
    <script src="assets/sweetalert2/sweetalert2.js"></script>
    <!-- Toastr -->
    <link rel="stylesheet" href="assets/plugins/toastr/toastr.min.css">
    <!-- Datepicker -->
    <link href="assets/jquery-datepicker/jquery-ui.css')}}" rel="stylesheet">
    <!-- JQVMap -->
    <link rel="stylesheet" href="assets/plugins/jqvmap/jqvmap.min.css">
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://code.ionicframework.com/ionicons/2.0.1/css/ionicons.min.css">
    <style>
        .img-55{
            border-radius: 5px;
            border: 1px solid #d2d6de;
            width: 100px!important;
            height: 55px!important;
        }.img-60{
             border: 1.8px solid #d2d6de;
             width: 60px!important;
             height: 60px!important;
         }.img-65{
              border: 2px solid #d2d6de;
              width: 65px!important;
              height: 65px!important;
          }.accent-primary a{
               color: #41539c;
           }.link-angle{
                color: #41539c!important;
                pointer-events: none!important;
            }textarea{
                 resize: none!important;
             }.tooltip-inner {
                  white-space: pre-line;
              }a,td{
                   cursor: pointer;
               }.btn-edit, .btn-delete, .btn-view{
                    color: #17a2b8!important;
                }body{
                     font-weight: 500;
                 }.page-item.active .page-link{
                      background-color: #17a2b8;
                      border-color: #17a2b8;
                  }.accent-primary a{
                       color: #41539c;
                   }a {
                        color: #17a2b8;
                    }.page-link {
                         color:#17a2b8;
                     }[class*=icheck-]{
                          margin-top: 0px!important;
                          margin-bottom: 0px!important;
                      }.form-control:disabled, .form-control[readonly] {
                           background-color: #edf1f5;
                           opacity: 1;
                       }

        .adjust-icon{
            padding-top: 15px;
            padding-right: 15px;
        }
    </style>

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">
    <!-- Navbar -->
    <nav class="main-header navbar navbar-expand navbar-light navbar-light">
        <!-- Left navbar links -->
        <ul class="navbar-nav">
            <li class="nav-item">
                <a class="nav-link" data-widget="pushmenu" href="#"><i class="fas fa-bars"></i></a>
            </li>
            <!-- Left navbar links -->
            <li class="nav-item d-none d-sm-inline-block">
                <a href="" class="nav-link">PH Asset Management System</a>
            </li>
        </ul>
        <!-- Right navbar links -->
        <ul class="navbar-nav ml-auto">
        </ul>
        <div class="navbar-custom-menu">
            <ul class="navbar-nav ml-auto">

                <!-- User Account: style can be found in dropdown.less -->
                <li class="dropdown user user-menu" style="padding-top: 6px;">
                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" aria-expanded="false">
                        Paulo
                    </a>
                    <div class="dropdown-menu dropdown-menu-lg dropdown-menu-right" style="margin-top: 12px;">
                        <a href="#" class="dropdown-item" style="padding-top: 20px;">
                            <!-- Message Start -->
                            <div class="media">
                                <div class="media-body">
                                    <h3 class="dropdown-item-title black">
                                        Paulo
                                    </h3>
                                    <p class="text-sm black">Java Developer</p>
                                </div>
                            </div>
                            <!-- Message End -->
                        </a>
                        <div class="dropdown-divider"></div>
                        <a data-image="" class="dropdown-item black" data-toggle="modal" data-target="#modal-profile">
                            <i class="fas fa-user"></i>&nbsp;&nbsp;Profile
                        </a>
                        <div class="dropdown-divider"></div>
                        <a class="dropdown-item black" href="#"
                           onclick="event.preventDefault();
                  document.getElementById('logout-form').submit();">
                            <form id="logout-form" action="#" method="POST" style="display: none;">
                                @csrf
                            </form>
                            <i class="nav-icon fas fa-sign-out-alt"></i>&nbsp;&nbsp;Sign Out
                        </a>
                    </div>
                </li>
            </ul>
        </div>
    </nav>
    <!-- /.navbar -->

    <!-- Main Sidebar Container -->
    <aside class="main-sidebar elevation-4 sidebar-dark-info">
        <!-- Sidebar -->
        <div class="sidebar">
            <!-- Sidebar user panel (optional) -->

            <div class="user-panel mt-3 pb-3 mb-3 d-flex">
                <div class="image">
                </div>
                <div class="info">
                    <a href="#" class="d-block" style="color: white">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Java Developer</a>
                </div>
            </div>

            <!-- Sidebar Menu -->
            <nav class="mt-2">
                <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
                    <!-- Add icons to the links using the .nav-icon class
                    with font-awesome or any other icon font library -->
                    <li class="nav-item">
                        <a href="#" class="nav-link">
                            <i class="nav-icon fas fa-chart-line"></i>
                            <p>
                                Dashboard
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{url('phone/list')}}" class="nav-link {{ (Request::is('phone/list') ? 'active' : '' )}}">
                            <i class="fas fa-phone nav-icon"></i>
                            <p>
                                Phone
                            </p>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a href="{{url('laptop/list')}}" class="nav-link {{ (Request::is('laptop/list') || Request::is('computer/list') ? 'active' : '' )}}">
                            <i class="fas fa-laptop nav-icon"></i>
                            <p>
                                Computer
                            </p>
                        </a>
                    </li>
                    <!--<li class="nav-item">-->
                    <!--  <a href="{{url('table-chair/list')}}" class="nav-link {{ (Request::is('table-chair/list') || Request::is('cupboard/list') || Request::is('electrical-appliances/list') || Request::is('safetybox/list') || Request::is('printer/list') ? 'active' : '' )}}">-->
                    <!--    <i class="fas fa-couch nav-icon"></i>-->
                    <!--    <p>-->
                    <!--      Other Assets-->
                    <!--    </p>-->
                    <!--  </a>-->
                    <!--</li>-->

                </ul>
            </nav>
            <!-- /.sidebar-menu -->
        </div>
        <!-- /.sidebar -->
    </aside>

    <!-- Content Wrapper. Contains page content -->



    <!-- Content Wrapper. Contains page content -->
    <div class="content-wrapper" style="padding-left: 30px; padding-right: 30px;">
        <!-- Content Header (Page header) -->
        <div class="content-header">
            <div class="container-fluid">
                <div class="row mb-2">
                    <div class="col-sm-6">
                        <h1 class="m-0 text-dark">Dashboard</h1>
                    </div><!-- /.col -->
                </div><!-- /.row -->
            </div><!-- /.container-fluid -->
        </div>
        <!-- /.content-header -->

        <!-- Main content -->
        <section class="content">
            <div class="container-fluid">
                <!-- Small boxes (Stat box) -->
                <div class="row">
                    <div class="col">
                        <!-- small box -->
                        <div class="small-box bg-info">
                            <div class="inner">
                                <h3>{{$count_phone}}</h3>

                                <p>Total Phone</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-phone"></i>
                            </div>
                            <a href="{{url('phone/list')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col">
                        <!-- small box -->
                        <div class="small-box bg-success">
                            <div class="inner">
                                <h3></h3>

                                <p>Total Laptop</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-laptop"></i>
                            </div>
                            <a href="{{url('laptop/list')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col">
                        <!-- small box -->
                        <div class="small-box bg-danger">
                            <div class="inner">
                                <h3></h3>

                                <p>Total CPU</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-desktop"></i>
                            </div>
                            <a href="{{url('computer/list')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>
                    <!-- ./col -->
                    <div class="col">
                        <!-- small box -->
                        <div class="small-box bg-warning">
                            <div class="inner">
                                <h3></h3>

                                <p>Total Monitor</p>
                            </div>
                            <div class="icon">
                                <i class="fas fa-desktop"></i>
                            </div>
                            <a href="{{url('computer/list')}}" class="small-box-footer">More info <i class="fas fa-arrow-circle-right"></i></a>
                        </div>
                    </div>

                </div>

                <div class="col-md-12">

                    <!-- BAR CHART -->
                    <div class="card">
                        <div class="card-header">
                            <h3 class="card-title text-center">Total used and spare devices</h3>
                        </div>
                        <div class="card-body">
                            <div class="chart">
                                <canvas id="canvas" style="min-height: 300px; height: 300px; max-height: 300px; max-width: 100%;"></canvas>
                            </div>
                        </div>
                        <!-- /.card-body -->

                    </div>
                    <!-- /.card -->

                </div>
                <!-- /.col (RIGHT) -->
            </div>
            <!-- /.row -->
        </section>
        <!-- right col -->
    </div>
    <!-- /.row (main row) -->
</div><!-- /.container-fluid -->
</section>
<!-- /.content -->
</div>
<!-- /.content-wrapper -->



<!-- Content Wrapper. Contains page content -->
<div class="modal fade" id="modal-profile">
    <div class="modal-dialog">
        <div class="modal-content">
            <!--Header-->
            <div class="modal-header" style="padding-bottom: 0px;">
                <p class="heading lead"><strong>User Profile</strong>
                </p>
            </div>
            <form method="post" id="form-profile" enctype="multipart/form-data">
                @csrf
                <div class="modal-body">
                    <!-- BEGIN FORM-->
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>User Role</label>
                                        <input class="form-control caps" readonly type="text" value="{{Auth::user()->role}}">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Name</label>
                                        <input class="form-control caps" required name="name" type="text" value="{{Auth::user()->name}}">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label></label>Username</label>
                                        <input class="form-control" required name="username" type="text" value="{{Auth::user()->username}}">
                                    </div>
                                </div>
                            </div> <!-- END ROW-->
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="form-group">
                                        <label>Password</label>
                                        <input class="form-control" name="password" id="password-profile" type="password">
                                        <input type="checkbox" onclick="showPassProfile()"> Show Password
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div> <!-- END FORM-->
                    <!--Footer-->
                </div>
                <div class="modal-footer justify-content-between">
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <button type="submit" class="btn btn-danger" id="btn-profile">Save Changes</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- PROFILE MODAL -->

<!-- /.content-wrapper -->
<footer class="main-footer">
    <strong>Copyright &copy; 2014-2019 <a href="http://adminlte.io">AdminLTE.io</a>.</strong>
    All rights reserved.
    <div class="float-right d-none d-sm-inline-block">
        <b>Version</b> 3.0.2
    </div>
</footer>

<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
</aside>
<!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<!-- jQuery -->
<script src="assets/plugins/jquery/jquery.min.js"></script>
<!-- jQuery UI 1.11.4 -->
<script src="assets/plugins/jquery-ui/jquery-ui.min.js"></script>
<!-- Resolve conflict in jQuery UI tooltip with Bootstrap tooltip -->
<script>
    $.widget.bridge('uibutton', $.ui.button)
</script>
<!-- Bootstrap 4 -->
<script src="assets/plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- Toastr -->
<script src="assets/plugins/toastr/toastr.min.js"></script>
<!-- ChartJS -->
<script src="assets/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="assets/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
{{-- <script src="assets/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="assets/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
{{-- <script src="assets/plugins/jquery-knob/jquery.knob.min.js"></script> --}}
<!-- daterangepicker -->
<script src="assets/plugins/moment/moment.min.js"></script>
{{-- <script src="assets/plugins/daterangepicker/daterangepicker.js"></script> --}}
<!-- Tempusdominus Bootstrap 4 -->
<script src="assets/plugins/tempusdominus-bootstrap-4/js/tempusdominus-bootstrap-4.min.js"></script>
<!-- Summernote -->
<!--{{-- <script src="assets/plugins/summernote/summernote-bs4.min.js"></script> --}}-->
<!-- overlayScrollbars -->
<script src="assets/plugins/overlayScrollbars/js/jquery.overlayScrollbars.min.js"></script>
<!-- AdminLTE App -->
<script src="assets/dist/js/adminlte.js"></script>
<!-- Datepicker -->
<!--<script src="assets/jquery-datepicker/jquery-ui.js"></script>-->

<!-- ChartJS -->
<script src="assets/plugins/chart.js/Chart.min.js"></script>
<!-- Sparkline -->
<script src="assets/plugins/sparklines/sparkline.js"></script>
<!-- JQVMap -->
<script src="assets/plugins/jqvmap/jquery.vmap.min.js"></script>
<script src="assets/plugins/jqvmap/maps/jquery.vmap.usa.js"></script>
<!-- jQuery Knob Chart -->
<script src="assets/plugins/jquery-knob/jquery.knob.min.js"></script>

<script>

    $(function () {
        /* ChartJS
         * -------
         * Here we will create a few charts using ChartJS
         */

        //-------------
        //- BAR CHART -
        //-------------
        var barChartCanvas = $('#canvas').get(0).getContext('2d')
        var barChartData = {

            labels  : ['Phone', 'Laptop','CPU','Monitor'],
            datasets: [
                {

                    label               : ' Total Used',
                    backgroundColor     : 'rgba(60,141,188,0.9)',
                    borderColor         : 'rgba(60,141,188,0.8)',
                    pointRadius          : false,
                    pointColor          : '#3b8bba',
                    pointStrokeColor    : 'rgba(60,141,188,1)',
                    pointHighlightFill  : '#fff',
                    pointHighlightStroke: 'rgba(60,141,188,1)',
                    data                : [,,,]
                },
                {

                    label               : ' Total Spare',
                    backgroundColor     : 'rgba(210, 214, 222, 1)',
                    borderColor         : 'rgba(210, 214, 222, 1)',
                    pointRadius         : false,
                    pointColor          : 'rgba(210, 214, 222, 1)',
                    pointStrokeColor    : '#c1c7d1',
                    pointHighlightFill  : '#fff',
                    pointHighlightStroke: 'rgba(220,220,220,1)',
                    data                : [,,,]
                },]
        }

        var temp0 = barChartData.datasets[0]
        var temp1 = barChartData.datasets[1]
        barChartData.datasets[0] = temp0

        var barChartOptions = {
            responsive              : true,
            maintainAspectRatio     : false,
            datasetFill             : false
        }

        var barChart = new Chart(barChartCanvas, {
            type: 'bar',
            data: barChartData,
            options: barChartOptions
        })

    })

    $(document).ready(function(){

        $('table').on('draw.dt', function() {
            $('[data-toggle="tooltip"]').tooltip();
        });

        $('[data-toggle="tooltip"]').tooltip({'delay': { show: 0, hide: 0 }
        });

        $('.datepicker').datepicker({
            dateFormat: 'mm/dd/yy'
        });
    });


    $(document).ready(function(){

//EDIT PROFILE AJAX FUNCTION
        $("#btn-profile").click(function (event) {
            event.preventDefault();
            var form = $('#form-profile')[0];
            var data = new FormData(form);
            $.ajax({
                url:"{{ url('user/profile') }}",
                beforeSend:function(){
                    $('#btn-profile').text('Saving...');
                },
                type: "POST",
                enctype: 'multipart/form-data',
                headers: {'X-CSRF-TOKEN': $('meta[name="csrf-token"]').attr('content')},
                data: data,
                dataType:"json",
                contentType: false,
                cache:false,
                processData: false,
                success:function(data)
                {
                    if (data.errors) {
                        for( var count = 0; count < data.errors.length; count++)
                        {
                            toastr.error(data.errors[count])
                        }
                        $('#btn-profile').text('Save');
                    }else{
                        setTimeout(function(){
                            $('#modal-profile').modal('hide');
                            $('#form-profile')[0].reset();
                            $('#btn-profile').text('Save');
                            location.reload();
                            Swal.fire({
                                icon: 'success',
                                title: 'Success',
                                text: 'Profile Updated Successfully!',
                                timer: 1500,
                            })

                        }, 200);
                    }
                }//END SUCCESS
            })

        });
//END FUNCTION

    });//END DOCUMENT READY FUNCTION


    //DISPLAY IMAGE ONCHANGE FUNCTION
    $(function() {

        $(document).on("change",".profile_uploadFile", function()
        {
            var uploadFile = $(this);
            var files = !!this.files ? this.files : [];
            if (!files.length || !window.FileReader) return; // no file selected, or no FileReader support
            if (/^image/.test( files[0].type)){ // only image file
                var reader = new FileReader(); // instance of the FileReader
                reader.readAsDataURL(files[0]); // read the local file
                reader.onloadend = function(){ // set image data as background of div
//alert(uploadFile.closest(".upimage").find('.imagePreview').length);
                    uploadFile.closest(".profile_imgUp").find('.profile_imagePreview').css("background-image", "url("+this.result+")");
                }
            }
        });

    });
    function showPassProfile() {
        var x = document.getElementById("password-profile");
        if (x.type === "password") {
            x.type = "text";
        } else {
            x.type = "password";
        }
    }
    //END FUNCTION
</script>
</body>
</html>
