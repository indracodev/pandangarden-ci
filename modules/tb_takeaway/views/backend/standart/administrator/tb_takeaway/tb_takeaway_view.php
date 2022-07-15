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
      Tb Takeaway      <small><?= cclang('detail', ['Tb Takeaway']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_takeaway'); ?>">Tb Takeaway</a></li>
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
                     <h3 class="widget-user-username">Tb Takeaway</h3>
                     <h5 class="widget-user-desc">Detail Tb Takeaway</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_takeaway" id="form_tb_takeaway" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_takeaway->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">TakeawayId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-takeawayId"><?= _ent($tb_takeaway->takeawayId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">TakeawayName </label>

                        <div class="col-sm-8">
                        <span class="detail_group-takeawayName"><?= _ent($tb_takeaway->takeawayName); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">TakeawayPhone </label>

                        <div class="col-sm-8">
                        <span class="detail_group-takeawayPhone"><?= _ent($tb_takeaway->takeawayPhone); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">TakeawayDate </label>

                        <div class="col-sm-8">
                        <span class="detail_group-takeawayDate"><?= _ent($tb_takeaway->takeawayDate); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">TakeawayTime </label>

                        <div class="col-sm-8">
                        <span class="detail_group-takeawayTime"><?= _ent($tb_takeaway->takeawayTime); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">TakeawayEmail </label>

                        <div class="col-sm-8">
                        <span class="detail_group-takeawayEmail"><?= _ent($tb_takeaway->takeawayEmail); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderId"><?= _ent($tb_takeaway->orderId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderFee </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderFee"><?= _ent($tb_takeaway->orderFee); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">TakeawayPayment </label>

                        <div class="col-sm-8">
                        <span class="detail_group-takeawayPayment"><?= _ent($tb_takeaway->takeawayPayment); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">PaymentStatus </label>

                        <div class="col-sm-8">
                        <span class="detail_group-paymentStatus"><?= _ent($tb_takeaway->paymentStatus); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">PaymentDate </label>

                        <div class="col-sm-8">
                        <span class="detail_group-paymentDate"><?= _ent($tb_takeaway->paymentDate); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_takeaway_update', function() use ($tb_takeaway){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_takeaway (Ctrl+e)" href="<?= site_url('administrator/tb_takeaway/edit/'.$tb_takeaway->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Takeaway']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_takeaway/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Takeaway']); ?></a>
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