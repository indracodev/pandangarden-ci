

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
        Tb Menu        <small>Edit Tb Menu</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_menu'); ?>">Tb Menu</a></li>
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
                            <h3 class="widget-user-username">Tb Menu</h3>
                            <h5 class="widget-user-desc">Edit Tb Menu</h5>
                            <hr>
                        </div>
                        <?= form_open(base_url('administrator/tb_menu/edit_save/'.$this->uri->segment(4)), [
                            'name' => 'form_tb_menu',
                            'class' => 'form-horizontal form-step',
                            'id' => 'form_tb_menu',
                            'method' => 'POST'
                        ]); ?>

                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                                                    
                        
                        <div class="form-group group-menuId  ">
                                <label for="menuId" class="col-sm-2 control-label">MenuId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="menuId" id="menuId" placeholder="" value="<?= set_value('menuId', $tb_menu->menuId); ?>">
                                    <small class="info help-block">
                                        <b>Input MenuId</b> Max Length : 5.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-menuName  ">
                                <label for="menuName" class="col-sm-2 control-label">MenuName                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="menuName" id="menuName" placeholder="" value="<?= set_value('menuName', $tb_menu->menuName); ?>">
                                    <small class="info help-block">
                                        <b>Input MenuName</b> Max Length : 60.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-categoryId  ">
                                <label for="categoryId" class="col-sm-2 control-label">CategoryId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="categoryId" id="categoryId" placeholder="" value="<?= set_value('categoryId', $tb_menu->categoryId); ?>">
                                    <small class="info help-block">
                                        <b>Input CategoryId</b> Max Length : 20.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-goFood  ">
                                <label for="goFood" class="col-sm-2 control-label">GoFood                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <textarea id="goFood" name="goFood" rows="10" cols="80"> <?= set_value('goFood', $tb_menu->goFood); ?></textarea>
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-grabFood  ">
                                <label for="grabFood" class="col-sm-2 control-label">GrabFood                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <textarea id="grabFood" name="grabFood" rows="10" cols="80"> <?= set_value('grabFood', $tb_menu->grabFood); ?></textarea>
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-whatsapp  ">
                                <label for="whatsapp" class="col-sm-2 control-label">Whatsapp                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <textarea id="whatsapp" name="whatsapp" rows="10" cols="80"> <?= set_value('whatsapp', $tb_menu->whatsapp); ?></textarea>
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-menuDesc  ">
                                <label for="menuDesc" class="col-sm-2 control-label">MenuDesc                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <textarea id="menuDesc" name="menuDesc" rows="10" cols="80"> <?= set_value('menuDesc', $tb_menu->menuDesc); ?></textarea>
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-menuPrice  ">
                                <label for="menuPrice" class="col-sm-2 control-label">MenuPrice                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control" name="menuPrice" id="menuPrice" placeholder="" value="<?= set_value('menuPrice', $tb_menu->menuPrice); ?>">
                                    <small class="info help-block">
                                        <b>Input MenuPrice</b> Max Length : 6.</small>
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

    <script src="<?= BASE_ASSET; ?>ckeditor/ckeditor.js"></script>

<script>
    $(document).ready(function() {

        "use strict";
        
    window.event_submit_and_action = '';
            
    
      
      
      
        
        
    CKEDITOR.replace('goFood');
    var goFood = CKEDITOR.instances.goFood;
        CKEDITOR.replace('grabFood');
    var grabFood = CKEDITOR.instances.grabFood;
        CKEDITOR.replace('whatsapp');
    var whatsapp = CKEDITOR.instances.whatsapp;
        CKEDITOR.replace('menuDesc');
    var menuDesc = CKEDITOR.instances.menuDesc;
        
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
                    window.location.href = BASE_URL + 'administrator/tb_menu';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        $('#goFood').val(goFood.getData());
        $('#grabFood').val(grabFood.getData());
        $('#whatsapp').val(whatsapp.getData());
        $('#menuDesc').val(menuDesc.getData());
        
    var form_tb_menu = $('#form_tb_menu');
    var data_post = form_tb_menu.serializeArray();
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
            url: form_tb_menu.attr('action'),
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('form').find('.error-input').remove();
            $('.steps li').removeClass('error');
            if (res.success) {
                var id = $('#tb_menu_image_galery').find('li').attr('qq-file-id');
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