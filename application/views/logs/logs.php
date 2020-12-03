<?php
/**
 * Created by PhpStorm.
 * User: DEV-14
 * Date: 8/21/2018
 * Time: 11:45 PM
 */
?>
<?php
/**
 * Created by PhpStorm.
 * User: DEV-14
 * Date: 8/21/2018
 * Time: 1:08 AM
 */
?>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Logs
        </h1>
        <ol class="breadcrumb">
            <button type="button" class="btn btn-primary" onclick="location.reload()">Reload Logs</button>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="log_table" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>Time</th>
                                <th width="85%">Message</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            foreach ($logs as $log){ ?>
                                <tr id="log_<?php echo $log->id ?>">
                                    <td class="log-time"><?php echo $log->timestamp ?></td>
                                    <td class="log-message" style="word-break: break-all"><?php echo $log->message ?></td>
                                </tr>
                            <?php } ?>
                            </tbody>
                        </table>
                    </div>
                    <!-- /.box-body -->
                </div>
                <!-- /.box -->
            </div>
            <!-- /.col -->
        </div>
        <!-- /.row -->
    </section>
    <!-- /.content -->
</div>
<script>
    $(function () {
        $("#log_table").DataTable({
            "aLengthMenu": [[25,50, 100,500,-1], [25,50,100,500,"All"]]
        });
    });
</script>

