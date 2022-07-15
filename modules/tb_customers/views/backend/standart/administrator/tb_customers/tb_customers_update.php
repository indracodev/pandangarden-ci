

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
        Tb Customers        <small>Edit Tb Customers</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_customers'); ?>">Tb Customers</a></li>
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
                            <h3 class="widget-user-username">Tb Customers</h3>
                            <h5 class="widget-user-desc">Edit Tb Customers</h5>
                            <hr>
                        </div>
                        <?= form_open(base_url('administrator/tb_customers/edit_save/'.$this->uri->segment(4)), [
                            'name' => 'form_tb_customers',
                            'class' => 'form-horizontal form-step',
                            'id' => 'form_tb_customers',
                            'method' => 'POST'
                        ]); ?>

                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                                                    
                        
                        <div class="form-group group-customerId  ">
                                <label for="customerId" class="col-sm-2 control-label">CustomerId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="customerId" id="customerId" placeholder="" value="<?= set_value('customerId', $tb_customers->customerId); ?>">
                                    <small class="info help-block">
                                        <b>Input CustomerId</b> Max Length : 5.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-customerName  ">
                                <label for="customerName" class="col-sm-2 control-label">CustomerName                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="customerName" id="customerName" placeholder="" value="<?= set_value('customerName', $tb_customers->customerName); ?>">
                                    <small class="info help-block">
                                        <b>Input CustomerName</b> Max Length : 60.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-customerUsername  ">
                                <label for="customerUsername" class="col-sm-2 control-label">CustomerUsername                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="customerUsername" id="customerUsername" placeholder="" value="<?= set_value('customerUsername', $tb_customers->customerUsername); ?>">
                                    <small class="info help-block">
                                        <b>Input CustomerUsername</b> Max Length : 60.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-customerEmail  ">
                                <label for="customerEmail" class="col-sm-2 control-label">CustomerEmail                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="customerEmail" id="customerEmail" placeholder="" value="<?= set_value('customerEmail', $tb_customers->customerEmail); ?>">
                                    <small class="info help-block">
                                        <b>Input CustomerEmail</b> Max Length : 60.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-customerAddress  ">
                                <label for="customerAddress" class="col-sm-2 control-label">CustomerAddress                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <textarea id="customerAddress" name="customerAddress" rows="10" cols="80"> <?= set_value('customerAddress', $tb_customers->customerAddress); ?></textarea>
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-customerPhone  ">
                                <label for="customerPhone" class="col-sm-2 control-label">CustomerPhone                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="customerPhone" id="customerPhone" placeholder="" value="<?= set_value('customerPhone', $tb_customers->customerPhone); ?>">
                                    <small class="info help-block">
                                        <b>Input CustomerPhone</b> Max Length : 15.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-customerPassword  ">
                                <label for="customerPassword" class="col-sm-2 control-label">CustomerPassword                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <textarea id="customerPassword" name="customerPassword" rows="10" cols="80"> <?= set_value('customerPassword', $tb_customers->customerPassword); ?></textarea>
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

    <script src="<?= BASE_ASSET; ?>ckeditor/ckeditor.js"></script>

<script>
    $(document).ready(function() {

        "use strict";
        
    window.event_submit_and_action = '';
            
    
      
      
      
        
        
    CKEDITOR.replace('customerAddress');
    var customerAddress = CKEDITOR.instances.customerAddress;
        CKEDITOR.replace('customerPassword');
    var customerPassword = CKEDITOR.instances.customerPassword;
        
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
                    window.location.href = BASE_URL + 'administrator/tb_customers';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        $('#customerAddress').val(customerAddress.getData());
        $('#customerPassword').val(customerPassword.getData());
        
    var form_tb_customers = $('#form_tb_customers');
    var data_post = form_tb_customers.serializeArray();
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
            url: form_tb_customers.attr('action'),
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('form').find('.error-input').remove();
            $('.steps li').removeClass('error');
            if (res.success) {
                var id = $('#tb_customers_image_galery').find('li').attr('qq-file-id');
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