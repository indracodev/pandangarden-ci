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
      Tb Visitlog Page      <small><?= cclang('detail', ['Tb Visitlog Page']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_visitlog_page'); ?>">Tb Visitlog Page</a></li>
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
                     <h3 class="widget-user-username">Tb Visitlog Page</h3>
                     <h5 class="widget-user-desc">Detail Tb Visitlog Page</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_visitlog_page" id="form_tb_visitlog_page" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_visitlog_page->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tb Visitlog Ip </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tb_visitlog_ip"><?= _ent($tb_visitlog_page->tb_visitlog_ip); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tb Visitlog Page Name </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tb_visitlog_page_name"><?= _ent($tb_visitlog_page->tb_visitlog_page_name); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Tb Visitlog Page Time </label>

                        <div class="col-sm-8">
                        <span class="detail_group-tb_visitlog_page_time"><?= _ent($tb_visitlog_page->tb_visitlog_page_time); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_visitlog_page_update', function() use ($tb_visitlog_page){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_visitlog_page (Ctrl+e)" href="<?= site_url('administrator/tb_visitlog_page/edit/'.$tb_visitlog_page->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Visitlog Page']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_visitlog_page/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Visitlog Page']); ?></a>
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