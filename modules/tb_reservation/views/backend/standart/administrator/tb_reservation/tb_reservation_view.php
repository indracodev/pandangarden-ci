<script type="text/javascript">
function domo(){
   $('*').bind('keydown', 'Ctrl+e', function() {
      $('#btn_edit').trigger('click');
       return false;
   });

   $('*').bind('keydown', 'Ctrl+x', function() {
      $('#btn_back').trigger('click');
       return false;
   });
}

jQuery(document).ready(domo);
</script>
<section class="content-header">
   <h1>
      Tb Reservation      <small><?= cclang('detail', ['Tb Reservation']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_reservation'); ?>">Tb Reservation</a></li>
      <li class="active"><?= cclang('detail'); ?></li>
   </ol>
</section>
<section class="content">
   <div class="row" >
     
      <div class="col-md-12">
         <div class="box box-warning">
            <div class="box-body ">

               <div class="box box-widget widget-user-2">
                  <div class="widget-user-header ">
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/view.png" alt="User Avatar">
                     </div>
                     <h3 class="widget-user-username">Tb Reservation</h3>
                     <h5 class="widget-user-desc">Detail Tb Reservation</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_reservation" id="form_tb_reservation" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_reservation->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">ReservationId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-reservationId"><?= _ent($tb_reservation->reservationId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">ReservationName </label>

                        <div class="col-sm-8">
                        <span class="detail_group-reservationName"><?= _ent($tb_reservation->reservationName); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">ReservationPhone </label>

                        <div class="col-sm-8">
                        <span class="detail_group-reservationPhone"><?= _ent($tb_reservation->reservationPhone); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">ReservationDate </label>

                        <div class="col-sm-8">
                        <span class="detail_group-reservationDate"><?= _ent($tb_reservation->reservationDate); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">ReservationTime </label>

                        <div class="col-sm-8">
                        <span class="detail_group-reservationTime"><?= _ent($tb_reservation->reservationTime); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">ReservationType </label>

                        <div class="col-sm-8">
                        <span class="detail_group-reservationType"><?= _ent($tb_reservation->reservationType); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">ReservationRequest </label>

                        <div class="col-sm-8">
                        <span class="detail_group-reservationRequest"><?= _ent($tb_reservation->reservationRequest); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_reservation_update', function() use ($tb_reservation){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_reservation (Ctrl+e)" href="<?= site_url('administrator/tb_reservation/edit/'.$tb_reservation->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Reservation']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_reservation/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Reservation']); ?></a>
                     </div>
                    
                  </div>
               </div>
            </div>
         </div>
      </div>
   </div>
</section>

<script>
$(document).ready(function(){

    "use strict";
    
   
   });
</script>