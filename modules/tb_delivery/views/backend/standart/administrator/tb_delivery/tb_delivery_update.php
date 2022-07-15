

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
        Tb Delivery        <small>Edit Tb Delivery</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_delivery'); ?>">Tb Delivery</a></li>
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
                            <h3 class="widget-user-username">Tb Delivery</h3>
                            <h5 class="widget-user-desc">Edit Tb Delivery</h5>
                            <hr>
                        </div>
                        <?= form_open(base_url('administrator/tb_delivery/edit_save/'.$this->uri->segment(4)), [
                            'name' => 'form_tb_delivery',
                            'class' => 'form-horizontal form-step',
                            'id' => 'form_tb_delivery',
                            'method' => 'POST'
                        ]); ?>

                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                                                    
                        
                        <div class="form-group group-deliveryId  ">
                                <label for="deliveryId" class="col-sm-2 control-label">DeliveryId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryId" id="deliveryId" placeholder="" value="<?= set_value('deliveryId', $tb_delivery->deliveryId); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryId</b> Max Length : 5.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryName  ">
                                <label for="deliveryName" class="col-sm-2 control-label">DeliveryName                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryName" id="deliveryName" placeholder="" value="<?= set_value('deliveryName', $tb_delivery->deliveryName); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryName</b> Max Length : 60.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryPhone  ">
                                <label for="deliveryPhone" class="col-sm-2 control-label">DeliveryPhone                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryPhone" id="deliveryPhone" placeholder="" value="<?= set_value('deliveryPhone', $tb_delivery->deliveryPhone); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryPhone</b> Max Length : 15.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryDate  ">
                                <label for="deliveryDate" class="col-sm-2 control-label">DeliveryDate                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-6">
                                    <div class="input-group date col-sm-8">
                                        <input type="text" class="form-control pull-right datepicker" name="deliveryDate" placeholder="" id="deliveryDate" value="<?= set_value('tb_delivery_deliveryDate_name', $tb_delivery->deliveryDate); ?>">
                                    </div>
                                    <small class="info help-block">
                                        </small>
                                </div>
                            </div>

                        
                        
                                                    
                        
                        <div class="form-group group-deliveryTime  ">
                                <label for="deliveryTime" class="col-sm-2 control-label">DeliveryTime                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryTime" id="deliveryTime" placeholder="" value="<?= set_value('deliveryTime', $tb_delivery->deliveryTime); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryTime</b> Max Length : 15.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryAddress  ">
                                <label for="deliveryAddress" class="col-sm-2 control-label">DeliveryAddress                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryAddress" id="deliveryAddress" placeholder="" value="<?= set_value('deliveryAddress', $tb_delivery->deliveryAddress); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryAddress</b> Max Length : 256.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryCoord  ">
                                <label for="deliveryCoord" class="col-sm-2 control-label">DeliveryCoord                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryCoord" id="deliveryCoord" placeholder="" value="<?= set_value('deliveryCoord', $tb_delivery->deliveryCoord); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryCoord</b> Max Length : 256.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryEmail  ">
                                <label for="deliveryEmail" class="col-sm-2 control-label">DeliveryEmail                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryEmail" id="deliveryEmail" placeholder="" value="<?= set_value('deliveryEmail', $tb_delivery->deliveryEmail); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryEmail</b> Max Length : 60.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryNote  ">
                                <label for="deliveryNote" class="col-sm-2 control-label">DeliveryNote                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryNote" id="deliveryNote" placeholder="" value="<?= set_value('deliveryNote', $tb_delivery->deliveryNote); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryNote</b> Max Length : 256.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryFee  ">
                                <label for="deliveryFee" class="col-sm-2 control-label">DeliveryFee                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control" name="deliveryFee" id="deliveryFee" placeholder="" value="<?= set_value('deliveryFee', $tb_delivery->deliveryFee); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryFee</b> Max Length : 6.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-orderId  ">
                                <label for="orderId" class="col-sm-2 control-label">OrderId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="orderId" id="orderId" placeholder="" value="<?= set_value('orderId', $tb_delivery->orderId); ?>">
                                    <small class="info help-block">
                                        <b>Input OrderId</b> Max Length : 5.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-orderFee  ">
                                <label for="orderFee" class="col-sm-2 control-label">OrderFee                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control" name="orderFee" id="orderFee" placeholder="" value="<?= set_value('orderFee', $tb_delivery->orderFee); ?>">
                                    <small class="info help-block">
                                        <b>Input OrderFee</b> Max Length : 8.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-deliveryPayment  ">
                                <label for="deliveryPayment" class="col-sm-2 control-label">DeliveryPayment                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="deliveryPayment" id="deliveryPayment" placeholder="" value="<?= set_value('deliveryPayment', $tb_delivery->deliveryPayment); ?>">
                                    <small class="info help-block">
                                        <b>Input DeliveryPayment</b> Max Length : 10.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-paymentStatus  ">
                                <label for="paymentStatus" class="col-sm-2 control-label">PaymentStatus                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="paymentStatus" id="paymentStatus" placeholder="" value="<?= set_value('paymentStatus', $tb_delivery->paymentStatus); ?>">
                                    <small class="info help-block">
                                        <b>Input PaymentStatus</b> Max Length : 1.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-paymentDate  ">
                                <label for="paymentDate" class="col-sm-2 control-label">PaymentDate                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-6">
                                    <div class="input-group date col-sm-8">
                                        <input type="text" class="form-control pull-right datetimepicker" name="paymentDate" placeholder="" id="paymentDate" value="<?= set_value('paymentDate', $tb_delivery->paymentDate); ?>">
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
                    window.location.href = BASE_URL + 'administrator/tb_delivery';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        
    var form_tb_delivery = $('#form_tb_delivery');
    var data_post = form_tb_delivery.serializeArray();
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
            url: form_tb_delivery.attr('action'),
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('form').find('.error-input').remove();
            $('.steps li').removeClass('error');
            if (res.success) {
                var id = $('#tb_delivery_image_galery').find('li').attr('qq-file-id');
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