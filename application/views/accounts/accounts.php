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
            Accounts
        </h1>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="account_table" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th>NAME</th>
                                <th>PASSWORD</th>
                                <th>IP</th>
                                <th>PORT</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            foreach ($accounts as $account){ ?>
                                <tr id="account_<?php echo $account->id ?>">
                                    <td class="account-id"><?php echo $account->id ?></td>
                                    <td class="account-name"><?php echo $account->name ?></td>
                                    <td class="account-password"><?php echo $account->password ?></td>
                                    <td class="account-ip"><?php echo $account->ip ?></td>
                                    <td class="account-port"><?php echo $account->port ?></td>
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
        $("#account_table").DataTable({
        });
    });
</script>
