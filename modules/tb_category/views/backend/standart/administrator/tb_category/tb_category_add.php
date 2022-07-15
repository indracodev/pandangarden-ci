
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
<style>
    </style>
<section class="content-header">
    <h1>
        Tb Category        <small><?= cclang('new', ['Tb Category']); ?> </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_category'); ?>">Tb Category</a></li>
        <li class="active"><?= cclang('new'); ?></li>
    </ol>
</section>
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
                            <h3 class="widget-user-username">Tb Category</h3>
                            <h5 class="widget-user-desc"><?= cclang('new', ['Tb Category']); ?></h5>
                            <hr>
                        </div>
                        <?= form_open('', [
                        'name' => 'form_tb_category',
                        'class' => 'form-horizontal form-step',
                        'id' => 'form_tb_category',
                        'enctype' => 'multipart/form-data',
                        'method' => 'POST'
                        ]); ?>
                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                        <div class="form-group group-categoryId ">
        <div class="form-group group-categoryId ">
            <label for="categoryId" class="col-sm-2 control-label">CategoryId                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="categoryId" id="categoryId" placeholder="CategoryId" value="<?= set_value('categoryId'); ?>">
                <small class="info help-block">
                    <b>Input CategoryId</b> Max Length : 2.</small>
            </div>
        </div>
    

    <div class="form-group group-categoryName ">
        <div class="form-group group-categoryName ">
            <label for="categoryName" class="col-sm-2 control-label">CategoryName                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="categoryName" id="categoryName" placeholder="CategoryName" value="<?= set_value('categoryName'); ?>">
                <small class="info help-block">
                    <b>Input CategoryName</b> Max Length : 30.</small>
            </div>
        </div>
    

    <div class="form-group group-menuId ">
            <label for="menuId" class="col-sm-2 control-label">MenuId                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <textarea id="menuId" name="menuId" rows="5" cols="80"><?= set_value('MenuId'); ?></textarea>
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
</div>
</div>
</div>
</section>
    <script src="<?= BASE_ASSET; ?>ckeditor/ckeditor.js"></script>

<script>
    $(document).ready(function() {

        "use strict";

        window.event_submit_and_action = '';

        


        

                    CKEDITOR.replace('menuId');
    var menuId = CKEDITOR.instances.menuId;
        
    $('#btn_cancel').click(function() {
        swal({
                title: "<?= cclang('are_you_sure'); ?>",
                text: "<?= cclang('data_to_be_deleted_can_not_be_restored'); ?>",
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
                    window.location.href = BASE_URL + 'administrator/tb_category';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        $('#menuId').val(menuId.getData());
        
    var form_tb_category = $('#form_tb_category');
    var data_post = form_tb_category.serializeArray();
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
            url: BASE_URL + '/administrator/tb_category/add_save',
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('.steps li').removeClass('error');
            $('form').find('.error-input').remove();
            if (res.success) {
                
            if (save_type == 'back') {
                window.location.href = res.redirect;
                return;
            }

            $('.message').printMessage({
                message: res.message
            });
            $('.message').fadeIn();
            resetForm();
            $('.chosen option').prop('selected', false).trigger('chosen:updated');
            menuId.setData('');
            
            
            } else {
                if (res.errors) {

                    $.each(res.errors, function(index, val) {
                        $('form #' + index).parents('.form-group').addClass('has-error');
                        $('form #' + index).parents('.form-group').find('small').prepend(`
                      <div class="error-input">` + val + `</div>
                      `);
                    });
                    $('.steps li').removeClass('error');
                    $('.content section').each(function(index, el) {
                        if ($(this).find('.has-error').length) {
                            $('.steps li:eq(' + index + ')').addClass('error').find('a').trigger('click');
                        }
                    });
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

    

    

    


    }); /*end doc ready*/
</script>