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
      Tb Customers      <small><?= cclang('detail', ['Tb Customers']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_customers'); ?>">Tb Customers</a></li>
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
                     <h3 class="widget-user-username">Tb Customers</h3>
                     <h5 class="widget-user-desc">Detail Tb Customers</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_customers" id="form_tb_customers" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_customers->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CustomerId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-customerId"><?= _ent($tb_customers->customerId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CustomerName </label>

                        <div class="col-sm-8">
                        <span class="detail_group-customerName"><?= _ent($tb_customers->customerName); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CustomerUsername </label>

                        <div class="col-sm-8">
                        <span class="detail_group-customerUsername"><?= _ent($tb_customers->customerUsername); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CustomerEmail </label>

                        <div class="col-sm-8">
                        <span class="detail_group-customerEmail"><?= _ent($tb_customers->customerEmail); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CustomerAddress </label>

                        <div class="col-sm-8">
                        <span class="detail_group-customerAddress"><?= _ent($tb_customers->customerAddress); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CustomerPhone </label>

                        <div class="col-sm-8">
                        <span class="detail_group-customerPhone"><?= _ent($tb_customers->customerPhone); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CustomerPassword </label>

                        <div class="col-sm-8">
                        <span class="detail_group-customerPassword"><?= _ent($tb_customers->customerPassword); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_customers_update', function() use ($tb_customers){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_customers (Ctrl+e)" href="<?= site_url('administrator/tb_customers/edit/'.$tb_customers->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Customers']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_customers/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Customers']); ?></a>
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