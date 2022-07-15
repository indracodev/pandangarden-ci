

<script type="text/javascript">
    function domo() {

        $('*').bind('keydown', 'Ctrl+s', function() {
            $('#btn_save').trigger('click');
            return false;
        });

        $('*').bind('keydown', 'Ctrl+x', function() {
            $('#btn_cancel').trigger('click');
            return false;
        });

        $('*').bind('keydown', 'Ctrl+d', function() {
            $('.btn_save_back').trigger('click');
            return false;
        });

    }

    jQuery(document).ready(domo);
</script>
<section class="content-header">
    <h1>
        Tb Visitorlog        <small>Edit Tb Visitorlog</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_visitorlog'); ?>">Tb Visitorlog</a></li>
        <li class="active">Edit</li>
    </ol>
</section>

<style>

</style>
<section class="content">
    <div class="row">
        <div class="col-md-12">
            <div class="box box-warning">
                <div class="box-body ">
                    <div class="box box-widget widget-user-2">
                        <div class="widget-user-header ">
                            <div class="widget-user-image">
                                <img class="img-circle" src="<?= BASE_ASSET; ?>/img/add2.png" alt="User Avatar">
                            </div>
                            <h3 class="widget-user-username">Tb Visitorlog</h3>
                            <h5 class="widget-user-desc">Edit Tb Visitorlog</h5>
                            <hr>
                        </div>
                        <?= form_open(base_url('administrator/tb_visitorlog/edit_save/'.$this->uri->segment(4)), [
                            'name' => 'form_tb_visitorlog',
                            'class' => 'form-horizontal form-step',
                            'id' => 'form_tb_visitorlog',
                            'method' => 'POST'
                        ]); ?>

                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                                                    
                        
                        <div class="form-group group-tb_visitorlog_date  ">
                                <label for="tb_visitorlog_date" class="col-sm-2 control-label">Tb Visitorlog Date                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-6">
                                    <div class="input-group date col-sm-8">
                                        <input type="text" class="form-control pull-right datepicker" name="tb_visitorlog_date" placeholder="" id="tb_visitorlog_date" value="<?= set_value('tb_visitorlog_tb_visitorlog_date_name', $tb_visitorlog->tb_visitorlog_date); ?>">
                                    </div>
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>

                        
                        
                                                    
                        
                        <div class="form-group group-tb_visitorlog_ip  ">
                                <label for="tb_visitorlog_ip" class="col-sm-2 control-label">Tb Visitorlog Ip                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="tb_visitorlog_ip" id="tb_visitorlog_ip" placeholder="" value="<?= set_value('tb_visitorlog_ip', $tb_visitorlog->tb_visitorlog_ip); ?>">
                                    <small class="info help-block">
                                        <b>Input Tb Visitorlog Ip</b> Max Length : 20.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-tb_visitorlog_client  ">
                                <label for="tb_visitorlog_client" class="col-sm-2 control-label">Tb Visitorlog Client                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="tb_visitorlog_client" id="tb_visitorlog_client" placeholder="" value="<?= set_value('tb_visitorlog_client', $tb_visitorlog->tb_visitorlog_client); ?>">
                                    <small class="info help-block">
                                        <b>Input Tb Visitorlog Client</b> Max Length : 60.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-tb_visitorlog_times  ">
                                <label for="tb_visitorlog_times" class="col-sm-2 control-label">Tb Visitorlog Times                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control" name="tb_visitorlog_times" id="tb_visitorlog_times" placeholder="" value="<?= set_value('tb_visitorlog_times', $tb_visitorlog->tb_visitorlog_times); ?>">
                                    <small class="info help-block">
                                        <b>Input Tb Visitorlog Times</b> Max Length : 11.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-tb_visitorlog_lastvisit  ">
                                <label for="tb_visitorlog_lastvisit" class="col-sm-2 control-label">Tb Visitorlog Lastvisit                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-6">
                                    <div class="input-group date col-sm-8">
                                        <input type="text" class="form-control pull-right datetimepicker" name="tb_visitorlog_lastvisit" placeholder="" id="tb_visitorlog_lastvisit" value="<?= set_value('tb_visitorlog_lastvisit', $tb_visitorlog->tb_visitorlog_lastvisit); ?>">
                                    </div>
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>
                        
                        
                        
                                                    <div class="message"></div>
                                                <div class="row-fluid col-md-7 container-button-bottom">
                            <button class="btn btn-flat btn-primary btn_save btn_action" id="btn_save" data-stype='stay' title="<?= cclang('save_button'); ?> (Ctrl+s)">
                                <i class="fa fa-save"></i> <?= cclang('save_button'); ?>
                            </button>
                            <a class="btn btn-flat btn-info btn_save btn_action btn_save_back" id="btn_save" data-stype='back' title="<?= cclang('save_and_go_the_list_button'); ?> (Ctrl+d)">
                                <i class="ion ion-ios-list-outline"></i> <?= cclang('save_and_go_the_list_button'); ?>
                            </a>

                            <div class="custom-button-wrapper">

                                                        </div>
                            <a class="btn btn-flat btn-default btn_action" id="btn_cancel" title="<?= cclang('cancel_button'); ?> (Ctrl+x)">
                                <i class="fa fa-undo"></i> <?= cclang('cancel_button'); ?>
                            </a>
                            <span class="loading loading-hide">
                                <img src="<?= BASE_ASSET; ?>/img/loading-spin-primary.svg">
                                <i><?= cclang('loading_saving_data'); ?></i>
                            </span>
                        </div>
                                                <?= form_close(); ?>
                        </div>
                </div>
                <!--/box body -->
            </div>
            <!--/box -->
        </div>
    </div>
</section>


<script>
    $(document).ready(function() {

        "use strict";
        
    window.event_submit_and_action = '';
            
    
      
      
      
        
        
    
    $('#btn_cancel').click(function() {
        swal({
                title: "Are you sure?",
                text: "the data that you have created will be in the exhaust!",
                type: "warning",
                showCancelButton: true,
                confirmButtonColor: "#DD6B55",
                confirmButtonText: "Yes!",
                cancelButtonText: "No!",
                closeOnConfirm: true,
                closeOnCancel: true
            },
            function(isConfirm) {
                if (isConfirm) {
                    window.location.href = BASE_URL + 'administrator/tb_visitorlog';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        
    var form_tb_visitorlog = $('#form_tb_visitorlog');
    var data_post = form_tb_visitorlog.serializeArray();
    var save_type = $(this).attr('data-stype');
    data_post.push({
        name: 'save_type',
        value: save_type
    });

    
      
    data_post.push({
        name: 'event_submit_and_action',
        value: window.event_submit_and_action
    });

    $('.loading').show();

    $.ajax({
            url: form_tb_visitorlog.attr('action'),
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('form').find('.error-input').remove();
            $('.steps li').removeClass('error');
            if (res.success) {
                var id = $('#tb_visitorlog_image_galery').find('li').attr('qq-file-id');
                if (save_type == 'back') {
                    window.location.href = res.redirect;
                    return;
                }

                $('.message').printMessage({
                    message: res.message
                });
                $('.message').fadeIn();
                $('.data_file_uuid').val('');

            } else {
                if (res.errors) {
                    parseErrorField(res.errors);
                }
                $('.message').printMessage({
                    message: res.message,
                    type: 'warning'
                });
            }

        })
        .fail(function() {
            $('.message').printMessage({
                message: 'Error save data',
                type: 'warning'
            });
        })
        .always(function() {
            $('.loading').hide();
            $('html, body').animate({
                scrollTop: $(document).height()
            }, 2000);
        });

    return false;
    }); /*end btn save*/

    

    

    async function chain() {
            }

    chain();




    }); /*end doc ready*/
</script>