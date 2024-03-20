<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Dashboard</title>
        <meta content='width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=0, shrink-to-fit=no' name='viewport' />
        <link rel="stylesheet" href="assets/css/bootstrap.min.css">
        <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i">
        <link rel="stylesheet" href="assets/css/ready.css">
        <link rel="stylesheet" href="assets/css/demo.css">
    </head>
    <body>
        <div class="wrapper">
            <div class="main-header">
                <div class="logo-header">
                    <a href="index.jsp" class="logo">
                        Unistay
                    </a>
                    <button class="navbar-toggler sidenav-toggler ml-auto" type="button" data-toggle="collapse" data-target="collapse" aria-controls="sidebar" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <button class="topbar-toggler more"><i class="la la-ellipsis-v"></i></button>
                </div>
                <nav class="navbar navbar-header navbar-expand-lg">
                    <div class="container-fluid">
                        
                        <form class="navbar-left navbar-form nav-search mr-md-3" action="">
                            <div class="input-group">
                                <input type="text" placeholder="Search" class="form-control">
                                <div class="input-group-append">
                                    <span class="input-group-text">
                                        <i class="la la-search search-icon"></i>
                                    </span>
                                </div>
                            </div>
                        </form>
                        <ul class="navbar-nav topbar-nav ml-md-auto align-items-center">
                            <li class="nav-item dropdown hidden-caret">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="la la-envelope"></i>
                                </a>
                                <div class="dropdown-menu" aria-labelledby="navbarDropdown">
                                    <a class="dropdown-item" href="#">Mails</a>
                                    <a class="dropdown-item" href="#"></a>
                                    <div class="dropdown-divider"></div>
                                    <a class="dropdown-item" href="#"></a>
                                </div>
                            </li>
                            <li class="nav-item dropdown hidden-caret">
                                <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                                    <i class="la la-bell"></i>
                                    <span class="notification"></span>
                                </a>
                                <ul class="dropdown-menu notif-box" aria-labelledby="navbarDropdown">
                                    <li>
                                        <div class="dropdown-title">You have new notifications</div>
                                    </li>
                                    <li>
                                        <div class="notif-center">
                                            <a href="#">
                                                <div class="notif-icon notif-primary"> <i class="la la-user-plus"></i> </div>
                                                <div class="notif-content">
                                                    <span class="block">
                                                        3 new bookings
                                                    </span>
                                                    <span class="time">5 minutes ago</span> 
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notif-icon notif-success"> <i class="la la-comment"></i> </div>
                                                <div class="notif-content">
                                                    <span class="block">
                                                    </span>
                                                    <span class="time">12</span> 
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notif-img"> 
                                                    <img src="assets/img/profile2.jpg" alt="Img Profile">
                                                </div>
                                                <div class="notif-content">
                                                    <span class="block">
                                                        Message
                                                    </span>
                                                    <span class="time">12</span> 
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notif-icon notif-danger"> <i class="la la-heart"></i> </div>
                                                <div class="notif-content">
                                                    <span class="block">
                                                        Property rented
                                                    </span>
                                                    <span class="time">17</span> 
                                                </div>
                                            </a>
                                        </div>
                                    </li>
                                    <li>
                                        <a class="see-all" href="javascript:void(0);"> <strong>See all notifications</strong> <i class="la la-angle-right"></i> </a>
                                    </li>
                                </ul>
                            </li>
                            <li class="nav-item dropdown">
                                <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="assets/img/profile.jpg" alt="user-img" width="36" class="img-circle"><span >User</span></span> </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li>
                                        <div class="user-box">
                                            <div class="u-img"><img src="assets/img/profile.jpg" alt="user"></div>
                                            <div class="u-text">
                                                <h4>User</h4>
                                                <p class="text-muted">info@unistay.com</p><a href="profile.jsp" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                                            </div>
                                        </li>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="ti-user"></i> My Profile</a>
                                        <a class="dropdown-item" href="#"></i>Bookings</a>
                                        <a class="dropdown-item" href="#"><i class="ti-email"></i>Inbox</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="ti-settings"></i>Account Setting</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="fa fa-power-off"></i> Logout</a>
                                    </ul>
                                    <!-- /.dropdown-user -->
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <!-- sidebar -->
                <div class="sidebar">
                    <div class="scrollbar-inner sidebar-wrapper">
                        <div class="user">
                            <div class="photo">
                                <img src="assets/img/profile.jpg">
                            </div>
                            <div class="info">
                                <a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
                                    <span>
                                        User
                                        <span class="user-level">Administrator</span>
                                        <span class="caret"></span>
                                    </span>
                                </a>
                                <div class="clearfix"></div>
    
                                <div class="collapse in" id="collapseExample" aria-expanded="true" style="">
                                    <ul class="nav">
                                        <li>
                                            <a href="#profile">
                                                <span class="link-collapse">My Profile</span>
                                            </a>
                                        </li>
                                        <li>
                                            <a href="#settings">
                                                <span class="link-collapse">Settings</span>
                                            </a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                        <!-- sidebar -->
                        <ul class="nav">
                            <li class="nav-item active">
                                <a href="index.jsp">
                                    <i class="la la-dashboard"></i>
                                    <p>Dashboard</p>
                                    <span class="badge badge-count">5</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="bookings.jsp">
                                    <i class="la la-table"></i>
                                    <p>Bookings</p>
                                    <span class="badge badge-count">14</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="tables.jsp">
                                    <i class="la la-th"></i>
                                    <p>Tabular representation</p>
                                    <span class="badge badge-count">6</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="notifications.jsp">
                                    <i class="la la-bell"></i>
                                    <p>Notifications</p>
                                    <span class="badge badge-count">3</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="">
                                    <i class="pending_verification.jsp"></i>
                                    <p>Pending Verifications</p>
                                    <span class="badge badge-success">3</span>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="main-panel">
                    <div class="content">
                        <div class="container-fluid">
                            <h4 class="page-title">Pending Verifications</h4>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <div class="card-title">Card Title</div>
                                            <div class="card-category">Card Category</div>
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-typo">
                                                <tbody>
                                                    <tr>
                                                        <td>
                                                            <p>Header 1</p>
    
                                                        </td>
                                                        <td><span class="h1">h1. Bootstrap heading</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Header 2</p>
    
                                                        </td>
                                                        <td><span class="h2">h2. Bootstrap heading</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Header 3</p>
    
                                                        </td>
                                                        <td><span class="h3">h3. Bootstrap heading</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Header 4</p>
    
                                                        </td>
                                                        <td><span class="h4">h4. Bootstrap heading</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Header 5</p>
    
                                                        </td>
                                                        <td><span class="h5">h5. Bootstrap heading</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Header 5</p>
    
                                                        </td>
                                                        <td><span class="h6">h6. Bootstrap heading</span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Paragraph</p>
    
                                                        </td>
                                                        <td><p>Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Paragraph Lead</p>
    
                                                        </td>
                                                        <td><p class="lead">Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book.</p></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Quote</p>
    
                                                        </td>
                                                        <td><blockquote>
                                                            <p class="blockquote blockquote-primary">
                                                                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book."
                                                                <br>
                                                                <br>
                                                                <small>
                                                                    - Noaa
                                                                </small>
                                                            </p>
                                                        </blockquote></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Primary Text</p>
    
                                                        </td>
                                                        <td><p class="text-primary">Lorem Ipsum is simply dummy text of the printing and typesetting industry...</p></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Info Text</p>
    
                                                        </td>
                                                        <td><p class="text-info">Lorem Ipsum is simply dummy text of the printing and typesetting industry...</p></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Success Text</p>
    
                                                        </td>
                                                        <td><p class="text-success">Lorem Ipsum is simply dummy text of the printing and typesetting industry...</p></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Warning Text</p>
    
                                                        </td>
                                                        <td><p class="text-warning">Lorem Ipsum is simply dummy text of the printing and typesetting industry...</p></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Danger Text</p>
    
                                                        </td>
                                                        <td><p class="text-danger">Lorem Ipsum is simply dummy text of the printing and typesetting industry...</p></span></td>
                                                    </tr>
                                                    <tr>
                                                        <td>
                                                            <p>Muted Text</p>
    
                                                        </td>
                                                        <td><p class="text-muted">Lorem Ipsum is simply dummy text of the printing and typesetting industry...</p></span></td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                        <div class="card-footer">
                                            <hr>
                                            Card Footer
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <footer class="footer">
                        <div class="container-fluid">
                            <nav class="pull-left">
                                <ul class="nav">
                                    <li class="nav-item">
                                        <a class="nav-link" href="http://www.themekita.com">
                                            ThemeKita
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="#">
                                            Help
                                        </a>
                                    </li>
                                    <li class="nav-item">
                                        <a class="nav-link" href="https://themewagon.com/license/#free-item">
                                            Licenses
                                        </a>
                                    </li>
                                </ul>
                            </nav>
                            <div class="copyright ml-auto">
                                2018, made with <i class="la la-heart heart text-danger"></i> by <a href="http://www.themekita.com">ThemeKita</a>
                            </div>				
                        </div>
                    </footer>
                </div>
            </div>
        </div>
        <!-- Modal -->
        <div class="modal fade" id="modalUpdate" tabindex="-1" role="dialog" aria-labelledby="modalUpdatePro" aria-hidden="true">
            <div class="modal-dialog modal-dialog-centered" role="document">
                <div class="modal-content">
                    <div class="modal-header bg-primary">
                        <h6 class="modal-title"><i class="la la-frown-o"></i> Under Development</h6>
                        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                            <span aria-hidden="true">&times;</span>
                        </button>
                    </div>
                    <div class="modal-body text-center">									
                        <p>Currently the pro version of the <b>Ready Dashboard</b> Bootstrap is in progress development</p>
                        <p>
                        <b>We'll let you know when it's done</b></p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
    </body>
    <script src="assets/js/core/jquery.3.2.1.min.js"></script>
    <script src="assets/js/plugin/jquery-ui-1.12.1.custom/jquery-ui.min.js"></script>
    <script src="assets/js/core/popper.min.js"></script>
    <script src="assets/js/core/bootstrap.min.js"></script>
    <script src="assets/js/plugin/chartist/chartist.min.js"></script>
    <script src="assets/js/plugin/chartist/plugin/chartist-plugin-tooltip.min.js"></script>
    <script src="assets/js/plugin/bootstrap-notify/bootstrap-notify.min.js"></script>
    <script src="assets/js/plugin/bootstrap-toggle/bootstrap-toggle.min.js"></script>
    <script src="assets/js/plugin/jquery-mapael/jquery.mapael.min.js"></script>
    <script src="assets/js/plugin/jquery-mapael/maps/world_countries.min.js"></script>
    <script src="assets/js/plugin/chart-circle/circles.min.js"></script>
    <script src="assets/js/plugin/jquery-scrollbar/jquery.scrollbar.min.js"></script>
    <script src="assets/js/ready.min.js"></script>
    </html>