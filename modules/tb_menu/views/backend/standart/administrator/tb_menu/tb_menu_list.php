<script type="text/javascript">
function domo(){
 
   $('*').bind('keydown', 'Ctrl+a', function() {
       window.location.href = BASE_URL + '/administrator/Tb_menu/add';
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
      <?= cclang('tb_menu') ?><small><?= cclang('list_all'); ?></small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active"><?= cclang('tb_menu') ?></li>
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
                        <?php is_allowed('tb_menu_add', function(){?>
                        <a class="btn btn-flat btn-success btn_add_new" id="btn_add_new" title="<?= cclang('add_new_button', [cclang('tb_menu')]); ?>  (Ctrl+a)" href="<?=  site_url('administrator/tb_menu/add'); ?>"><i class="fa fa-plus-square-o" ></i> <?= cclang('add_new_button', [cclang('tb_menu')]); ?></a>
                        <?php }) ?>
                        <?php is_allowed('tb_menu_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> <?= cclang('tb_menu') ?> " href="<?= site_url('administrator/tb_menu/export?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-excel-o" ></i> <?= cclang('export'); ?> XLS</a>
                        <?php }) ?>
                                                <?php is_allowed('tb_menu_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> pdf <?= cclang('tb_menu') ?> " href="<?= site_url('administrator/tb_menu/export_pdf?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-pdf-o" ></i> <?= cclang('export'); ?> PDF</a>
                        <?php }) ?>
                                             </div>
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/list.png" alt="User Avatar">
                     </div>
                     <!-- /.widget-user-image -->
                     <h3 class="widget-user-username"><?= cclang('tb_menu') ?></h3>
                     <h5 class="widget-user-desc"><?= cclang('list_all', [cclang('tb_menu')]); ?>  <i class="label bg-yellow"><?= $tb_menu_counts; ?>  <?= cclang('items'); ?></i></h5>
                  </div>

                  <form name="form_tb_menu" id="form_tb_menu" action="<?= base_url('administrator/tb_menu/index'); ?>">
                  


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
                               <option <?= $this->input->get('f') == 'menuId' ? 'selected' :''; ?> value="menuId">MenuId</option>
                            <option <?= $this->input->get('f') == 'menuName' ? 'selected' :''; ?> value="menuName">MenuName</option>
                            <option <?= $this->input->get('f') == 'categoryId' ? 'selected' :''; ?> value="categoryId">CategoryId</option>
                            <option <?= $this->input->get('f') == 'goFood' ? 'selected' :''; ?> value="goFood">GoFood</option>
                            <option <?= $this->input->get('f') == 'grabFood' ? 'selected' :''; ?> value="grabFood">GrabFood</option>
                            <option <?= $this->input->get('f') == 'whatsapp' ? 'selected' :''; ?> value="whatsapp">Whatsapp</option>
                            <option <?= $this->input->get('f') == 'menuDesc' ? 'selected' :''; ?> value="menuDesc">MenuDesc</option>
                            <option <?= $this->input->get('f') == 'menuPrice' ? 'selected' :''; ?> value="menuPrice">MenuPrice</option>
                            <option <?= $this->input->get('f') == 'lastUpdated' ? 'selected' :''; ?> value="lastUpdated">LastUpdated</option>
                           </select>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <button type="submit" class="btn btn-flat" name="sbtn" id="sbtn" value="Apply" title="<?= cclang('filter_search'); ?>">
                           Filter
                           </button>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <a class="btn btn-default btn-flat" name="reset" id="reset" value="Apply" href="<?= base_url('administrator/tb_menu');?>" title="<?= cclang('reset_filter'); ?>">
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
                                                    <th data-field="menuId"data-sort="1" data-primary-key="0"> <?= cclang('menuId') ?></th>
                           <th data-field="menuName"data-sort="1" data-primary-key="0"> <?= cclang('menuName') ?></th>
                           <th data-field="categoryId"data-sort="1" data-primary-key="0"> <?= cclang('categoryId') ?></th>
                           <th data-field="goFood"data-sort="1" data-primary-key="0"> <?= cclang('goFood') ?></th>
                           <th data-field="grabFood"data-sort="1" data-primary-key="0"> <?= cclang('grabFood') ?></th>
                           <th data-field="whatsapp"data-sort="1" data-primary-key="0"> <?= cclang('whatsapp') ?></th>
                           <th data-field="menuDesc"data-sort="1" data-primary-key="0"> <?= cclang('menuDesc') ?></th>
                           <th data-field="menuPrice"data-sort="1" data-primary-key="0"> <?= cclang('menuPrice') ?></th>
                           <th data-field="lastUpdated"data-sort="1" data-primary-key="0"> <?= cclang('lastUpdated') ?></th>
                           <th>Action</th>                        </tr>
                     </thead>
                     <tbody id="tbody_tb_menu">
                     <?php foreach($tb_menus as $tb_menu): ?>
                        <tr>
                                                       <td width="5">
                              <input type="checkbox" class="flat-red check" name="id[]" value="<?= $tb_menu->id; ?>">
                           </td>
                                                       
                           <td><span class="list_group-menuId"><?= _ent($tb_menu->menuId); ?></span></td> 
                           <td><span class="list_group-menuName"><?= _ent($tb_menu->menuName); ?></span></td> 
                           <td><span class="list_group-categoryId"><?= _ent($tb_menu->categoryId); ?></span></td> 
                           <td><span class="list_group-goFood"><?= _ent($tb_menu->goFood); ?></span></td> 
                           <td><span class="list_group-grabFood"><?= _ent($tb_menu->grabFood); ?></span></td> 
                           <td><span class="list_group-whatsapp"><?= _ent($tb_menu->whatsapp); ?></span></td> 
                           <td><span class="list_group-menuDesc"><?= _ent($tb_menu->menuDesc); ?></span></td> 
                           <td><span class="list_group-menuPrice"><?= _ent($tb_menu->menuPrice); ?></span></td> 
                           <td><span class="list_group-lastUpdated"><?= _ent($tb_menu->lastUpdated); ?></span></td> 
                           <td width="200">
                            
                                                              <?php is_allowed('tb_menu_view', function() use ($tb_menu){?>
                                                              <a href="<?= site_url('administrator/tb_menu/view/' . $tb_menu->id); ?>" class="label-default"><i class="fa fa-newspaper-o"></i> <?= cclang('view_button'); ?>
                              <?php }) ?>
                              <?php is_allowed('tb_menu_update', function() use ($tb_menu){?>
                              <a href="<?= site_url('administrator/tb_menu/edit/' . $tb_menu->id); ?>" class="label-default"><i class="fa fa-edit "></i> <?= cclang('update_button'); ?></a>
                              <?php }) ?>
                              <?php is_allowed('tb_menu_delete', function() use ($tb_menu){?>
                              <a href="javascript:void(0);" data-href="<?= site_url('administrator/tb_menu/delete/' . $tb_menu->id); ?>" class="label-default remove-data"><i class="fa fa-close"></i> <?= cclang('remove_button'); ?></a>
                               <?php }) ?>

                           </td>                        </tr>
                      <?php endforeach; ?>
                      <?php if ($tb_menu_counts == 0) :?>
                         <tr>
                           <td colspan="100">
                           Tb Menu data is not available
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
      var serialize_bulk = $('#form_tb_menu').serialize();

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
               document.location.href = BASE_URL + '/administrator/tb_menu/delete?' + serialize_bulk;      
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
    initSortable('tb_menu', $('table.dataTable'));
  }); /*end doc ready*/
</script>