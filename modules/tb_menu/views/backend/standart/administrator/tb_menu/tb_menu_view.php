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
      Tb Menu      <small><?= cclang('detail', ['Tb Menu']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_menu'); ?>">Tb Menu</a></li>
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
                     <h3 class="widget-user-username">Tb Menu</h3>
                     <h5 class="widget-user-desc">Detail Tb Menu</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_menu" id="form_tb_menu" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_menu->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">MenuId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-menuId"><?= _ent($tb_menu->menuId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">MenuName </label>

                        <div class="col-sm-8">
                        <span class="detail_group-menuName"><?= _ent($tb_menu->menuName); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">CategoryId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-categoryId"><?= _ent($tb_menu->categoryId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">GoFood </label>

                        <div class="col-sm-8">
                        <span class="detail_group-goFood"><?= _ent($tb_menu->goFood); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">GrabFood </label>

                        <div class="col-sm-8">
                        <span class="detail_group-grabFood"><?= _ent($tb_menu->grabFood); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Whatsapp </label>

                        <div class="col-sm-8">
                        <span class="detail_group-whatsapp"><?= _ent($tb_menu->whatsapp); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">MenuDesc </label>

                        <div class="col-sm-8">
                        <span class="detail_group-menuDesc"><?= _ent($tb_menu->menuDesc); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">MenuPrice </label>

                        <div class="col-sm-8">
                        <span class="detail_group-menuPrice"><?= _ent($tb_menu->menuPrice); ?></span>
                        </div>
                    </div>
                                        
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_menu_update', function() use ($tb_menu){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_menu (Ctrl+e)" href="<?= site_url('administrator/tb_menu/edit/'.$tb_menu->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Menu']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_menu/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Menu']); ?></a>
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