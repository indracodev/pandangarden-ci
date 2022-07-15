<script type="text/javascript">
function domo(){
 
   $('*').bind('keydown', 'Ctrl+a', function() {
       window.location.href = BASE_URL + '/administrator/Tb_customers/add';
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
      <?= cclang('tb_customers') ?><small><?= cclang('list_all'); ?></small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active"><?= cclang('tb_customers') ?></li>
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
                        <?php is_allowed('tb_customers_add', function(){?>
                        <a class="btn btn-flat btn-success btn_add_new" id="btn_add_new" title="<?= cclang('add_new_button', [cclang('tb_customers')]); ?>  (Ctrl+a)" href="<?=  site_url('administrator/tb_customers/add'); ?>"><i class="fa fa-plus-square-o" ></i> <?= cclang('add_new_button', [cclang('tb_customers')]); ?></a>
                        <?php }) ?>
                        <?php is_allowed('tb_customers_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> <?= cclang('tb_customers') ?> " href="<?= site_url('administrator/tb_customers/export?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-excel-o" ></i> <?= cclang('export'); ?> XLS</a>
                        <?php }) ?>
                                                <?php is_allowed('tb_customers_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> pdf <?= cclang('tb_customers') ?> " href="<?= site_url('administrator/tb_customers/export_pdf?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-pdf-o" ></i> <?= cclang('export'); ?> PDF</a>
                        <?php }) ?>
                                             </div>
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/list.png" alt="User Avatar">
                     </div>
                     <!-- /.widget-user-image -->
                     <h3 class="widget-user-username"><?= cclang('tb_customers') ?></h3>
                     <h5 class="widget-user-desc"><?= cclang('list_all', [cclang('tb_customers')]); ?>  <i class="label bg-yellow"><?= $tb_customers_counts; ?>  <?= cclang('items'); ?></i></h5>
                  </div>

                  <form name="form_tb_customers" id="form_tb_customers" action="<?= base_url('administrator/tb_customers/index'); ?>">
                  


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
                               <option <?= $this->input->get('f') == 'customerId' ? 'selected' :''; ?> value="customerId">CustomerId</option>
                            <option <?= $this->input->get('f') == 'customerName' ? 'selected' :''; ?> value="customerName">CustomerName</option>
                            <option <?= $this->input->get('f') == 'customerUsername' ? 'selected' :''; ?> value="customerUsername">CustomerUsername</option>
                            <option <?= $this->input->get('f') == 'customerEmail' ? 'selected' :''; ?> value="customerEmail">CustomerEmail</option>
                            <option <?= $this->input->get('f') == 'customerAddress' ? 'selected' :''; ?> value="customerAddress">CustomerAddress</option>
                            <option <?= $this->input->get('f') == 'customerPhone' ? 'selected' :''; ?> value="customerPhone">CustomerPhone</option>
                            <option <?= $this->input->get('f') == 'customerPassword' ? 'selected' :''; ?> value="customerPassword">CustomerPassword</option>
                            <option <?= $this->input->get('f') == 'lastUpdated' ? 'selected' :''; ?> value="lastUpdated">LastUpdated</option>
                           </select>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <button type="submit" class="btn btn-flat" name="sbtn" id="sbtn" value="Apply" title="<?= cclang('filter_search'); ?>">
                           Filter
                           </button>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <a class="btn btn-default btn-flat" name="reset" id="reset" value="Apply" href="<?= base_url('administrator/tb_customers');?>" title="<?= cclang('reset_filter'); ?>">
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
                                                    <th data-field="customerId"data-sort="1" data-primary-key="0"> <?= cclang('customerId') ?></th>
                           <th data-field="customerName"data-sort="1" data-primary-key="0"> <?= cclang('customerName') ?></th>
                           <th data-field="customerUsername"data-sort="1" data-primary-key="0"> <?= cclang('customerUsername') ?></th>
                           <th data-field="customerEmail"data-sort="1" data-primary-key="0"> <?= cclang('customerEmail') ?></th>
                           <th data-field="customerAddress"data-sort="1" data-primary-key="0"> <?= cclang('customerAddress') ?></th>
                           <th data-field="customerPhone"data-sort="1" data-primary-key="0"> <?= cclang('customerPhone') ?></th>
                           <th data-field="customerPassword"data-sort="1" data-primary-key="0"> <?= cclang('customerPassword') ?></th>
                           <th data-field="lastUpdated"data-sort="1" data-primary-key="0"> <?= cclang('lastUpdated') ?></th>
                           <th>Action</th>                        </tr>
                     </thead>
                     <tbody id="tbody_tb_customers">
                     <?php foreach($tb_customerss as $tb_customers): ?>
                        <tr>
                                                       <td width="5">
                              <input type="checkbox" class="flat-red check" name="id[]" value="<?= $tb_customers->id; ?>">
                           </td>
                                                       
                           <td><span class="list_group-customerId"><?= _ent($tb_customers->customerId); ?></span></td> 
                           <td><span class="list_group-customerName"><?= _ent($tb_customers->customerName); ?></span></td> 
                           <td><span class="list_group-customerUsername"><?= _ent($tb_customers->customerUsername); ?></span></td> 
                           <td><span class="list_group-customerEmail"><?= _ent($tb_customers->customerEmail); ?></span></td> 
                           <td><span class="list_group-customerAddress"><?= _ent($tb_customers->customerAddress); ?></span></td> 
                           <td><span class="list_group-customerPhone"><?= _ent($tb_customers->customerPhone); ?></span></td> 
                           <td><span class="list_group-customerPassword"><?= _ent($tb_customers->customerPassword); ?></span></td> 
                           <td><span class="list_group-lastUpdated"><?= _ent($tb_customers->lastUpdated); ?></span></td> 
                           <td width="200">
                            
                                                              <?php is_allowed('tb_customers_view', function() use ($tb_customers){?>
                                                              <a href="<?= site_url('administrator/tb_customers/view/' . $tb_customers->id); ?>" class="label-default"><i class="fa fa-newspaper-o"></i> <?= cclang('view_button'); ?>
                              <?php }) ?>
                              <?php is_allowed('tb_customers_update', function() use ($tb_customers){?>
                              <a href="<?= site_url('administrator/tb_customers/edit/' . $tb_customers->id); ?>" class="label-default"><i class="fa fa-edit "></i> <?= cclang('update_button'); ?></a>
                              <?php }) ?>
                              <?php is_allowed('tb_customers_delete', function() use ($tb_customers){?>
                              <a href="javascript:void(0);" data-href="<?= site_url('administrator/tb_customers/delete/' . $tb_customers->id); ?>" class="label-default remove-data"><i class="fa fa-close"></i> <?= cclang('remove_button'); ?></a>
                               <?php }) ?>

                           </td>                        </tr>
                      <?php endforeach; ?>
                      <?php if ($tb_customers_counts == 0) :?>
                         <tr>
                           <td colspan="100">
                           Tb Customers data is not available
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
      var serialize_bulk = $('#form_tb_customers').serialize();

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
               document.location.href = BASE_URL + '/administrator/tb_customers/delete?' + serialize_bulk;      
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
    initSortable('tb_customers', $('table.dataTable'));
  }); /*end doc ready*/
</script>