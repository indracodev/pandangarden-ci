<script type="text/javascript">
function domo(){
 
   $('*').bind('keydown', 'Ctrl+a', function() {
       window.location.href = BASE_URL + '/administrator/Tb_preorder/add';
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
      <?= cclang('tb_preorder') ?><small><?= cclang('list_all'); ?></small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active"><?= cclang('tb_preorder') ?></li>
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
                        <?php is_allowed('tb_preorder_add', function(){?>
                        <a class="btn btn-flat btn-success btn_add_new" id="btn_add_new" title="<?= cclang('add_new_button', [cclang('tb_preorder')]); ?>  (Ctrl+a)" href="<?=  site_url('administrator/tb_preorder/add'); ?>"><i class="fa fa-plus-square-o" ></i> <?= cclang('add_new_button', [cclang('tb_preorder')]); ?></a>
                        <?php }) ?>
                        <?php is_allowed('tb_preorder_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> <?= cclang('tb_preorder') ?> " href="<?= site_url('administrator/tb_preorder/export?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-excel-o" ></i> <?= cclang('export'); ?> XLS</a>
                        <?php }) ?>
                                                <?php is_allowed('tb_preorder_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> pdf <?= cclang('tb_preorder') ?> " href="<?= site_url('administrator/tb_preorder/export_pdf?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-pdf-o" ></i> <?= cclang('export'); ?> PDF</a>
                        <?php }) ?>
                                             </div>
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/list.png" alt="User Avatar">
                     </div>
                     <!-- /.widget-user-image -->
                     <h3 class="widget-user-username"><?= cclang('tb_preorder') ?></h3>
                     <h5 class="widget-user-desc"><?= cclang('list_all', [cclang('tb_preorder')]); ?>  <i class="label bg-yellow"><?= $tb_preorder_counts; ?>  <?= cclang('items'); ?></i></h5>
                  </div>

                  <form name="form_tb_preorder" id="form_tb_preorder" action="<?= base_url('administrator/tb_preorder/index'); ?>">
                  


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
                               <option <?= $this->input->get('f') == 'preorderId' ? 'selected' :''; ?> value="preorderId">PreorderId</option>
                            <option <?= $this->input->get('f') == 'menuId' ? 'selected' :''; ?> value="menuId">MenuId</option>
                            <option <?= $this->input->get('f') == 'preorderStart' ? 'selected' :''; ?> value="preorderStart">PreorderStart</option>
                            <option <?= $this->input->get('f') == 'preorderEnd' ? 'selected' :''; ?> value="preorderEnd">PreorderEnd</option>
                            <option <?= $this->input->get('f') == 'preorderStatus' ? 'selected' :''; ?> value="preorderStatus">PreorderStatus</option>
                            <option <?= $this->input->get('f') == 'lastUpdated' ? 'selected' :''; ?> value="lastUpdated">LastUpdated</option>
                           </select>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <button type="submit" class="btn btn-flat" name="sbtn" id="sbtn" value="Apply" title="<?= cclang('filter_search'); ?>">
                           Filter
                           </button>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <a class="btn btn-default btn-flat" name="reset" id="reset" value="Apply" href="<?= base_url('administrator/tb_preorder');?>" title="<?= cclang('reset_filter'); ?>">
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
                                                    <th data-field="preorderId"data-sort="1" data-primary-key="0"> <?= cclang('preorderId') ?></th>
                           <th data-field="menuId"data-sort="1" data-primary-key="0"> <?= cclang('menuId') ?></th>
                           <th data-field="preorderStart"data-sort="1" data-primary-key="0"> <?= cclang('preorderStart') ?></th>
                           <th data-field="preorderEnd"data-sort="1" data-primary-key="0"> <?= cclang('preorderEnd') ?></th>
                           <th data-field="preorderStatus"data-sort="1" data-primary-key="0"> <?= cclang('preorderStatus') ?></th>
                           <th data-field="lastUpdated"data-sort="1" data-primary-key="0"> <?= cclang('lastUpdated') ?></th>
                           <th>Action</th>                        </tr>
                     </thead>
                     <tbody id="tbody_tb_preorder">
                     <?php foreach($tb_preorders as $tb_preorder): ?>
                        <tr>
                                                       <td width="5">
                              <input type="checkbox" class="flat-red check" name="id[]" value="<?= $tb_preorder->id; ?>">
                           </td>
                                                       
                           <td><span class="list_group-preorderId"><?= _ent($tb_preorder->preorderId); ?></span></td> 
                           <td><span class="list_group-menuId"><?= _ent($tb_preorder->menuId); ?></span></td> 
                           <td><span class="list_group-preorderStart"><?= _ent($tb_preorder->preorderStart); ?></span></td> 
                           <td><span class="list_group-preorderEnd"><?= _ent($tb_preorder->preorderEnd); ?></span></td> 
                           <td><span class="list_group-preorderStatus"><?= _ent($tb_preorder->preorderStatus); ?></span></td> 
                           <td><span class="list_group-lastUpdated"><?= _ent($tb_preorder->lastUpdated); ?></span></td> 
                           <td width="200">
                            
                                                              <?php is_allowed('tb_preorder_view', function() use ($tb_preorder){?>
                                                              <a href="<?= site_url('administrator/tb_preorder/view/' . $tb_preorder->id); ?>" class="label-default"><i class="fa fa-newspaper-o"></i> <?= cclang('view_button'); ?>
                              <?php }) ?>
                              <?php is_allowed('tb_preorder_update', function() use ($tb_preorder){?>
                              <a href="<?= site_url('administrator/tb_preorder/edit/' . $tb_preorder->id); ?>" class="label-default"><i class="fa fa-edit "></i> <?= cclang('update_button'); ?></a>
                              <?php }) ?>
                              <?php is_allowed('tb_preorder_delete', function() use ($tb_preorder){?>
                              <a href="javascript:void(0);" data-href="<?= site_url('administrator/tb_preorder/delete/' . $tb_preorder->id); ?>" class="label-default remove-data"><i class="fa fa-close"></i> <?= cclang('remove_button'); ?></a>
                               <?php }) ?>

                           </td>                        </tr>
                      <?php endforeach; ?>
                      <?php if ($tb_preorder_counts == 0) :?>
                         <tr>
                           <td colspan="100">
                           Tb Preorder data is not available
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
      var serialize_bulk = $('#form_tb_preorder').serialize();

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
               document.location.href = BASE_URL + '/administrator/tb_preorder/delete?' + serialize_bulk;      
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
    initSortable('tb_preorder', $('table.dataTable'));
  }); /*end doc ready*/
</script>