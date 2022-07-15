
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
        Tb Reservation        <small><?= cclang('new', ['Tb Reservation']); ?> </small>
    </h1>
    <ol class="breadcrumb">
        <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
        <li class=""><a href="<?= site_url('administrator/tb_reservation'); ?>">Tb Reservation</a></li>
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
                            <h3 class="widget-user-username">Tb Reservation</h3>
                            <h5 class="widget-user-desc"><?= cclang('new', ['Tb Reservation']); ?></h5>
                            <hr>
                        </div>
                        <?= form_open('', [
                        'name' => 'form_tb_reservation',
                        'class' => 'form-horizontal form-step',
                        'id' => 'form_tb_reservation',
                        'enctype' => 'multipart/form-data',
                        'method' => 'POST'
                        ]); ?>
                        <?php
                        $user_groups = $this->model_group->get_user_group_ids();
                        ?>

                        <div class="form-group group-reservationId ">
        <div class="form-group group-reservationId ">
            <label for="reservationId" class="col-sm-2 control-label">ReservationId                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="reservationId" id="reservationId" placeholder="ReservationId" value="<?= set_value('reservationId'); ?>">
                <small class="info help-block">
                    <b>Input ReservationId</b> Max Length : 5.</small>
            </div>
        </div>
    

    <div class="form-group group-reservationName ">
        <div class="form-group group-reservationName ">
            <label for="reservationName" class="col-sm-2 control-label">ReservationName                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="reservationName" id="reservationName" placeholder="ReservationName" value="<?= set_value('reservationName'); ?>">
                <small class="info help-block">
                    <b>Input ReservationName</b> Max Length : 60.</small>
            </div>
        </div>
    

    <div class="form-group group-reservationPhone ">
        <div class="form-group group-reservationPhone ">
            <label for="reservationPhone" class="col-sm-2 control-label">ReservationPhone                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="reservationPhone" id="reservationPhone" placeholder="ReservationPhone" value="<?= set_value('reservationPhone'); ?>">
                <small class="info help-block">
                    <b>Input ReservationPhone</b> Max Length : 15.</small>
            </div>
        </div>
    

    <div class="form-group group-reservationDate ">
            <label for="reservationDate" class="col-sm-2 control-label">ReservationDate                <i class="required">*</i>
                </label>
            <div class="col-sm-6">
                <div class="input-group date col-sm-8">
                    <input type="text" class="form-control pull-right datepicker" name="reservationDate" placeholder="ReservationDate" id="reservationDate">
                </div>
                <small class="info help-block">
                    </small>
            </div>
        </div>
    

    <div class="form-group group-reservationTime ">
            <label for="reservationTime" class="col-sm-2 control-label">ReservationTime                <i class="required">*</i>
                </label>
            <div class="col-sm-6">
                <div class="input-group date col-sm-8">
                    <input type="text" class="form-control pull-right timepicker" name="reservationTime" id="reservationTime">
                </div>
                <small class="info help-block">
                    </small>
            </div>
        </div>
    

    <div class="form-group group-reservationType ">
        <div class="form-group group-reservationType ">
            <label for="reservationType" class="col-sm-2 control-label">ReservationType                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="reservationType" id="reservationType" placeholder="ReservationType" value="<?= set_value('reservationType'); ?>">
                <small class="info help-block">
                    <b>Input ReservationType</b> Max Length : 10.</small>
            </div>
        </div>
    

    <div class="form-group group-reservationRequest ">
        <div class="form-group group-reservationRequest ">
            <label for="reservationRequest" class="col-sm-2 control-label">ReservationRequest                <i class="required">*</i>
                </label>
            <div class="col-sm-8">
                <input type="text" class="form-control" name="reservationRequest" id="reservationRequest" placeholder="ReservationRequest" value="<?= set_value('reservationRequest'); ?>">
                <small class="info help-block">
                    <b>Input ReservationRequest</b> Max Length : 256.</small>
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
                    window.location.href = BASE_URL + 'administrator/tb_reservation';
                }
            });

        return false;
    }); /*end btn cancel*/

    $('.btn_save').click(function() {
        $('.message').fadeOut();
        
    var form_tb_reservation = $('#form_tb_reservation');
    var data_post = form_tb_reservation.serializeArray();
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
            url: BASE_URL + '/administrator/tb_reservation/add_save',
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