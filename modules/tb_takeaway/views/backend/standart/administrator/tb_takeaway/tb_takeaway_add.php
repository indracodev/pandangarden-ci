
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
        Tb Takeaway        <small><?= cclang('new', ['Tb Takeaway']); ?> </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_takeaway'); ?>">Tb Takeaway</a></li>
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
                            <h3 class="widget-user-username">Tb Takeaway</h3>
                            <h5 class="widget-user-desc"><?= cclang('new', ['Tb Takeaway']); ?></h5>
                            <hr>
                        </div>
                        <?= form_open('', [
                        'name' => 'form_tb_takeaway',
                        'class' => 'form-horizontal form-step',
                        'id' => 'form_tb_takeaway',
                        'enctype' => 'multipart/form-data',
                        'method' => 'POST'
                        ]); ?>
                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                        <div class="form-group group-takeawayId ">
        <div class="form-group group-takeawayId ">
            <label for="takeawayId" class="col-sm-2 control-label">TakeawayId                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="takeawayId" id="takeawayId" placeholder="TakeawayId" value="<?= set_value('takeawayId'); ?>">
                <small class="info help-block">
                    <b>Input TakeawayId</b> Max Length : 5.</small>
            </div>
        </div>
    

    <div class="form-group group-takeawayName ">
        <div class="form-group group-takeawayName ">
            <label for="takeawayName" class="col-sm-2 control-label">TakeawayName                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="takeawayName" id="takeawayName" placeholder="TakeawayName" value="<?= set_value('takeawayName'); ?>">
                <small class="info help-block">
                    <b>Input TakeawayName</b> Max Length : 60.</small>
            </div>
        </div>
    

    <div class="form-group group-takeawayPhone ">
        <div class="form-group group-takeawayPhone ">
            <label for="takeawayPhone" class="col-sm-2 control-label">TakeawayPhone                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="takeawayPhone" id="takeawayPhone" placeholder="TakeawayPhone" value="<?= set_value('takeawayPhone'); ?>">
                <small class="info help-block">
                    <b>Input TakeawayPhone</b> Max Length : 15.</small>
            </div>
        </div>
    

    <div class="form-group group-takeawayDate ">
            <label for="takeawayDate" class="col-sm-2 control-label">TakeawayDate                <i class="required">*</i>
                </label>
            <div class="col-sm-6">
                <div class="input-group date col-sm-8">
                    <input type="text" class="form-control pull-right datepicker" name="takeawayDate" placeholder="TakeawayDate" id="takeawayDate">
                </div>
                <small class="info help-block">
                    </small>
            </div>
        </div>
    

    <div class="form-group group-takeawayTime ">
            <label for="takeawayTime" class="col-sm-2 control-label">TakeawayTime                <i class="required">*</i>
                </label>
            <div class="col-sm-6">
                <div class="input-group date col-sm-8">
                    <input type="text" class="form-control pull-right timepicker" name="takeawayTime" id="takeawayTime">
                </div>
                <small class="info help-block">
                    </small>
            </div>
        </div>
    

    <div class="form-group group-takeawayEmail ">
        <div class="form-group group-takeawayEmail ">
            <label for="takeawayEmail" class="col-sm-2 control-label">TakeawayEmail                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="takeawayEmail" id="takeawayEmail" placeholder="TakeawayEmail" value="<?= set_value('takeawayEmail'); ?>">
                <small class="info help-block">
                    <b>Input TakeawayEmail</b> Max Length : 60.</small>
            </div>
        </div>
    

    <div class="form-group group-orderId ">
        <div class="form-group group-orderId ">
            <label for="orderId" class="col-sm-2 control-label">OrderId                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="orderId" id="orderId" placeholder="OrderId" value="<?= set_value('orderId'); ?>">
                <small class="info help-block">
                    <b>Input OrderId</b> Max Length : 5.</small>
            </div>
        </div>
    

    <div class="form-group group-orderFee ">
            <label for="orderFee" class="col-sm-2 control-label">OrderFee                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="number" class="form-control" name="orderFee" id="orderFee" placeholder="OrderFee" value="<?= set_value('orderFee'); ?>">
                <small class="info help-block">
                    <b>Input OrderFee</b> Max Length : 8.</small>
            </div>
        </div>
    

    <div class="form-group group-takeawayPayment ">
        <div class="form-group group-takeawayPayment ">
            <label for="takeawayPayment" class="col-sm-2 control-label">TakeawayPayment                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="takeawayPayment" id="takeawayPayment" placeholder="TakeawayPayment" value="<?= set_value('takeawayPayment'); ?>">
                <small class="info help-block">
                    <b>Input TakeawayPayment</b> Max Length : 10.</small>
            </div>
        </div>
    

    <div class="form-group group-paymentStatus ">
        <div class="form-group group-paymentStatus ">
            <label for="paymentStatus" class="col-sm-2 control-label">PaymentStatus                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="paymentStatus" id="paymentStatus" placeholder="PaymentStatus" value="<?= set_value('paymentStatus'); ?>">
                <small class="info help-block">
                    <b>Input PaymentStatus</b> Max Length : 1.</small>
            </div>
        </div>
    

    <div class="form-group group-paymentDate ">
            <label for="paymentDate" class="col-sm-2 control-label">PaymentDate                <i class="required">*</i>
                </label>
            <div class="col-sm-6">
                <div class="input-group date col-sm-8">
                    <input type="text" class="form-control pull-right datetimepicker" name="paymentDate" id="paymentDate">
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
                    window.location.href = BASE_URL + 'administrator/tb_takeaway';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        
    var form_tb_takeaway = $('#form_tb_takeaway');
    var data_post = form_tb_takeaway.serializeArray();
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
            url: BASE_URL + '/administrator/tb_takeaway/add_save',
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