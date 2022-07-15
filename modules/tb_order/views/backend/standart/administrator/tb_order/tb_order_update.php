

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
        Tb Order        <small>Edit Tb Order</small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_order'); ?>">Tb Order</a></li>
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
                            <h3 class="widget-user-username">Tb Order</h3>
                            <h5 class="widget-user-desc">Edit Tb Order</h5>
                            <hr>
                        </div>
                        <?= form_open(base_url('administrator/tb_order/edit_save/'.$this->uri->segment(4)), [
                            'name' => 'form_tb_order',
                            'class' => 'form-horizontal form-step',
                            'id' => 'form_tb_order',
                            'method' => 'POST'
                        ]); ?>

                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                                                    
                        
                        <div class="form-group group-orderId  ">
                                <label for="orderId" class="col-sm-2 control-label">OrderId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="orderId" id="orderId" placeholder="" value="<?= set_value('orderId', $tb_order->orderId); ?>">
                                    <small class="info help-block">
                                        <b>Input OrderId</b> Max Length : 5.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-orderType  ">
                                <label for="orderType" class="col-sm-2 control-label">OrderType                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="orderType" id="orderType" placeholder="" value="<?= set_value('orderType', $tb_order->orderType); ?>">
                                    <small class="info help-block">
                                        <b>Input OrderType</b> Max Length : 10.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-customerId  ">
                                <label for="customerId" class="col-sm-2 control-label">CustomerId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="customerId" id="customerId" placeholder="" value="<?= set_value('customerId', $tb_order->customerId); ?>">
                                    <small class="info help-block">
                                        <b>Input CustomerId</b> Max Length : 5.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-menuId  ">
                                <label for="menuId" class="col-sm-2 control-label">MenuId                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="menuId" id="menuId" placeholder="" value="<?= set_value('menuId', $tb_order->menuId); ?>">
                                    <small class="info help-block">
                                        <b>Input MenuId</b> Max Length : 5.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-menuQty  ">
                                <label for="menuQty" class="col-sm-2 control-label">MenuQty                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control" name="menuQty" id="menuQty" placeholder="" value="<?= set_value('menuQty', $tb_order->menuQty); ?>">
                                    <small class="info help-block">
                                        <b>Input MenuQty</b> Max Length : 2.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-menuPrice  ">
                                <label for="menuPrice" class="col-sm-2 control-label">MenuPrice                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control" name="menuPrice" id="menuPrice" placeholder="" value="<?= set_value('menuPrice', $tb_order->menuPrice); ?>">
                                    <small class="info help-block">
                                        <b>Input MenuPrice</b> Max Length : 7.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-orderSubtotal  ">
                                <label for="orderSubtotal" class="col-sm-2 control-label">OrderSubtotal                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="number" class="form-control" name="orderSubtotal" id="orderSubtotal" placeholder="" value="<?= set_value('orderSubtotal', $tb_order->orderSubtotal); ?>">
                                    <small class="info help-block">
                                        <b>Input OrderSubtotal</b> Max Length : 11.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-orderNote  ">
                                <label for="orderNote" class="col-sm-2 control-label">OrderNote                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="orderNote" id="orderNote" placeholder="" value="<?= set_value('orderNote', $tb_order->orderNote); ?>">
                                    <small class="info help-block">
                                        <b>Input OrderNote</b> Max Length : 256.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-orderStatus  ">
                                <label for="orderStatus" class="col-sm-2 control-label">OrderStatus                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-8">
                                    <input type="text" class="form-control" name="orderStatus" id="orderStatus" placeholder="" value="<?= set_value('orderStatus', $tb_order->orderStatus); ?>">
                                    <small class="info help-block">
                                        <b>Input OrderStatus</b> Max Length : 1.</small>
                                </div>
                            </div>
                        
                        
                                                    
                        
                        <div class="form-group group-orderExpired  ">
                                <label for="orderExpired" class="col-sm-2 control-label">OrderExpired                                    <i class="required">*</i>
                                    </label>
                                <div class="col-sm-6">
                                    <div class="input-group date col-sm-8">
                                        <input type="text" class="form-control pull-right datepicker" name="orderExpired" placeholder="" id="orderExpired" value="<?= set_value('tb_order_orderExpired_name', $tb_order->orderExpired); ?>">
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
                    window.location.href = BASE_URL + 'administrator/tb_order';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        
    var form_tb_order = $('#form_tb_order');
    var data_post = form_tb_order.serializeArray();
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
            url: form_tb_order.attr('action'),
            type: 'POST',
            dataType: 'json',
            data: data_post,
        })
        .done(function(res) {
            $('form').find('.form-group').removeClass('has-error');
            $('form').find('.error-input').remove();
            $('.steps li').removeClass('error');
            if (res.success) {
                var id = $('#tb_order_image_galery').find('li').attr('qq-file-id');
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