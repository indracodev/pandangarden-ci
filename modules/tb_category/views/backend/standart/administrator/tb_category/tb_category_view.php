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
      Tb Category      <small><?= cclang('detail', ['Tb Category']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_category'); ?>">Tb Category</a></li>
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
                     <h3 class="widget-user-username">Tb Category</h3>
                     <h5 class="widget-user-desc">Detail Tb Category</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_category" id="form_tb_category" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_category->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CategoryId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-categoryId"><?= _ent($tb_category->categoryId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CategoryName </label>

                        <div class="col-sm-8">
                        <span class="detail_group-categoryName"><?= _ent($tb_category->categoryName); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">MenuId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-menuId"><?= _ent($tb_category->menuId); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_category_update', function() use ($tb_category){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_category (Ctrl+e)" href="<?= site_url('administrator/tb_category/edit/'.$tb_category->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Category']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_category/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Category']); ?></a>
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