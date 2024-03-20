<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
    <head>
        <meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1" />
        <title>Ready Bootstrap Dashboard</title>
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
                                                    <span class="time">12 minutes ago</span> 
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notif-img"> 
                                                    <img src="assets/img/profile2.jpg" alt="Img Profile">
                                                </div>
                                                <div class="notif-content">
                                                    <span class="block">
                                                        Reza send messages to you
                                                    </span>
                                                    <span class="time">12 minutes ago</span> 
                                                </div>
                                            </a>
                                            <a href="#">
                                                <div class="notif-icon notif-danger"> <i class="la la-heart"></i> </div>
                                                <div class="notif-content">
                                                    <span class="block">
                                                        Farrah liked Admin
                                                    </span>
                                                    <span class="time">17 minutes ago</span> 
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
                                <a class="dropdown-toggle profile-pic" data-toggle="dropdown" href="#" aria-expanded="false"> <img src="assets/img/profile.jpg" alt="user-img" width="36" class="img-circle"><span >Hizrian</span></span> </a>
                                <ul class="dropdown-menu dropdown-user">
                                    <li>
                                        <div class="user-box">
                                            <div class="u-img"><img src="assets/img/profile.jpg" alt="user"></div>
                                            <div class="u-text">
                                                <h4>User</h4>
                                                <p class="text-muted">hello@themekita.com</p><a href="profile.jsp" class="btn btn-rounded btn-danger btn-sm">View Profile</a></div>
                                            </div>
                                        </li>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="ti-user"></i> My Profile</a>
                                        <a class="dropdown-item" href="#"></i> My Balance</a>
                                        <a class="dropdown-item" href="#"><i class="ti-email"></i> Inbox</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="ti-settings"></i> Account Setting</a>
                                        <div class="dropdown-divider"></div>
                                        <a class="dropdown-item" href="#"><i class="fa fa-power-off"></i> Logout</a>
                                    </ul>
                                    <!-- /.dropdown-user -->
                                </li>
                            </ul>
                        </div>
                    </nav>
                </div>
                <div class="sidebar">
                    <div class="scrollbar-inner sidebar-wrapper">
                        <div class="user">
                            <div class="photo">
                                <img src="assets/img/profile.jpg">
                            </div>
                            <div class="info">
                                <a class="" data-toggle="collapse" href="#collapseExample" aria-expanded="true">
                                    <span>
                                        Hizrian
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
                                            <a href="#edit">
                                                <span class="link-collapse">Edit Profile</span>
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
                                <a href="forms.jsp">
                                    <i class="la la-keyboard-o"></i>
                                    <p>Forms</p>
                                    <span class="badge badge-count">50</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="tables.jsp">
                                    <i class="la la-th"></i>
                                    <p>Tables</p>
                                    <span class="badge badge-count">6</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="notifications.jsp">
                                    <i class="la la-bell"></i>
                                    <p>Notifications</p>
                                    <span class="badge badge-success">3</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="typography.jsp">
                                    <i class="la la-font"></i>
                                    <p>Typography</p>
                                    <span class="badge badge-danger">25</span>
                                </a>
                            </li>
                            <li class="nav-item">
                                <a href="icons.jsp">
                                    <i class="la la-fonticons"></i>
                                    <p>Icons</p>
                                </a>
                            </li>
                            <li class="nav-item update-pro">
                                <button  data-toggle="modal" data-target="#modalUpdate">
                                    <i class="la la-hand-pointer-o"></i>
                                    <p>Update To Pro</p>
                                </button>
                            </li>
                        </ul>
                    </div>
                </div>
                <div class="main-panel">
                    <div class="content">
                        <div class="container-fluid">
                            <h4 class="page-title">Dashboard</h4>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="card card-stats card-warning">
                                        <div class="card-body ">
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-users"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Visitors</p>
                                                        <h4 class="card-title">1,294</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card card-stats card-success">
                                        <div class="card-body ">
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-bar-chart"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Sales</p>
                                                        <h4 class="card-title">$ 1,345</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card card-stats card-danger">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-newspaper-o"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Subscribers</p>
                                                        <h4 class="card-title">1303</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card card-stats card-primary">
                                        <div class="card-body ">
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-check-circle"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Order</p>
                                                        <h4 class="card-title">576</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
    <!-- 							<div class="col-md-3">
                                    <div class="card card-stats">
                                        <div class="card-body ">
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center icon-warning">
                                                        <i class="la la-pie-chart text-warning"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Number</p>
                                                        <h4 class="card-title">150GB</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card card-stats">
                                        <div class="card-body ">
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-bar-chart text-success"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Revenue</p>
                                                        <h4 class="card-title">$ 1,345</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card card-stats">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-times-circle-o text-danger"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Errors</p>
                                                        <h4 class="card-title">23</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card card-stats">
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-heart-o text-primary"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Followers</p>
                                                        <h4 class="card-title">+45K</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div> -->
                            </div>
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Task</h4>
                                            <p class="card-category">Complete</p>
                                        </div>
                                        <div class="card-body">
                                            <div id="task-complete" class="chart-circle mt-4 mb-3"></div>
                                        </div>
                                        <div class="card-footer">
                                            <div class="legend"><i class="la la-circle text-primary"></i> Completed</div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-9">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">World Map</h4>
                                            <p class="card-category">
                                            Map of the distribution of users around the world</p>
                                        </div>
                                        <div class="card-body">
                                            <div class="mapcontainer">
                                                <div class="map">
                                                    <span>Alternative content for the map</span>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row row-card-no-pd">
                                <div class="col-md-4">
                                    <div class="card">
                                        <div class="card-body">
                                            <p class="fw-bold mt-1">My Balance</p>
                                            <h4><b>$ 3,018</b></h4>
                                            <a href="#" class="btn btn-primary btn-full text-left mt-3 mb-3"><i class="la la-plus"></i> Add Balance</a>
                                        </div>
                                        <div class="card-footer">
                                            <ul class="nav">
                                                <li class="nav-item"><a class="btn btn-default btn-link" href="#"><i class="la la-history"></i> History</a></li>
                                                <li class="nav-item ml-auto"><a class="btn btn-default btn-link" href="#"><i class="la la-refresh"></i> Refresh</a></li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-5">
                                    <div class="card">
                                        <div class="card-body">
                                            <div class="progress-card">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <span class="text-muted">Profit</span>
                                                    <span class="text-muted fw-bold"> $3K</span>
                                                </div>
                                                <div class="progress mb-2" style="height: 7px;">
                                                    <div class="progress-bar bg-success" role="progressbar" style="width: 78%" aria-valuenow="78" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="78%"></div>
                                                </div>
                                            </div>
                                            <div class="progress-card">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <span class="text-muted">Orders</span>
                                                    <span class="text-muted fw-bold"> 576</span>
                                                </div>
                                                <div class="progress mb-2" style="height: 7px;">
                                                    <div class="progress-bar bg-info" role="progressbar" style="width: 65%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="65%"></div>
                                                </div>
                                            </div>
                                            <div class="progress-card">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <span class="text-muted">Tasks Complete</span>
                                                    <span class="text-muted fw-bold"> 70%</span>
                                                </div>
                                                <div class="progress mb-2" style="height: 7px;">
                                                    <div class="progress-bar bg-primary" role="progressbar" style="width: 70%" aria-valuenow="70" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="70%"></div>
                                                </div>
                                            </div>
                                            <div class="progress-card">
                                                <div class="d-flex justify-content-between mb-1">
                                                    <span class="text-muted">Open Rate</span>
                                                    <span class="text-muted fw-bold"> 60%</span>
                                                </div>
                                                <div class="progress mb-2" style="height: 7px;">
                                                    <div class="progress-bar bg-warning" role="progressbar" style="width: 60%" aria-valuenow="60" aria-valuemin="0" aria-valuemax="100" data-toggle="tooltip" data-placement="top" title="60%"></div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="card card-stats">
                                        <div class="card-body">
                                            <p class="fw-bold mt-1">Statistic</p>
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center icon-warning">
                                                        <i class="la la-pie-chart text-warning"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Number</p>
                                                        <h4 class="card-title">150GB</h4>
                                                    </div>
                                                </div>
                                            </div>
                                            <hr/>
                                            <div class="row">
                                                <div class="col-5">
                                                    <div class="icon-big text-center">
                                                        <i class="la la-heart-o text-primary"></i>
                                                    </div>
                                                </div>
                                                <div class="col-7 d-flex align-items-center">
                                                    <div class="numbers">
                                                        <p class="card-category">Followers</p>
                                                        <h4 class="card-title">+45K</h4>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-md-4">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Users Statistics</h4>
                                            <p class="card-category">
                                            Users statistics this month</p>
                                        </div>
                                        <div class="card-body">
                                            <div id="monthlyChart" class="chart chart-pie"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-8">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">2018 Sales</h4>
                                            <p class="card-category">
                                            Number of products sold</p>
                                        </div>
                                        <div class="card-body">
                                            <div id="salesChart" class="chart"></div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card">
                                        <div class="card-header ">
                                            <h4 class="card-title">Table</h4>
                                            <p class="card-category">Users Table</p>
                                        </div>
                                        <div class="card-body">
                                            <table class="table table-head-bg-success table-striped table-hover">
                                                <thead>
                                                    <tr>
                                                        <th scope="col">#</th>
                                                        <th scope="col">First</th>
                                                        <th scope="col">Last</th>
                                                        <th scope="col">Handle</th>
                                                    </tr>
                                                </thead>
                                                <tbody>
                                                    <tr>
                                                        <td>1</td>
                                                        <td>Mark</td>
                                                        <td>Otto</td>
                                                        <td>@mdo</td>
                                                    </tr>
                                                    <tr>
                                                        <td>2</td>
                                                        <td>Jacob</td>
                                                        <td>Thornton</td>
                                                        <td>@fat</td>
                                                    </tr>
                                                    <tr>
                                                        <td>3</td>
                                                        <td colspan="2">Larry the Bird</td>
                                                        <td>@twitter</td>
                                                    </tr>
                                                </tbody>
                                            </table>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="card card-tasks">
                                        <div class="card-header ">
                                            <h4 class="card-title">Tasks</h4>
                                            <p class="card-category">To Do List</p>
                                        </div>
                                        <div class="card-body ">
                                            <div class="table-full-width">
                                                <table class="table">
                                                    <thead>
                                                        <tr>
                                                            <th>
                                                                <div class="form-check">
                                                                    <label class="form-check-label">
                                                                        <input class="form-check-input  select-all-checkbox" type="checkbox" data-select="checkbox" data-target=".task-select">
                                                                        <span class="form-check-sign"></span>
                                                                    </label>
                                                                </div>
                                                            </th>
                                                            <th>Task</th>
                                                            <th>Action</th>
                                                        </tr>
                                                    </thead>
                                                    <tbody>
                                                        <tr>
                                                            <td>
                                                                <div class="form-check">
                                                                    <label class="form-check-label">
                                                                        <input class="form-check-input task-select" type="checkbox">
                                                                        <span class="form-check-sign"></span>
                                                                    </label>
                                                                </div>
                                                            </td>
                                                            <td>Planning new project structure</td>
                                                            <td class="td-actions text-right">
                                                                <div class="form-button-action">
                                                                    <button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link <btn-simple-primary">
                                                                        <i class="la la-edit"></i>
                                                                    </button>
                                                                    <button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger">
                                                                        <i class="la la-times"></i>
                                                                    </button>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="form-check">
                                                                    <label class="form-check-label">
                                                                        <input class="form-check-input task-select" type="checkbox">
                                                                        <span class="form-check-sign"></span>
                                                                    </label>
                                                                </div>
                                                            </td>
                                                            <td>Update Fonts</td>
                                                            <td class="td-actions text-right">
                                                                <div class="form-button-action">
                                                                    <button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link <btn-simple-primary">
                                                                        <i class="la la-edit"></i>
                                                                    </button>
                                                                    <button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger">
                                                                        <i class="la la-times"></i>
                                                                    </button>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="form-check">
                                                                    <label class="form-check-label">
                                                                        <input class="form-check-input task-select" type="checkbox">
                                                                        <span class="form-check-sign"></span>
                                                                    </label>
                                                                </div>
                                                            </td>
                                                            <td>Add new Post
                                                            </td>
                                                            <td class="td-actions text-right">
                                                                <div class="form-button-action">
                                                                    <button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link <btn-simple-primary">
                                                                        <i class="la la-edit"></i>
                                                                    </button>
                                                                    <button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger">
                                                                        <i class="la la-times"></i>
                                                                    </button>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                        <tr>
                                                            <td>
                                                                <div class="form-check">
                                                                    <label class="form-check-label">
                                                                        <input class="form-check-input task-select" type="checkbox">
                                                                        <span class="form-check-sign"></span>
                                                                    </label>
                                                                </div>
                                                            </td>
                                                            <td>Finalise the design proposal</td>
                                                            <td class="td-actions text-right">
                                                                <div class="form-button-action">
                                                                    <button type="button" data-toggle="tooltip" title="Edit Task" class="btn btn-link <btn-simple-primary">
                                                                        <i class="la la-edit"></i>
                                                                    </button>
                                                                    <button type="button" data-toggle="tooltip" title="Remove" class="btn btn-link btn-simple-danger">
                                                                        <i class="la la-times"></i>
                                                                    </button>
                                                                </div>
                                                            </td>
                                                        </tr>
                                                    </tbody>
                                                </table>
                                            </div>
                                        </div>
                                        <div class="card-footer ">
                                            <div class="stats">
                                                <i class="now-ui-icons loader_refresh spin"></i> Updated 3 minutes ago
                                            </div>
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
    <script src="assets/js/demo.js"></script>
    </html>

    
    <!-- booking.jsp -->

<!-- <div class="main-panel">
                    <div class="content">
                        <div class="container-fluid">
                            <h4 class="page-title">Component</h4>
                            <div class="row">
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Button Original</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <button class="btn btn-default">Default</button>
    
                                                <button class="btn btn-primary">Primary</button>
    
                                                <button class="btn btn-info">Info</button>
    
                                                <button class="btn btn-success">Success</button>
    
                                                <button class="btn btn-warning">Warning</button>
    
                                                <button class="btn btn-danger">Danger</button>
    
                                                <button class="btn btn-link">Link</button>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Disabled Button</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <button class="btn btn-default" disabled="disabled">Default</button>
    
                                                <button class="btn btn-primary" disabled="disabled">Primary</button>
    
                                                <button class="btn btn-info" disabled="disabled">Info</button>
    
                                                <button class="btn btn-success" disabled="disabled">Success</button>
    
                                                <button class="btn btn-warning" disabled="disabled">Warning</button>
    
                                                <button class="btn btn-danger" disabled="disabled">Danger</button>
    
                                                <button class="btn btn-link" disabled>Link</button>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Button Size</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <button class="btn btn-primary btn-lg">Large</button>
    
                                                <button class="btn btn-primary">Normal</button>
    
                                                <button class="btn btn-primary btn-sm">Small</button>
    
                                                <button class="btn btn-primary btn-xs">Extra Small</button>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Button Type</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <button class="btn btn-primary">Normal</button>
                                                <button class="btn btn-primary btn-border">Border</button>
    
                                                <button class="btn btn-primary btn-round">Round</button>
    
                                                <button class="btn btn-primary btn-border btn-round">Round</button>
    
                                                <button class="btn btn-primary btn-link">Link</button>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Checkbox</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" value="">
                                                    <span class="form-check-sign">Unchecked</span>
                                                </label>
    
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" value="" checked>
                                                    <span class="form-check-sign">Checked</span>
                                                </label>
    
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" value="" disabled>
                                                    <span class="form-check-sign">Disabled</span>
                                                </label>
    
                                                <label class="form-check-label">
                                                    <input class="form-check-input" type="checkbox" value="" checked disabled>
                                                    <span class="form-check-sign">Checked Disabled</span>
                                                </label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Radio</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <label class="form-radio-label">
                                                    <input class="form-radio-input" type="radio" name="optionsRadios" value="">
                                                    <span class="form-radio-sign">Unchecked</span>
                                                </label>
                                                <label class="form-radio-label">
                                                    <input class="form-radio-input" type="radio" name="optionsRadios" value="" checked>
                                                    <span class="form-radio-sign">Checked</span>
                                                </label>
                                                <label class="form-radio-label">
                                                    <input class="form-radio-input" type="radio" value="" disabled>
                                                    <span class="form-radio-sign">Disabled</span>
                                                </label>
                                                <label class="form-radio-label">
                                                    <input class="form-radio-input" type="radio" value="" checked disabled>
                                                    <span class="form-radio-sign">Checked Disabled</span>
                                                </label>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Bootstrap Switch</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="default">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="primary">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="success">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="info">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="warning">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="danger">
                                            </p>
                                            <p class="demo">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="default" data-style="btn-round">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="primary" data-style="btn-round">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="success" data-style="btn-round">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="info" data-style="btn-round">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="warning" data-style="btn-round">
                                                <input type="checkbox" checked data-toggle="toggle" data-onstyle="danger" data-style="btn-round">
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Bootstrap Dropdown</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <div class="dropdown">
    
                                                    <button class="btn btn-primary dropdown-toggle" type="button" id="dropdownMenu1" data-toggle="dropdown">
    
                                                        Dropdown
    
                                                    </button>
    
                                                    <ul class="dropdown-menu" role="menu" aria-labelledby="dropdownMenu">
    
                                                        <a class="dropdown-item" href="#">Action</a>
                                                        <a class="dropdown-item" href="#">Another action</a>
                                                        <div class="dropdown-divider"></div>
                                                        <a class="dropdown-item" href="#">Something else here</a>
    
                                                    </ul>
    
                                                </div>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Progress Bar</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <div class="row">
                                                <div class="col-md-6">
                                                    <p class="demo">
                                                        <div class="progress">
                                                            <div class="progress-bar bg-success" role="progressbar" style="width: 25%" aria-valuenow="25" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </p>
                                                    <p class="demo">
                                                        <div class="progress">
                                                            <div class="progress-bar bg-info" role="progressbar" style="width: 50%" aria-valuenow="50" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </p>
                                                    <p class="demo">
                                                        <div class="progress">
                                                            <div class="progress-bar bg-warning" role="progressbar" style="width: 75%" aria-valuenow="75" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </p>
                                                    <p class="demo">
                                                        <div class="progress">
                                                            <div class="progress-bar bg-danger" role="progressbar" style="width: 100%" aria-valuenow="100" aria-valuemin="0" aria-valuemax="100"></div>
                                                        </div>
                                                    </p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Bootstrap Input</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div class="form-group">
    
                                                            <input type="text" value="" placeholder="Input" class="form-control" />
    
                                                        </div>
                                                    </div>
    
                                                    <div class="col-md-6">
                                                        <div class="form-group has-success">
    
                                                            <input type="text" value="Success" class="form-control" />
    
                                                        </div>
                                                    </div>
    
                                                    <div class="col-md-6">
                                                        <div class="form-group has-error has-feedback">
    
                                                            <input type="text" value="Error" class="form-control" />
    
                                                            <span class="la la-times form-control-feedback"></span>
    
                                                        </div>
                                                    </div>
    
                                                    <div class="col-md-6">
                                                        <div class="form-group">
                                                            <div class="input-group has-icon">
    
                                                                <input type="text" value="Group Addon" class="form-control">
    
                                                                <div class="input-group-append">
                                                                    <span class="input-group-text input-group-icon"><i class="la la-keyboard-o"></i></span>
                                                                </div>
                                                            </div>
                                                        </div>
                                                    </div>
                                                </div>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Nav Pills</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <ul class="nav nav-pills nav-primary">
                                                <li class="nav-item">
                                                    <a class="nav-link active" href="#">Active</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="#">Link</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link" href="#">Link</a>
                                                </li>
                                                <li class="nav-item">
                                                    <a class="nav-link disabled" href="#">Disabled</a>
                                                </li>
                                            </ul>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Pagination</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <p class="demo">
                                                <ul class="pagination pg-primary">
                                                    <li class="page-item">
                                                        <a class="page-link" href="#" aria-label="Previous">
                                                            <span aria-hidden="true">&laquo;</span>
                                                            <span class="sr-only">Previous</span>
                                                        </a>
                                                    </li>
                                                    <li class="page-item active"><a class="page-link" href="#">1</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">2</a></li>
                                                    <li class="page-item"><a class="page-link" href="#">3</a></li>
                                                    <li class="page-item">
                                                        <a class="page-link" href="#" aria-label="Next">
                                                            <span aria-hidden="true">&raquo;</span>
                                                            <span class="sr-only">Next</span>
                                                        </a>
                                                    </li>
                                                </ul>
                                            </p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Slider</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <div class="demo">
                                                <div class="row">
                                                    <div class="col-md-6">
                                                        <div id="slider" class="slider-primary"></div>
    
                                                        <div id="slider-range" class="slider-success"></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-12">
                                    <div class="card">
                                        <div class="card-header">
                                            <h4 class="card-title">Badge</h4>
                                            <p class="card-category">Here is a subtitle for this table</p>
                                        </div>
                                        <div class="card-body">
                                            <span class="badge badge-count">Count</span>
                                            <span class="badge badge-default">Default</span>
                                            <span class="badge badge-primary">Primary</span>
                                            <span class="badge badge-info">Info</span>
                                            <span class="badge badge-success">Success</span>
                                            <span class="badge badge-warning">Warning</span>
                                            <span class="badge badge-danger">Danger</span>
                                        </div>
                                    </div> -->