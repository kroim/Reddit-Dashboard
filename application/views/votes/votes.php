<?php
/**
 * Created by PhpStorm.
 * User: DEV-14
 * Date: 8/21/2018
 * Time: 11:56 PM
 */
?>
<style>
    .target_option {
        margin: 1% 0 3% 5%;
        cursor: pointer;
    }

    .votes-body {
        width: 100%;
    }
</style>

<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Votes
        </h1>
        <ol class="breadcrumb">
            <button type="button" class="btn btn-success" onclick="$('#add_vote_modal').modal()">Add Votes</button>
            <button type="button" class="btn btn-default" onclick="location.reload()">ReLoad</button>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="vote_table" class="table table-bordered table-hover">
                            <thead>
                            <tr>
                                <th>ID</th>
                                <th width="65%">TARGET</th>
                                <th>OPTION</th>
                                <th>STATE</th>
                                <th>Counts</th>
                                <th>ACTION</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            foreach ($votes as $vote) { ?>
                                <tr id="vote_<?php echo $vote->id ?>">
                                    <td class="vote-id"><?php echo $vote->id ?></td>
                                    <td class="vote-target" style="word-break: break-all"><?php echo $vote->target ?></td>
                                    <td class="vote-option"><?php echo $vote->option ?></td>
                                    <td class="vote-state"><?php echo $vote->state ?></td>
                                    <td class="vote-count"><?php echo $vote->num_votes ?></td>
                                    <td class="action">
                                        <button class="btn btn-danger btn-sm"
                                                onclick="removeVote(<?php echo $vote->id ?>)"
                                            <?php if ($vote->state == "inprogress") echo "disabled"; ?>>
                                            <i class="fa fa-remove"></i>
                                        </button>
                                    </td>
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
<!-- Add Vote Modal -->
<div id="add_vote_modal" class="modal fade" role="dialog">
    <div class="modal-dialog modal-lg">
        <!-- Modal content-->
        <div class="modal-content">
            <form>
                <div class="modal-header">
                    <button type="button" class="close" data-dismiss="modal">&times;</button>
                    <h4 class="modal-title">Add Votes</h4>
                </div>

                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-3">TARGET</div>
                        <div class="col-md-9" id="votes-modal-body">
                            <div class="votes-body" id="vote1">
                                <input type="radio" class="target_option" name="option1" id="option1_1" checked>
                                <span>Option1</span>
                                <input type="radio" class="target_option" name="option1" id="option2_1">
                                <span>Option2</span>
                                <input class="form-control" id="add_vote_target1"
                                       placeholder="sub|url|number of votes|delay|upvote(u) or downvote(d)" required>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-success" style="float: left" onclick="addMoreField()">Add More Field</button>
                    <button type="button" class="btn btn-default" style="float: left" onclick="removeLastField()">Remove Last Field</button>
                    <input type="submit" id="vote_submit_btn" style="display: none;">
                    <button type="button" class="btn btn-danger" onclick="submit_vote()">
                        Submit
                    </button>
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>
    </div>
</div>
<!-- Delete Vote Modal -->
<div id="delete_vote_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Delete Vote</h4>
            </div>

            <div class="modal-body">
                <input id="delete_vote_id" type="hidden">
                <h1 style="text-align: center; color: orangered">Are you sure?</h1>
            </div>
            <div class="modal-footer">
                <input type="submit" id="vote_remove_btn" style="display: none;">
                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="delete_vote()">Submit
                </button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
            </div>
        </div>
    </div>
</div>
<script>
    $(function () {
        $("#vote_table").DataTable({});
    });

    function addMoreField() {
        var item = $(".votes-body").length;
        if (item > 19) {
            return;
        }
        var items = item + 1;
        $("#vote" + item).append('<div class="votes-body" id="vote' + items + '">\n' +
            '<input type="radio" class="target_option" name="option' + items + '" id="option1_' + items + '" checked>\n' +
            '<span>Option1</span>\n' +
            '<input type="radio" class="target_option" name="option' + items + '" id="option2_' + items + '">\n' +
            '<span>Option2</span>\n' +
            '<input class="form-control" id="add_vote_target' + items + '" required></div>');
    }

    function removeLastField() {
        var item = $(".votes-body").length;
        if (item < 2) {
            return;
        }
        $("#vote" + item).remove();
    }

    function submit_vote() {
        var targets = [];
        var options = [];
        var items = $(".votes-body").length;
        for (var i = 1; i <= items; i++) {
            var target = $("#add_vote_target" + i).val();
            if (target === "") {
                $("#vote_submit_btn").click();
                return;
            } else {
                targets.push(target);
                if ($("#option1_" + i).prop("checked")) {
                    options.push("option1");
                } else {
                    options.push("option2");
                }
            }
        }
        data = {
            targets: targets,
            options: options
        };
        $.ajax({
            url: "<?php echo site_url('main/add_votes')?>",
            data: data,
            method: "post",
            success: function (res) {
                console.log(res);
                if (res === "success") {
                    location.reload();
                } else {
                    console.log("comment error");
                }
            }
        })
    }

    function removeVote(id) {
        $("#delete_vote_id").val(id);
        $("#delete_vote_modal").modal();
    }

    function delete_vote() {
        var id = $("#delete_vote_id").val();
        var data = {
            id: id
        };
        $.ajax({
            url: "<?php echo site_url('main/delete_vote')?>",
            data: data,
            method: "post",
            success: function (res) {
                if (res === "success") {
                    location.reload();
                } else {
                    console.log("Delete comment failed");
                }
            }
        });
    }
</script>

