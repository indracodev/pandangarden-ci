<script type="text/javascript">
function domo(){
 
   $('*').bind('keydown', 'Ctrl+a', function() {
       window.location.href = BASE_URL + '/administrator/Tb_delivery/add';
       return false;
   });

   $('*').bind('keydown', 'Ctrl+f', function() {
       $('#sbtn').trigger('click');
       return false;
   });

   $('*').bind('keydown', 'Ctrl+x', function() {
       $('#reset').trigger('click');
       return false;
   });

   $('*').bind('keydown', 'Ctrl+b', function() {

       $('#reset').trigger('click');
       return false;
   });
}

jQuery(document).ready(domo);
</script>
<section class="content-header">
   <h1>
      <?= cclang('tb_delivery') ?><small><?= cclang('list_all'); ?></small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active"><?= cclang('tb_delivery') ?></li>
   </ol>
</section>
<!-- Main content -->
<section class="content">
   <div class="row" >
      
      <div class="col-md-12">
         <div class="box box-warning">
            <div class="box-body ">
               <div class="box box-widget widget-user-2">
                  <div class="widget-user-header ">
                     <div class="row pull-right">
                        <?php is_allowed('tb_delivery_add', function(){?>
                        <a class="btn btn-flat btn-success btn_add_new" id="btn_add_new" title="<?= cclang('add_new_button', [cclang('tb_delivery')]); ?>  (Ctrl+a)" href="<?=  site_url('administrator/tb_delivery/add'); ?>"><i class="fa fa-plus-square-o" ></i> <?= cclang('add_new_button', [cclang('tb_delivery')]); ?></a>
                        <?php }) ?>
                        <?php is_allowed('tb_delivery_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> <?= cclang('tb_delivery') ?> " href="<?= site_url('administrator/tb_delivery/export?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-excel-o" ></i> <?= cclang('export'); ?> XLS</a>
                        <?php }) ?>
                                                <?php is_allowed('tb_delivery_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> pdf <?= cclang('tb_delivery') ?> " href="<?= site_url('administrator/tb_delivery/export_pdf?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-pdf-o" ></i> <?= cclang('export'); ?> PDF</a>
                        <?php }) ?>
                                             </div>
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/list.png" alt="User Avatar">
                     </div>
                     <!-- /.widget-user-image -->
                     <h3 class="widget-user-username"><?= cclang('tb_delivery') ?></h3>
                     <h5 class="widget-user-desc"><?= cclang('list_all', [cclang('tb_delivery')]); ?>  <i class="label bg-yellow"><?= $tb_delivery_counts; ?>  <?= cclang('items'); ?></i></h5>
                  </div>

                  <form name="form_tb_delivery" id="form_tb_delivery" action="<?= base_url('administrator/tb_delivery/index'); ?>">
                  


                     <!-- /.widget-user -->
                  <div class="row">
                     <div class="col-md-8">
                                                <div class="col-sm-2 padd-left-0 " >
                           <select type="text" class="form-control chosen chosen-select" name="bulk" id="bulk" placeholder="Site Email" >
                                                         <option value="delete">Delete</option>
                                                      </select>
                        </div>
                        <div class="col-sm-2 padd-left-0 ">
                           <button type="button" class="btn btn-flat" name="apply" id="apply" title="<?= cclang('apply_bulk_action'); ?>"><?= cclang('apply_button'); ?></button>
                        </div>
                                                <div class="col-sm-3 padd-left-0  " >
                           <input type="text" class="form-control" name="q" id="filter" placeholder="<?= cclang('filter'); ?>" value="<?= $this->input->get('q'); ?>">
                        </div>
                        <div class="col-sm-3 padd-left-0 " >
                           <select type="text" class="form-control chosen chosen-select" name="f" id="field" >
                              <option value=""><?= cclang('all'); ?></option>
                               <option <?= $this->input->get('f') == 'deliveryId' ? 'selected' :''; ?> value="deliveryId">DeliveryId</option>
                            <option <?= $this->input->get('f') == 'deliveryName' ? 'selected' :''; ?> value="deliveryName">DeliveryName</option>
                            <option <?= $this->input->get('f') == 'deliveryPhone' ? 'selected' :''; ?> value="deliveryPhone">DeliveryPhone</option>
                            <option <?= $this->input->get('f') == 'deliveryDate' ? 'selected' :''; ?> value="deliveryDate">DeliveryDate</option>
                            <option <?= $this->input->get('f') == 'deliveryTime' ? 'selected' :''; ?> value="deliveryTime">DeliveryTime</option>
                            <option <?= $this->input->get('f') == 'deliveryAddress' ? 'selected' :''; ?> value="deliveryAddress">DeliveryAddress</option>
                            <option <?= $this->input->get('f') == 'deliveryCoord' ? 'selected' :''; ?> value="deliveryCoord">DeliveryCoord</option>
                            <option <?= $this->input->get('f') == 'deliveryEmail' ? 'selected' :''; ?> value="deliveryEmail">DeliveryEmail</option>
                            <option <?= $this->input->get('f') == 'deliveryNote' ? 'selected' :''; ?> value="deliveryNote">DeliveryNote</option>
                            <option <?= $this->input->get('f') == 'deliveryFee' ? 'selected' :''; ?> value="deliveryFee">DeliveryFee</option>
                            <option <?= $this->input->get('f') == 'orderId' ? 'selected' :''; ?> value="orderId">OrderId</option>
                            <option <?= $this->input->get('f') == 'orderFee' ? 'selected' :''; ?> value="orderFee">OrderFee</option>
                            <option <?= $this->input->get('f') == 'deliveryPayment' ? 'selected' :''; ?> value="deliveryPayment">DeliveryPayment</option>
                            <option <?= $this->input->get('f') == 'paymentStatus' ? 'selected' :''; ?> value="paymentStatus">PaymentStatus</option>
                            <option <?= $this->input->get('f') == 'paymentDate' ? 'selected' :''; ?> value="paymentDate">PaymentDate</option>
                            <option <?= $this->input->get('f') == 'lastUpdated' ? 'selected' :''; ?> value="lastUpdated">LastUpdated</option>
                           </select>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <button type="submit" class="btn btn-flat" name="sbtn" id="sbtn" value="Apply" title="<?= cclang('filter_search'); ?>">
                           Filter
                           </button>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <a class="btn btn-default btn-flat" name="reset" id="reset" value="Apply" href="<?= base_url('administrator/tb_delivery');?>" title="<?= cclang('reset_filter'); ?>">
                           <i class="fa fa-undo"></i>
                           </a>
                        </div>
                     </div>
                     <div class="col-md-4">
                        <div class="dataTables_paginate paging_simple_numbers pull-right" id="example2_paginate" >
                           <?= $pagination; ?>
                        </div>
                     </div>
                  </div>
                  <div class="table-responsive"> 

                  <br>
                  <table class="table table-bordered table-striped dataTable">
                     <thead>
                        <tr class="">
                                                     <th>
                            <input type="checkbox" class="flat-red toltip" id="check_all" name="check_all" title="check all">
                           </th>
                                                    <th data-field="deliveryId"data-sort="1" data-primary-key="0"> <?= cclang('deliveryId') ?></th>
                           <th data-field="deliveryName"data-sort="1" data-primary-key="0"> <?= cclang('deliveryName') ?></th>
                           <th data-field="deliveryPhone"data-sort="1" data-primary-key="0"> <?= cclang('deliveryPhone') ?></th>
                           <th data-field="deliveryDate"data-sort="1" data-primary-key="0"> <?= cclang('deliveryDate') ?></th>
                           <th data-field="deliveryTime"data-sort="1" data-primary-key="0"> <?= cclang('deliveryTime') ?></th>
                           <th data-field="deliveryAddress"data-sort="1" data-primary-key="0"> <?= cclang('deliveryAddress') ?></th>
                           <th data-field="deliveryCoord"data-sort="1" data-primary-key="0"> <?= cclang('deliveryCoord') ?></th>
                           <th data-field="deliveryEmail"data-sort="1" data-primary-key="0"> <?= cclang('deliveryEmail') ?></th>
                           <th data-field="deliveryNote"data-sort="1" data-primary-key="0"> <?= cclang('deliveryNote') ?></th>
                           <th data-field="deliveryFee"data-sort="1" data-primary-key="0"> <?= cclang('deliveryFee') ?></th>
                           <th data-field="orderId"data-sort="1" data-primary-key="0"> <?= cclang('orderId') ?></th>
                           <th data-field="orderFee"data-sort="1" data-primary-key="0"> <?= cclang('orderFee') ?></th>
                           <th data-field="deliveryPayment"data-sort="1" data-primary-key="0"> <?= cclang('deliveryPayment') ?></th>
                           <th data-field="paymentStatus"data-sort="1" data-primary-key="0"> <?= cclang('paymentStatus') ?></th>
                           <th data-field="paymentDate"data-sort="1" data-primary-key="0"> <?= cclang('paymentDate') ?></th>
                           <th data-field="lastUpdated"data-sort="1" data-primary-key="0"> <?= cclang('lastUpdated') ?></th>
                           <th>Action</th>                        </tr>
                     </thead>
                     <tbody id="tbody_tb_delivery">
                     <?php foreach($tb_deliverys as $tb_delivery): ?>
                        <tr>
                                                       <td width="5">
                              <input type="checkbox" class="flat-red check" name="id[]" value="<?= $tb_delivery->id; ?>">
                           </td>
                                                       
                           <td><span class="list_group-deliveryId"><?= _ent($tb_delivery->deliveryId); ?></span></td> 
                           <td><span class="list_group-deliveryName"><?= _ent($tb_delivery->deliveryName); ?></span></td> 
                           <td><span class="list_group-deliveryPhone"><?= _ent($tb_delivery->deliveryPhone); ?></span></td> 
                           <td><span class="list_group-deliveryDate"><?= _ent($tb_delivery->deliveryDate); ?></span></td> 
                           <td><span class="list_group-deliveryTime"><?= _ent($tb_delivery->deliveryTime); ?></span></td> 
                           <td><span class="list_group-deliveryAddress"><?= _ent($tb_delivery->deliveryAddress); ?></span></td> 
                           <td><span class="list_group-deliveryCoord"><?= _ent($tb_delivery->deliveryCoord); ?></span></td> 
                           <td><span class="list_group-deliveryEmail"><?= _ent($tb_delivery->deliveryEmail); ?></span></td> 
                           <td><span class="list_group-deliveryNote"><?= _ent($tb_delivery->deliveryNote); ?></span></td> 
                           <td><span class="list_group-deliveryFee"><?= _ent($tb_delivery->deliveryFee); ?></span></td> 
                           <td><span class="list_group-orderId"><?= _ent($tb_delivery->orderId); ?></span></td> 
                           <td><span class="list_group-orderFee"><?= _ent($tb_delivery->orderFee); ?></span></td> 
                           <td><span class="list_group-deliveryPayment"><?= _ent($tb_delivery->deliveryPayment); ?></span></td> 
                           <td><span class="list_group-paymentStatus"><?= _ent($tb_delivery->paymentStatus); ?></span></td> 
                           <td><span class="list_group-paymentDate"><?= _ent($tb_delivery->paymentDate); ?></span></td> 
                           <td><span class="list_group-lastUpdated"><?= _ent($tb_delivery->lastUpdated); ?></span></td> 
                           <td width="200">
                            
                                                              <?php is_allowed('tb_delivery_view', function() use ($tb_delivery){?>
                                                              <a href="<?= site_url('administrator/tb_delivery/view/' . $tb_delivery->id); ?>" class="label-default"><i class="fa fa-newspaper-o"></i> <?= cclang('view_button'); ?>
                              <?php }) ?>
                              <?php is_allowed('tb_delivery_update', function() use ($tb_delivery){?>
                              <a href="<?= site_url('administrator/tb_delivery/edit/' . $tb_delivery->id); ?>" class="label-default"><i class="fa fa-edit "></i> <?= cclang('update_button'); ?></a>
                              <?php }) ?>
                              <?php is_allowed('tb_delivery_delete', function() use ($tb_delivery){?>
                              <a href="javascript:void(0);" data-href="<?= site_url('administrator/tb_delivery/delete/' . $tb_delivery->id); ?>" class="label-default remove-data"><i class="fa fa-close"></i> <?= cclang('remove_button'); ?></a>
                               <?php }) ?>

                           </td>                        </tr>
                      <?php endforeach; ?>
                      <?php if ($tb_delivery_counts == 0) :?>
                         <tr>
                           <td colspan="100">
                           Tb Delivery data is not available
                           </td>
                         </tr>
                      <?php endif; ?>

                     </tbody>
                  </table>
                  </div>
               </div>
               <hr>
             
            </div>
            </form>            
         </div>
      </div>
   </div>
</section>


<script>
  $(document).ready(function(){

    "use strict";
   
    
      
    $('.remove-data').click(function(){

      var url = $(this).attr('data-href');

      swal({
          title: "<?= cclang('are_you_sure'); ?>",
          text: "<?= cclang('data_to_be_deleted_can_not_be_restored'); ?>",
          type: "warning",
          showCancelButton: true,
          confirmButtonColor: "#DD6B55",
          confirmButtonText: "<?= cclang('yes_delete_it'); ?>",
          cancelButtonText: "<?= cclang('no_cancel_plx'); ?>",
          closeOnConfirm: true,
          closeOnCancel: true
        },
        function(isConfirm){
          if (isConfirm) {
            document.location.href = url;            
          }
        });

      return false;
    });


    $('#apply').click(function(){

      var bulk = $('#bulk');
      var serialize_bulk = $('#form_tb_delivery').serialize();

      if (bulk.val() == 'delete') {
         swal({
            title: "<?= cclang('are_you_sure'); ?>",
            text: "<?= cclang('data_to_be_deleted_can_not_be_restored'); ?>",
            type: "warning",
            showCancelButton: true,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "<?= cclang('yes_delete_it'); ?>",
            cancelButtonText: "<?= cclang('no_cancel_plx'); ?>",
            closeOnConfirm: true,
            closeOnCancel: true
          },
          function(isConfirm){
            if (isConfirm) {
               document.location.href = BASE_URL + '/administrator/tb_delivery/delete?' + serialize_bulk;      
            }
          });

        return false;

      } else if(bulk.val() == '')  {
          swal({
            title: "Upss",
            text: "<?= cclang('please_choose_bulk_action_first'); ?>",
            type: "warning",
            showCancelButton: false,
            confirmButtonColor: "#DD6B55",
            confirmButtonText: "Okay!",
            closeOnConfirm: true,
            closeOnCancel: true
          });

        return false;
      }

      return false;

    });/*end appliy click*/


    //check all
    var checkAll = $('#check_all');
    var checkboxes = $('input.check');

    checkAll.on('ifChecked ifUnchecked', function(event) {   
        if (event.type == 'ifChecked') {
            checkboxes.iCheck('check');
        } else {
            checkboxes.iCheck('uncheck');
        }
    });

    checkboxes.on('ifChanged', function(event){
        if(checkboxes.filter(':checked').length == checkboxes.length) {
            checkAll.prop('checked', 'checked');
        } else {
            checkAll.removeProp('checked');
        }
        checkAll.iCheck('update');
    });
    initSortable('tb_delivery', $('table.dataTable'));
  }); /*end doc ready*/
</script>