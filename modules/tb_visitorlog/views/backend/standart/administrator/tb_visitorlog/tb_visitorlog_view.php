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
      Tb Visitorlog      <small><?= cclang('detail', ['Tb Visitorlog']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_visitorlog'); ?>">Tb Visitorlog</a></li>
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
                     <h3 class="widget-user-username">Tb Visitorlog</h3>
                     <h5 class="widget-user-desc">Detail Tb Visitorlog</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_visitorlog" id="form_tb_visitorlog" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_visitorlog->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tb Visitorlog Date </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tb_visitorlog_date"><?= _ent($tb_visitorlog->tb_visitorlog_date); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tb Visitorlog Ip </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tb_visitorlog_ip"><?= _ent($tb_visitorlog->tb_visitorlog_ip); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tb Visitorlog Client </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tb_visitorlog_client"><?= _ent($tb_visitorlog->tb_visitorlog_client); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tb Visitorlog Times </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tb_visitorlog_times"><?= _ent($tb_visitorlog->tb_visitorlog_times); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tb Visitorlog Lastvisit </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tb_visitorlog_lastvisit"><?= _ent($tb_visitorlog->tb_visitorlog_lastvisit); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_visitorlog_update', function() use ($tb_visitorlog){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_visitorlog (Ctrl+e)" href="<?= site_url('administrator/tb_visitorlog/edit/'.$tb_visitorlog->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Visitorlog']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_visitorlog/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Visitorlog']); ?></a>
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