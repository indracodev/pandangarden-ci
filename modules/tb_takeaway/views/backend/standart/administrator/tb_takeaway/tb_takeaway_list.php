<script type="text/javascript">
function domo(){
 
   $('*').bind('keydown', 'Ctrl+a', function() {
       window.location.href = BASE_URL + '/administrator/Tb_takeaway/add';
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
      <?= cclang('tb_takeaway') ?><small><?= cclang('list_all'); ?></small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active"><?= cclang('tb_takeaway') ?></li>
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
                        <?php is_allowed('tb_takeaway_add', function(){?>
                        <a class="btn btn-flat btn-success btn_add_new" id="btn_add_new" title="<?= cclang('add_new_button', [cclang('tb_takeaway')]); ?>  (Ctrl+a)" href="<?=  site_url('administrator/tb_takeaway/add'); ?>"><i class="fa fa-plus-square-o" ></i> <?= cclang('add_new_button', [cclang('tb_takeaway')]); ?></a>
                        <?php }) ?>
                        <?php is_allowed('tb_takeaway_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> <?= cclang('tb_takeaway') ?> " href="<?= site_url('administrator/tb_takeaway/export?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-excel-o" ></i> <?= cclang('export'); ?> XLS</a>
                        <?php }) ?>
                                                <?php is_allowed('tb_takeaway_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> pdf <?= cclang('tb_takeaway') ?> " href="<?= site_url('administrator/tb_takeaway/export_pdf?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-pdf-o" ></i> <?= cclang('export'); ?> PDF</a>
                        <?php }) ?>
                                             </div>
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/list.png" alt="User Avatar">
                     </div>
                     <!-- /.widget-user-image -->
                     <h3 class="widget-user-username"><?= cclang('tb_takeaway') ?></h3>
                     <h5 class="widget-user-desc"><?= cclang('list_all', [cclang('tb_takeaway')]); ?>  <i class="label bg-yellow"><?= $tb_takeaway_counts; ?>  <?= cclang('items'); ?></i></h5>
                  </div>

                  <form name="form_tb_takeaway" id="form_tb_takeaway" action="<?= base_url('administrator/tb_takeaway/index'); ?>">
                  


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
                               <option <?= $this->input->get('f') == 'takeawayId' ? 'selected' :''; ?> value="takeawayId">TakeawayId</option>
                            <option <?= $this->input->get('f') == 'takeawayName' ? 'selected' :''; ?> value="takeawayName">TakeawayName</option>
                            <option <?= $this->input->get('f') == 'takeawayPhone' ? 'selected' :''; ?> value="takeawayPhone">TakeawayPhone</option>
                            <option <?= $this->input->get('f') == 'takeawayDate' ? 'selected' :''; ?> value="takeawayDate">TakeawayDate</option>
                            <option <?= $this->input->get('f') == 'takeawayTime' ? 'selected' :''; ?> value="takeawayTime">TakeawayTime</option>
                            <option <?= $this->input->get('f') == 'takeawayEmail' ? 'selected' :''; ?> value="takeawayEmail">TakeawayEmail</option>
                            <option <?= $this->input->get('f') == 'orderId' ? 'selected' :''; ?> value="orderId">OrderId</option>
                            <option <?= $this->input->get('f') == 'orderFee' ? 'selected' :''; ?> value="orderFee">OrderFee</option>
                            <option <?= $this->input->get('f') == 'takeawayPayment' ? 'selected' :''; ?> value="takeawayPayment">TakeawayPayment</option>
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
                           <a class="btn btn-default btn-flat" name="reset" id="reset" value="Apply" href="<?= base_url('administrator/tb_takeaway');?>" title="<?= cclang('reset_filter'); ?>">
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
                                                    <th data-field="takeawayId"data-sort="1" data-primary-key="0"> <?= cclang('takeawayId') ?></th>
                           <th data-field="takeawayName"data-sort="1" data-primary-key="0"> <?= cclang('takeawayName') ?></th>
                           <th data-field="takeawayPhone"data-sort="1" data-primary-key="0"> <?= cclang('takeawayPhone') ?></th>
                           <th data-field="takeawayDate"data-sort="1" data-primary-key="0"> <?= cclang('takeawayDate') ?></th>
                           <th data-field="takeawayTime"data-sort="1" data-primary-key="0"> <?= cclang('takeawayTime') ?></th>
                           <th data-field="takeawayEmail"data-sort="1" data-primary-key="0"> <?= cclang('takeawayEmail') ?></th>
                           <th data-field="orderId"data-sort="1" data-primary-key="0"> <?= cclang('orderId') ?></th>
                           <th data-field="orderFee"data-sort="1" data-primary-key="0"> <?= cclang('orderFee') ?></th>
                           <th data-field="takeawayPayment"data-sort="1" data-primary-key="0"> <?= cclang('takeawayPayment') ?></th>
                           <th data-field="paymentStatus"data-sort="1" data-primary-key="0"> <?= cclang('paymentStatus') ?></th>
                           <th data-field="paymentDate"data-sort="1" data-primary-key="0"> <?= cclang('paymentDate') ?></th>
                           <th data-field="lastUpdated"data-sort="1" data-primary-key="0"> <?= cclang('lastUpdated') ?></th>
                           <th>Action</th>                        </tr>
                     </thead>
                     <tbody id="tbody_tb_takeaway">
                     <?php foreach($tb_takeaways as $tb_takeaway): ?>
                        <tr>
                                                       <td width="5">
                              <input type="checkbox" class="flat-red check" name="id[]" value="<?= $tb_takeaway->id; ?>">
                           </td>
                                                       
                           <td><span class="list_group-takeawayId"><?= _ent($tb_takeaway->takeawayId); ?></span></td> 
                           <td><span class="list_group-takeawayName"><?= _ent($tb_takeaway->takeawayName); ?></span></td> 
                           <td><span class="list_group-takeawayPhone"><?= _ent($tb_takeaway->takeawayPhone); ?></span></td> 
                           <td><span class="list_group-takeawayDate"><?= _ent($tb_takeaway->takeawayDate); ?></span></td> 
                           <td><span class="list_group-takeawayTime"><?= _ent($tb_takeaway->takeawayTime); ?></span></td> 
                           <td><span class="list_group-takeawayEmail"><?= _ent($tb_takeaway->takeawayEmail); ?></span></td> 
                           <td><span class="list_group-orderId"><?= _ent($tb_takeaway->orderId); ?></span></td> 
                           <td><span class="list_group-orderFee"><?= _ent($tb_takeaway->orderFee); ?></span></td> 
                           <td><span class="list_group-takeawayPayment"><?= _ent($tb_takeaway->takeawayPayment); ?></span></td> 
                           <td><span class="list_group-paymentStatus"><?= _ent($tb_takeaway->paymentStatus); ?></span></td> 
                           <td><span class="list_group-paymentDate"><?= _ent($tb_takeaway->paymentDate); ?></span></td> 
                           <td><span class="list_group-lastUpdated"><?= _ent($tb_takeaway->lastUpdated); ?></span></td> 
                           <td width="200">
                            
                                                              <?php is_allowed('tb_takeaway_view', function() use ($tb_takeaway){?>
                                                              <a href="<?= site_url('administrator/tb_takeaway/view/' . $tb_takeaway->id); ?>" class="label-default"><i class="fa fa-newspaper-o"></i> <?= cclang('view_button'); ?>
                              <?php }) ?>
                              <?php is_allowed('tb_takeaway_update', function() use ($tb_takeaway){?>
                              <a href="<?= site_url('administrator/tb_takeaway/edit/' . $tb_takeaway->id); ?>" class="label-default"><i class="fa fa-edit "></i> <?= cclang('update_button'); ?></a>
                              <?php }) ?>
                              <?php is_allowed('tb_takeaway_delete', function() use ($tb_takeaway){?>
                              <a href="javascript:void(0);" data-href="<?= site_url('administrator/tb_takeaway/delete/' . $tb_takeaway->id); ?>" class="label-default remove-data"><i class="fa fa-close"></i> <?= cclang('remove_button'); ?></a>
                               <?php }) ?>

                           </td>                        </tr>
                      <?php endforeach; ?>
                      <?php if ($tb_takeaway_counts == 0) :?>
                         <tr>
                           <td colspan="100">
                           Tb Takeaway data is not available
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
      var serialize_bulk = $('#form_tb_takeaway').serialize();

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
               document.location.href = BASE_URL + '/administrator/tb_takeaway/delete?' + serialize_bulk;      
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
    initSortable('tb_takeaway', $('table.dataTable'));
  }); /*end doc ready*/
</script>