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
      Tb Gallery      <small><?= cclang('detail', ['Tb Gallery']); ?> </small>
   </h1>
   <ol class="breadcrumb">
      <li><a href="#"><i class="fa fa-dashboard"></i> Home</a></li>
      <li class=""><a  href="<?= site_url('administrator/tb_gallery'); ?>">Tb Gallery</a></li>
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
                     <h3 class="widget-user-username">Tb Gallery</h3>
                     <h5 class="widget-user-desc">Detail Tb Gallery</h5>
                     <hr>
                  </div>

                 
                  <div class="form-horizontal form-step" name="form_tb_gallery" id="form_tb_gallery" >
                  
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">Id </label>

                        <div class="col-sm-8">
                        <span class="detail_group-id"><?= _ent($tb_gallery->id); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label">GalleryId </label>

                        <div class="col-sm-8">
                        <span class="detail_group-galleryId"><?= _ent($tb_gallery->galleryId); ?></span>
                        </div>
                    </div>
                                        
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> GalleryImg </label>
                        <div class="col-sm-8">
                             <?php if (is_image($tb_gallery->galleryImg)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/tb_gallery/' . $tb_gallery->galleryImg; ?>">
                                <img src="<?= BASE_URL . 'uploads/tb_gallery/' . $tb_gallery->galleryImg; ?>" class="image-responsive" alt="image tb_gallery" title="galleryImg tb_gallery" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/tb_gallery/' . $tb_gallery->galleryImg; ?>">
                                 <img src="<?= get_icon_file($tb_gallery->galleryImg); ?>" class="image-responsive" alt="image tb_gallery" title="galleryImg <?= $tb_gallery->galleryImg; ?>" width="40px"> 
                               <?= $tb_gallery->galleryImg ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <div class="form-group ">
                        <label for="content" class="col-sm-2 control-label"> GalleryUrl </label>
                        <div class="col-sm-8">
                             <?php if (is_image($tb_gallery->galleryUrl)): ?>
                              <a class="fancybox" rel="group" href="<?= BASE_URL . 'uploads/tb_gallery/' . $tb_gallery->galleryUrl; ?>">
                                <img src="<?= BASE_URL . 'uploads/tb_gallery/' . $tb_gallery->galleryUrl; ?>" class="image-responsive" alt="image tb_gallery" title="galleryUrl tb_gallery" width="40px">
                              </a>
                              <?php else: ?>
                              <label>
                                <a href="<?= BASE_URL . 'administrator/file/download/tb_gallery/' . $tb_gallery->galleryUrl; ?>">
                                 <img src="<?= get_icon_file($tb_gallery->galleryUrl); ?>" class="image-responsive" alt="image tb_gallery" title="galleryUrl <?= $tb_gallery->galleryUrl; ?>" width="40px"> 
                               <?= $tb_gallery->galleryUrl ?>
                               </a>
                               </label>
                              <?php endif; ?>
                        </div>
                    </div>
                                      
                    <br>
                    <br>


                     
                         
                    <div class="view-nav">
                        <?php is_allowed('tb_gallery_update', function() use ($tb_gallery){?>
                        <a class="btn btn-flat btn-info btn_edit btn_action" id="btn_edit" data-stype='back' title="edit tb_gallery (Ctrl+e)" href="<?= site_url('administrator/tb_gallery/edit/'.$tb_gallery->id); ?>"><i class="fa fa-edit" ></i> <?= cclang('update', ['Tb Gallery']); ?> </a>
                        <?php }) ?>
                        <a class="btn btn-flat btn-default btn_action" id="btn_back" title="back (Ctrl+x)" href="<?= site_url('administrator/tb_gallery/'); ?>"><i class="fa fa-undo" ></i> <?= cclang('go_list_button', ['Tb Gallery']); ?></a>
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