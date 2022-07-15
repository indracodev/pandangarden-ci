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
      Tb Delivery      <small><?= cclang('detail', ['Tb Delivery']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_delivery'); ?>">Tb Delivery</a></li>
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
                     <h3 class="widget-user-username">Tb Delivery</h3>
                     <h5 class="widget-user-desc">Detail Tb Delivery</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_delivery" id="form_tb_delivery" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_delivery->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryId"><?= _ent($tb_delivery->deliveryId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryName </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryName"><?= _ent($tb_delivery->deliveryName); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryPhone </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryPhone"><?= _ent($tb_delivery->deliveryPhone); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryDate </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryDate"><?= _ent($tb_delivery->deliveryDate); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryTime </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryTime"><?= _ent($tb_delivery->deliveryTime); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryAddress </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryAddress"><?= _ent($tb_delivery->deliveryAddress); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryCoord </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryCoord"><?= _ent($tb_delivery->deliveryCoord); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryEmail </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryEmail"><?= _ent($tb_delivery->deliveryEmail); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryNote </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryNote"><?= _ent($tb_delivery->deliveryNote); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryFee </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryFee"><?= _ent($tb_delivery->deliveryFee); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderId"><?= _ent($tb_delivery->orderId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderFee </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderFee"><?= _ent($tb_delivery->orderFee); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">DeliveryPayment </label>

                        <div class="col-sm-8">
                        <span class="detail_group-deliveryPayment"><?= _ent($tb_delivery->deliveryPayment); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">PaymentStatus </label>

                        <div class="col-sm-8">
                        <span class="detail_group-paymentStatus"><?= _ent($tb_delivery->paymentStatus); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">PaymentDate </label>

                        <div class="col-sm-8">
                        <span class="detail_group-paymentDate"><?= _ent($tb_delivery->paymentDate); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_delivery_update', function() use ($tb_delivery){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_delivery (Ctrl+e)" href="<?= site_url('administrator/tb_delivery/edit/'.$tb_delivery->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Delivery']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_delivery/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Delivery']); ?></a>
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