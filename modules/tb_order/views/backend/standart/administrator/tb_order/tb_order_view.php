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
      Tb Order      <small><?= cclang('detail', ['Tb Order']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_order'); ?>">Tb Order</a></li>
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
                     <h3 class="widget-user-username">Tb Order</h3>
                     <h5 class="widget-user-desc">Detail Tb Order</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_order" id="form_tb_order" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_order->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderId"><?= _ent($tb_order->orderId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderType </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderType"><?= _ent($tb_order->orderType); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CustomerId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-customerId"><?= _ent($tb_order->customerId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">MenuId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-menuId"><?= _ent($tb_order->menuId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">MenuQty </label>

                        <div class="col-sm-8">
                        <span class="detail_group-menuQty"><?= _ent($tb_order->menuQty); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">MenuPrice </label>

                        <div class="col-sm-8">
                        <span class="detail_group-menuPrice"><?= _ent($tb_order->menuPrice); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderSubtotal </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderSubtotal"><?= _ent($tb_order->orderSubtotal); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderNote </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderNote"><?= _ent($tb_order->orderNote); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderStatus </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderStatus"><?= _ent($tb_order->orderStatus); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">OrderExpired </label>

                        <div class="col-sm-8">
                        <span class="detail_group-orderExpired"><?= _ent($tb_order->orderExpired); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_order_update', function() use ($tb_order){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_order (Ctrl+e)" href="<?= site_url('administrator/tb_order/edit/'.$tb_order->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Order']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_order/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Order']); ?></a>
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