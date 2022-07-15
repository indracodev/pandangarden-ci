<script type="text/javascript">
function domo(){
 
   $('*').bind('keydown', 'Ctrl+a', function() {
       window.location.href = BASE_URL + '/administrator/Tb_visitorlog/add';
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
      <?= cclang('tb_visitorlog') ?><small><?= cclang('list_all'); ?></small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class="active"><?= cclang('tb_visitorlog') ?></li>
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
                        <?php is_allowed('tb_visitorlog_add', function(){?>
                        <a class="btn btn-flat btn-success btn_add_new" id="btn_add_new" title="<?= cclang('add_new_button', [cclang('tb_visitorlog')]); ?>  (Ctrl+a)" href="<?=  site_url('administrator/tb_visitorlog/add'); ?>"><i class="fa fa-plus-square-o" ></i> <?= cclang('add_new_button', [cclang('tb_visitorlog')]); ?></a>
                        <?php }) ?>
                        <?php is_allowed('tb_visitorlog_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> <?= cclang('tb_visitorlog') ?> " href="<?= site_url('administrator/tb_visitorlog/export?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-excel-o" ></i> <?= cclang('export'); ?> XLS</a>
                        <?php }) ?>
                                                <?php is_allowed('tb_visitorlog_export', function(){?>
                        <a class="btn btn-flat btn-success" title="<?= cclang('export'); ?> pdf <?= cclang('tb_visitorlog') ?> " href="<?= site_url('administrator/tb_visitorlog/export_pdf?q='.$this->input->get('q').'&f='.$this->input->get('f')); ?>"><i class="fa fa-file-pdf-o" ></i> <?= cclang('export'); ?> PDF</a>
                        <?php }) ?>
                                             </div>
                     <div class="widget-user-image">
                        <img class="img-circle" src="<?= BASE_ASSET; ?>/img/list.png" alt="User Avatar">
                     </div>
                     <!-- /.widget-user-image -->
                     <h3 class="widget-user-username"><?= cclang('tb_visitorlog') ?></h3>
                     <h5 class="widget-user-desc"><?= cclang('list_all', [cclang('tb_visitorlog')]); ?>  <i class="label bg-yellow"><?= $tb_visitorlog_counts; ?>  <?= cclang('items'); ?></i></h5>
                  </div>

                  <form name="form_tb_visitorlog" id="form_tb_visitorlog" action="<?= base_url('administrator/tb_visitorlog/index'); ?>">
                  


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
                               <option <?= $this->input->get('f') == 'tb_visitorlog_date' ? 'selected' :''; ?> value="tb_visitorlog_date">Tb Visitorlog Date</option>
                            <option <?= $this->input->get('f') == 'tb_visitorlog_ip' ? 'selected' :''; ?> value="tb_visitorlog_ip">Tb Visitorlog Ip</option>
                            <option <?= $this->input->get('f') == 'tb_visitorlog_client' ? 'selected' :''; ?> value="tb_visitorlog_client">Tb Visitorlog Client</option>
                            <option <?= $this->input->get('f') == 'tb_visitorlog_times' ? 'selected' :''; ?> value="tb_visitorlog_times">Tb Visitorlog Times</option>
                            <option <?= $this->input->get('f') == 'tb_visitorlog_lastvisit' ? 'selected' :''; ?> value="tb_visitorlog_lastvisit">Tb Visitorlog Lastvisit</option>
                           </select>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <button type="submit" class="btn btn-flat" name="sbtn" id="sbtn" value="Apply" title="<?= cclang('filter_search'); ?>">
                           Filter
                           </button>
                        </div>
                        <div class="col-sm-1 padd-left-0 ">
                           <a class="btn btn-default btn-flat" name="reset" id="reset" value="Apply" href="<?= base_url('administrator/tb_visitorlog');?>" title="<?= cclang('reset_filter'); ?>">
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
                                                    <th data-field="tb_visitorlog_date"data-sort="1" data-primary-key="0"> <?= cclang('tb_visitorlog_date') ?></th>
                           <th data-field="tb_visitorlog_ip"data-sort="1" data-primary-key="0"> <?= cclang('tb_visitorlog_ip') ?></th>
                           <th data-field="tb_visitorlog_client"data-sort="1" data-primary-key="0"> <?= cclang('tb_visitorlog_client') ?></th>
                           <th data-field="tb_visitorlog_times"data-sort="1" data-primary-key="0"> <?= cclang('tb_visitorlog_times') ?></th>
                           <th data-field="tb_visitorlog_lastvisit"data-sort="1" data-primary-key="0"> <?= cclang('tb_visitorlog_lastvisit') ?></th>
                           <th>Action</th>                        </tr>
                     </thead>
                     <tbody id="tbody_tb_visitorlog">
                     <?php foreach($tb_visitorlogs as $tb_visitorlog): ?>
                        <tr>
                                                       <td width="5">
                              <input type="checkbox" class="flat-red check" name="id[]" value="<?= $tb_visitorlog->id; ?>">
                           </td>
                                                       
                           <td><span class="list_group-tb_visitorlog_date"><?= _ent($tb_visitorlog->tb_visitorlog_date); ?></span></td> 
                           <td><span class="list_group-tb_visitorlog_ip"><?= _ent($tb_visitorlog->tb_visitorlog_ip); ?></span></td> 
                           <td><span class="list_group-tb_visitorlog_client"><?= _ent($tb_visitorlog->tb_visitorlog_client); ?></span></td> 
                           <td><span class="list_group-tb_visitorlog_times"><?= _ent($tb_visitorlog->tb_visitorlog_times); ?></span></td> 
                           <td><span class="list_group-tb_visitorlog_lastvisit"><?= _ent($tb_visitorlog->tb_visitorlog_lastvisit); ?></span></td> 
                           <td width="200">
                            
                                                              <?php is_allowed('tb_visitorlog_view', function() use ($tb_visitorlog){?>
                                                              <a href="<?= site_url('administrator/tb_visitorlog/view/' . $tb_visitorlog->id); ?>" class="label-default"><i class="fa fa-newspaper-o"></i> <?= cclang('view_button'); ?>
                              <?php }) ?>
                              <?php is_allowed('tb_visitorlog_update', function() use ($tb_visitorlog){?>
                              <a href="<?= site_url('administrator/tb_visitorlog/edit/' . $tb_visitorlog->id); ?>" class="label-default"><i class="fa fa-edit "></i> <?= cclang('update_button'); ?></a>
                              <?php }) ?>
                              <?php is_allowed('tb_visitorlog_delete', function() use ($tb_visitorlog){?>
                              <a href="javascript:void(0);" data-href="<?= site_url('administrator/tb_visitorlog/delete/' . $tb_visitorlog->id); ?>" class="label-default remove-data"><i class="fa fa-close"></i> <?= cclang('remove_button'); ?></a>
                               <?php }) ?>

                           </td>                        </tr>
                      <?php endforeach; ?>
                      <?php if ($tb_visitorlog_counts == 0) :?>
                         <tr>
                           <td colspan="100">
                           Tb Visitorlog data is not available
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
      var serialize_bulk = $('#form_tb_visitorlog').serialize();

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
               document.location.href = BASE_URL + '/administrator/tb_visitorlog/delete?' + serialize_bulk;      
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
    initSortable('tb_visitorlog', $('table.dataTable'));
  }); /*end doc ready*/
</script>