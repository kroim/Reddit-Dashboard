<?php
/**
 * Created by PhpStorm.
 * User: DEV-14
 * Date: 8/21/2018
 * Time: 3:51 AM
 */
?>
<style>
    #add_comment_modal .modal-body .row {
        padding: 1% 0;
    }
    #url_option1{
        margin: 1% 0% 3% 1%;
        cursor: pointer;
    }
    #url_option2{
        margin: 1% 0% 3% 5%;
        cursor: pointer;
    }
    #url_option1_span, #url_option2_span{
        cursor: pointer;
    }
</style>
<div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
        <h1>
            Comments
        </h1>
        <ol class="breadcrumb">
            <button type="button" class="btn btn-success" onclick="$('#add_comment_modal').modal()">Add Comment</button>
            <button type="button" class="btn btn-default" onclick="location.reload()">ReLoad</button>
        </ol>
    </section>

    <!-- Main content -->
    <section class="content">
        <div class="row">
            <div class="col-xs-12">
                <div class="box">
                    <div class="box-body">
                        <table id="comments_table" class="table table-bordered table-striped">
                            <thead>
                            <tr>
                                <th>U_ID</th>
                                <th>SubReddit</th>
                                <th>Option</th>
                                <th width="30%">URL</th>
                                <th width="40%">Comments</th>
                                <th>Delay</th>
                                <th>State</th>
                                <th>Action</th>
                            </tr>
                            </thead>
                            <tbody>
                            <?php
                            foreach ($comments as $comment) { ?>
                                <tr id="comment_<?php echo $comment->id ?>">
                                    <td class="user-id"><?php echo $comment->user_id ?></td>
                                    <td class="sub-reddit"><?php echo $comment->sub_reddit ?></td>
                                    <td class="url-option"><?php echo $comment->url_option ?></td>
                                    <td class="url"
                                        style="word-break: break-all"><?php echo $comment->comment_url ?></td>
                                    <td class="comment"
                                        style="word-break: break-all"><?php echo $comment->comment ?></td>
                                    <td class="delay"><?php echo $comment->delay ?></td>
                                    <td class="state"><?php echo $comment->state ?></td>
                                    <td class="action">
                                        <button class="btn btn-danger btn-sm"
                                                onclick="removeComment(<?php echo $comment->id ?>)"
                                            <?php if ($comment->state == "inprogress") echo "disabled"; ?>>
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
<!-- Add Comment Modal -->
<div id="add_comment_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Add Comment</h4>
            </div>
            <form>
                <div class="modal-body">
                    <div class="row">
                        <div class="col-md-3">Select User</div>
                        <div class="col-md-9">
                            <select class="form-control" id="add_comment_user">
                                <?php foreach ($accounts as $account) { ?>
                                    <option value="<?php echo $account->id ?>"><?php echo $account->name ?></option>
                                <?php } ?>
                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">SubReddit</div>
                        <div class="col-md-9"><input type="text" class="form-control" id="add_comment_subreddit"
                                                     required></div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">URL</div>
                        <div class="col-md-9">
                            <div style="width: 100%">
                                <input type="radio" name="url_option" id="url_option1" value="option1" checked>
                                <span id="url_option1_span" onclick="$('#url_option1').click()">Option1</span>
                                <input type="radio" name="url_option" id="url_option2" value="option2">
                                <span id="url_option2_span" onclick="$('#url_option2').click()">Option2</span>
                            </div>
                            <input type="text" class="form-control" id="add_comment_url" required>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">Comments</div>
                        <div class="col-md-9"><textarea class="form-control" id="add_comments_comment" rows="4"
                                                        required></textarea></div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">Delay Time(s)</div>
                        <div class="col-md-9"><input type="number" class="form-control" id="add_comments_delay"
                                                     required></div>
                    </div>
                    <div class="row"></div>
                </div>
                <div class="modal-footer">
                    <input type="submit" id="comment_submit_btn" style="display: none;">
                    <button type="button" class="btn btn-danger" onclick="submit_comment()">
                        Submit
                    </button>
                    <button type="button" class="btn btn-warning" data-dismiss="modal">Close</button>
                </div>
            </form>
        </div>

    </div>
</div>

<!-- Delete Comment Modal -->
<div id="delete_comment_modal" class="modal fade" role="dialog">
    <div class="modal-dialog">
        <!-- Modal content-->
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Delete Comment</h4>
            </div>

            <div class="modal-body">
                <input id="delete_comment_id" type="hidden">
                <h1 style="text-align: center; color: orangered">Are you sure?</h1>
            </div>
            <div class="modal-footer">
                <input type="submit" id="comment_submit_btn" style="display: none;">
                <button type="button" class="btn btn-danger" data-dismiss="modal" onclick="delete_comment()">Submit
                </button>
                <button type="button" class="btn btn-warning" data-dismiss="modal">Cancel</button>
            </div>
        </div>

    </div>
</div>

<script>
    $(function () {
        $("#comments_table").DataTable();
    });

    function submit_comment() {
        var user = $("#add_comment_user").val();
        var subReddit = $("#add_comment_subreddit").val();
        var comment_url = $("#add_comment_url").val();
        var comment = $("#add_comments_comment").val();
        var delay = $("#add_comments_delay").val();
        var url_option = "option1";
        if ($("#url_option2").prop("checked")){
            url_option = "option2";
        }
        if (subReddit === "" || comment_url === "" || comment === "" || delay === "") {
            $("#comment_submit_btn").click();
        } else {
            $("#add_comment_modal").modal('toggle');
            var data = {
                user: user,
                sub_reddit: subReddit,
                url_option: url_option,
                comment_url: comment_url,
                comment: comment,
                delay: delay
            };
            $.ajax({
                url: "<?php echo site_url('main/add_comment')?>",
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
            });
        }
    }

    function removeComment(id) {
        console.log(id);
        $("#delete_comment_id").val(id);
        $("#delete_comment_modal").modal();
    }

    function delete_comment() {
        var id = $("#delete_comment_id").val();
        console.log(id);
        var data = {
            id: id
        };
        $.ajax({
            url: "<?php echo site_url('main/delete_comment')?>",
            data: data,
            method: "post",
            success: function (res) {
                if (res === "success"){
                    location.reload();
                } else {
                    console.log("Delete comment failed");
                }
            }
        });
    }
</script>

