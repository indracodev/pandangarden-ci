
    <link href="<?= BASE_ASSET; ?>/fine-upload/fine-uploader-gallery.min.css" rel="stylesheet">
    <script src="<?= BASE_ASSET; ?>/fine-upload/jquery.fine-uploader.js"></script>
    <?php $this->load->view('core_template/fine_upload'); ?>
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
        Tb Gallery        <small><?= cclang('new', ['Tb Gallery']); ?> </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_gallery'); ?>">Tb Gallery</a></li>
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
                            <h3 class="widget-user-username">Tb Gallery</h3>
                            <h5 class="widget-user-desc"><?= cclang('new', ['Tb Gallery']); ?></h5>
                            <hr>
                        </div>
                        <?= form_open('', [
                        'name' => 'form_tb_gallery',
                        'class' => 'form-horizontal form-step',
                        'id' => 'form_tb_gallery',
                        'enctype' => 'multipart/form-data',
                        'method' => 'POST'
                        ]); ?>
                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                        <div class="form-group group-galleryId ">
            <label for="galleryId" class="col-sm-2 control-label">GalleryId                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="number" class="form-control" name="galleryId" id="galleryId" placeholder="GalleryId" value="<?= set_value('galleryId'); ?>">
                <small class="info help-block">
                    <b>Input GalleryId</b> Max Length : 5.</small>
            </div>
        </div>
    

    <div class="form-group group-galleryImg ">
            <label for="galleryImg" class="col-sm-2 control-label">GalleryImg                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <div id="tb_gallery_galleryImg_galery"></div>
                <input class="data_file" name="tb_gallery_galleryImg_uuid" id="tb_gallery_galleryImg_uuid" type="hidden" value="<?= set_value('tb_gallery_galleryImg_uuid'); ?>">
                <input class="data_file" name="tb_gallery_galleryImg_name" id="tb_gallery_galleryImg_name" type="hidden" value="<?= set_value('tb_gallery_galleryImg_name'); ?>">
                <small class="info help-block">
                    </small>
            </div>
        </div>
    

    <div class="form-group group-galleryUrl ">
            <label for="galleryUrl" class="col-sm-2 control-label">GalleryUrl                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <div id="tb_gallery_galleryUrl_galery"></div>
                <input class="data_file" name="tb_gallery_galleryUrl_uuid" id="tb_gallery_galleryUrl_uuid" type="hidden" value="<?= set_value('tb_gallery_galleryUrl_uuid'); ?>">
                <input class="data_file" name="tb_gallery_galleryUrl_name" id="tb_gallery_galleryUrl_name" type="hidden" value="<?= set_value('tb_gallery_galleryUrl_name'); ?>">
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

<script>
    $(document).ready(function() {

        "use strict";

        window.event_submit_and_action = '';

        


        

                    
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
                    window.location.href = BASE_URL + 'administrator/tb_gallery';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        
    var form_tb_gallery = $('#form_tb_gallery');
    var data_post = form_tb_gallery.serializeArray();
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
            url: BASE_URL + '/administrator/tb_gallery/add_save',
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('.steps li').removeClass('error');
            $('form').find('.error-input').remove();
            if (res.success) {
                var id_galleryImg = $('#tb_gallery_galleryImg_galery').find('li').attr('qq-file-id');
            var id_galleryUrl = $('#tb_gallery_galleryUrl_galery').find('li').attr('qq-file-id');
            
            if (save_type == 'back') {
                window.location.href = res.redirect;
                return;
            }

            $('.message').printMessage({
                message: res.message
            });
            $('.message').fadeIn();
            resetForm();
            if(typeof id_galleryImg !== 'undefined') {
                $('#tb_gallery_galleryImg_galery').fineUploader('deleteFile', id_galleryImg);
            }
            if(typeof id_galleryUrl !== 'undefined') {
                $('#tb_gallery_galleryUrl_galery').fineUploader('deleteFile', id_galleryUrl);
            }
            $('.chosen option').prop('selected', false).trigger('chosen:updated');
            
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

            var params = {};
        params[csrf] = token;

        $('#tb_gallery_galleryImg_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: BASE_URL + '/administrator/tb_gallery/upload_galleryImg_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: BASE_URL + '/administrator/tb_gallery/delete_galleryImg_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#tb_gallery_galleryImg_galery').fineUploader('getUuid', id);
                        $('#tb_gallery_galleryImg_uuid').val(uuid);
                        $('#tb_gallery_galleryImg_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#tb_gallery_galleryImg_uuid').val();
                    $.get(BASE_URL + '/administrator/tb_gallery/delete_galleryImg_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#tb_gallery_galleryImg_uuid').val('');
                        $('#tb_gallery_galleryImg_name').val('');
                    }
                }
            }
        }); /*end galleryImg galery*/
                var params = {};
        params[csrf] = token;

        $('#tb_gallery_galleryUrl_galery').fineUploader({
            template: 'qq-template-gallery',
            request: {
                endpoint: BASE_URL + '/administrator/tb_gallery/upload_galleryUrl_file',
                params: params
            },
            deleteFile: {
                enabled: true,
                endpoint: BASE_URL + '/administrator/tb_gallery/delete_galleryUrl_file',
            },
            thumbnails: {
                placeholders: {
                    waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                    notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                }
            },
            multiple: false,
            validation: {
                allowedExtensions: ["*"],
                sizeLimit: 0,
                            },
            showMessage: function(msg) {
                toastr['error'](msg);
            },
            callbacks: {
                onComplete: function(id, name, xhr) {
                    if (xhr.success) {
                        var uuid = $('#tb_gallery_galleryUrl_galery').fineUploader('getUuid', id);
                        $('#tb_gallery_galleryUrl_uuid').val(uuid);
                        $('#tb_gallery_galleryUrl_name').val(xhr.uploadName);
                    } else {
                        toastr['error'](xhr.error);
                    }
                },
                onSubmit: function(id, name) {
                    var uuid = $('#tb_gallery_galleryUrl_uuid').val();
                    $.get(BASE_URL + '/administrator/tb_gallery/delete_galleryUrl_file/' + uuid);
                },
                onDeleteComplete: function(id, xhr, isError) {
                    if (isError == false) {
                        $('#tb_gallery_galleryUrl_uuid').val('');
                        $('#tb_gallery_galleryUrl_name').val('');
                    }
                }
            }
        }); /*end galleryUrl galery*/
        

    

    


    }); /*end doc ready*/
</script>