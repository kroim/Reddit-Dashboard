<?php
/**
 * Created by PhpStorm.
 * User: DEV-14
 * Date: 8/21/2018
 * Time: 1:55 AM
 */
?>
<aside class="main-sidebar">
    <!-- sidebar: style can be found in sidebar.less -->
    <section class="sidebar">
        <!-- sidebar menu: : style can be found in sidebar.less -->
        <ul class="sidebar-menu">
            <li class="header">MAIN NAVIGATION</li>
            <?php if ($title == "Accounts") { ?>
                <li class="active">
                    <a href="<?php echo site_url('main/accounts')?>">
                        <i class="fa fa-users"></i> <span>Accounts</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
            <?php } else { ?>
                <li>
                    <a href="<?php echo site_url('main/accounts')?>">
                        <i class="fa fa-users"></i> <span>Accounts</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
            <?php } ?>

            <?php if ($title == "Comments") { ?>
                <li class="active">
                    <a href="<?php echo site_url('main/comments')?>">
                        <i class="fa fa-envelope"></i> <span>Comments</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
            <?php } else { ?>
                <li>
                    <a href="<?php echo site_url('main/comments')?>">
                        <i class="fa fa-envelope"></i> <span>Comments</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
            <?php } ?>

            <?php if ($title == "Votes") { ?>
                <li class="active">
                    <a href="<?php echo site_url('main/votes')?>">
                        <i class="fa fa-edit"></i> <span>Votes</span>
                        <span class="pull-right-container">
                    </a>
                </li>
            <?php } else { ?>
                <li>
                    <a href="<?php echo site_url('main/votes')?>">
                        <i class="fa fa-edit"></i> <span>Votes</span>
                        <span class="pull-right-container">
                    </a>
                </li>
            <?php } ?>

            <?php if ($title == "Logs") { ?>
                <li class="active">
                    <a href="<?php echo site_url('main/logs')?>">
                        <i class="fa fa-circle-o"></i> <span>Logs</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
            <?php } else { ?>
                <li>
                    <a href="<?php echo site_url('main/logs')?>">
                        <i class="fa fa-circle-o"></i> <span>Logs</span>
                        <span class="pull-right-container"></span>
                    </a>
                </li>
            <?php } ?>

        </ul>
    </section>
    <!-- /.sidebar -->
</aside>
