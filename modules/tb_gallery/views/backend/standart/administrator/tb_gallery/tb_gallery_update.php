

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
<section class="content-header">
    <h1>
        Tb Gallery        <small>Edit Tb Gallery</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_gallery'); ?>">Tb Gallery</a></li>
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
                            <h3 class="widget-user-username">Tb Gallery</h3>
                            <h5 class="widget-user-desc">Edit Tb Gallery</h5>
                            <hr>
                        </div>
                        <?= form_open(base_url('administrator/tb_gallery/edit_save/'.$this->uri->segment(4)), [
                            'name' => 'form_tb_gallery',
                            'class' => 'form-horizontal form-step',
                            'id' => 'form_tb_gallery',
                            'method' => 'POST'
                        ]); ?>

                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                                                    
                        
                        <div class="form-group group-galleryId  ">
                                <label for="galleryId" class="col-sm-2 control-label">GalleryId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control" name="galleryId" id="galleryId" placeholder="" value="<?= set_value('galleryId', $tb_gallery->galleryId); ?>">
                                    <small class="info help-block">
                                        <b>Input GalleryId</b> Max Length : 5.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-galleryImg  ">
                                <label for="galleryImg" class="col-sm-2 control-label">GalleryImg                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <div id="tb_gallery_galleryImg_galery"></div>
                                    <input class="data_file data_file_uuid" name="tb_gallery_galleryImg_uuid" id="tb_gallery_galleryImg_uuid" type="hidden" value="<?= set_value('tb_gallery_galleryImg_uuid'); ?>">
                                    <input class="data_file" name="tb_gallery_galleryImg_name" id="tb_gallery_galleryImg_name" type="hidden" value="<?= set_value('tb_gallery_galleryImg_name', $tb_gallery->galleryImg); ?>">
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-galleryUrl  ">
                                <label for="galleryUrl" class="col-sm-2 control-label">GalleryUrl                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <div id="tb_gallery_galleryUrl_galery"></div>
                                    <input class="data_file data_file_uuid" name="tb_gallery_galleryUrl_uuid" id="tb_gallery_galleryUrl_uuid" type="hidden" value="<?= set_value('tb_gallery_galleryUrl_uuid'); ?>">
                                    <input class="data_file" name="tb_gallery_galleryUrl_name" id="tb_gallery_galleryUrl_name" type="hidden" value="<?= set_value('tb_gallery_galleryUrl_name', $tb_gallery->galleryUrl); ?>">
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
            url: form_tb_gallery.attr('action'),
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('form').find('.error-input').remove();
            $('.steps li').removeClass('error');
            if (res.success) {
                var id = $('#tb_gallery_image_galery').find('li').attr('qq-file-id');
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

                        var params = {};
            params[csrf] = token;

            $('#tb_gallery_galleryImg_galery').fineUploader({
                template: 'qq-template-gallery',
                request: {
                    endpoint: BASE_URL + '/administrator/tb_gallery/upload_galleryImg_file',
                    params: params
                },
                deleteFile: {
                    enabled: true, // defaults to false
                    endpoint: BASE_URL + '/administrator/tb_gallery/delete_galleryImg_file'
                },
                thumbnails: {
                    placeholders: {
                        waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                        notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                    }
                },
                session: {
                    endpoint: BASE_URL + 'administrator/tb_gallery/get_galleryImg_file/<?= $tb_gallery->id; ?>',
                    refreshOnRequest: true
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
            }); /*end galleryImg galey*/
                                var params = {};
            params[csrf] = token;

            $('#tb_gallery_galleryUrl_galery').fineUploader({
                template: 'qq-template-gallery',
                request: {
                    endpoint: BASE_URL + '/administrator/tb_gallery/upload_galleryUrl_file',
                    params: params
                },
                deleteFile: {
                    enabled: true, // defaults to false
                    endpoint: BASE_URL + '/administrator/tb_gallery/delete_galleryUrl_file'
                },
                thumbnails: {
                    placeholders: {
                        waitingPath: BASE_URL + '/asset/fine-upload/placeholders/waiting-generic.png',
                        notAvailablePath: BASE_URL + '/asset/fine-upload/placeholders/not_available-generic.png'
                    }
                },
                session: {
                    endpoint: BASE_URL + 'administrator/tb_gallery/get_galleryUrl_file/<?= $tb_gallery->id; ?>',
                    refreshOnRequest: true
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
            }); /*end galleryUrl galey*/
            

    

    async function chain() {
            }

    chain();




    }); /*end doc ready*/
</script>