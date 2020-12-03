<!DOCTYPE html>
<html>
<head>
    <title><?php
        echo $title;
        ?></title>
    <link href="<?php echo base_url('assets/bootstrap/dist/css/bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/DataTables/css/dataTables.bootstrap.min.css')?>" rel="stylesheet">
    <link href="<?php echo base_url('assets/css/custom.css')?>" rel="stylesheet">
    <link rel="icon" href="<?php echo base_url(); ?>assets/images/icon.png">
    <style>

        /* Style the tab */
        div.tab {
            overflow: hidden;
            background-color: #5cb85c;
            text-align: center;
        }

        /* Style the buttons inside the tab */
        div.tab button {
            background-color: inherit;
            color: black;
            border: none;
            outline: none;
            cursor: pointer;
            padding: 14px 16px;
            transition: 0.3s;
            font-size: 20px;
            font-family: "Times New Roman";
            font-weight: bold;
        }

    </style>
</head>
<body style="overflow-x: hidden">
<div style="background-color: #fbffe7; height: 100px; overflow: hidden;">
    <div class="row">
        <div class="col-md-2"></div>
        <div class="col-md-9" style="height: 100px; position: relative;">
            <div class="tab" style="position: absolute; bottom: 0; left: 0; right: 10%; margin: auto;">
                <?php
                if ($user['permission'] == 'admin'){
                    ?>
                    <a><button class="tablinks" style="color: black">User Management</button></a>
                    <?php
                } else {?>
                    <a><button class="tablinks">You can use this disk program</button></a>
                <?php } ?>
            </div>
        </div>
        <div class="col-md-1">
            <ul class="nav nav-pills">
                <li><a href="<?php echo site_url('user/logout') ?>">Logout</a></li>
            </ul>
        </div>
    </div>
</div>

<div class="modal fade" id="select-table-modal" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header" style="background-color: #d5d6d5">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h3 class="modal-title" style="font-family: 'Times New Roman'">Select Report Format</h3>
            </div>
            <form>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-6">
                            <h4>Request / Mission</h4>
                            <select class="form-control" id="select-re-mi">
                                <option value="re">Request</option>
                                <option value="mi">Mission</option>
                            </select>
                        </div>
                        <div class="col-md-6">
                            <h4>English / Arabic</h4>
                            <select class="form-control" id="select-lang">
                                <option value="en">English</option>
                                <option value="ar">Arabic</option>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-4">
                            <h4>Title Size</h4>
                            <input type="number" id="report-title-fontsize" value="14">
                        </div>
                        <div class="col-md-4">
                            <h4>Table header Size</h4>
                            <input type="number" id="report-table-header-fontsize" value="14">
                        </div>
                        <div class="col-md-4">
                            <h4>Table body Size</h4>
                            <input type="number" id="report-table-body-fontsize" value="14">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-2"></div>
                        <div class="col-md-8">
                            <h4 style="text-align: center;">Report Title</h4>
                            <input class="form-control" id="report-title" placeholder="Report Title" required>
                        </div>
                        <div class="col-md-2"></div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-info" onclick="select_report_format()"> Get Report </button>
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>

    </div>
</div>