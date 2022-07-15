<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Gallery Controller
*| --------------------------------------------------------------------------
*| Tb Gallery site
*|
*/
class Tb_gallery extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_gallery');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Gallerys
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_gallery_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_gallerys'] = $this->model_tb_gallery->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_gallery_counts'] = $this->model_tb_gallery->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_gallery/index/',
			'total_rows'   => $this->data['tb_gallery_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Gallery List');
		$this->render('backend/standart/administrator/tb_gallery/tb_gallery_list', $this->data);
	}
	
	/**
	* Add new tb_gallerys
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_gallery_add');

		$this->template->title('Tb Gallery New');
		$this->render('backend/standart/administrator/tb_gallery/tb_gallery_add', $this->data);
	}

	/**
	* Add New Tb Gallerys
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_gallery_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('galleryId', 'GalleryId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('tb_gallery_galleryImg_name', 'GalleryImg', 'trim|required');
		

		$this->form_validation->set_rules('tb_gallery_galleryUrl_name', 'GalleryUrl', 'trim|required');
		

		

		if ($this->form_validation->run()) {
			$tb_gallery_galleryImg_uuid = $this->input->post('tb_gallery_galleryImg_uuid');
			$tb_gallery_galleryImg_name = $this->input->post('tb_gallery_galleryImg_name');
			$tb_gallery_galleryUrl_uuid = $this->input->post('tb_gallery_galleryUrl_uuid');
			$tb_gallery_galleryUrl_name = $this->input->post('tb_gallery_galleryUrl_name');
		
			$save_data = [
				'galleryId' => $this->input->post('galleryId'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			if (!is_dir(FCPATH . '/uploads/tb_gallery/')) {
				mkdir(FCPATH . '/uploads/tb_gallery/');
			}

			if (!empty($tb_gallery_galleryImg_name)) {
				$tb_gallery_galleryImg_name_copy = date('YmdHis') . '-' . $tb_gallery_galleryImg_name;

				rename(FCPATH . 'uploads/tmp/' . $tb_gallery_galleryImg_uuid . '/' . $tb_gallery_galleryImg_name, 
						FCPATH . 'uploads/tb_gallery/' . $tb_gallery_galleryImg_name_copy);

				if (!is_file(FCPATH . '/uploads/tb_gallery/' . $tb_gallery_galleryImg_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['galleryImg'] = $tb_gallery_galleryImg_name_copy;
			}
		
			if (!empty($tb_gallery_galleryUrl_name)) {
				$tb_gallery_galleryUrl_name_copy = date('YmdHis') . '-' . $tb_gallery_galleryUrl_name;

				rename(FCPATH . 'uploads/tmp/' . $tb_gallery_galleryUrl_uuid . '/' . $tb_gallery_galleryUrl_name, 
						FCPATH . 'uploads/tb_gallery/' . $tb_gallery_galleryUrl_name_copy);

				if (!is_file(FCPATH . '/uploads/tb_gallery/' . $tb_gallery_galleryUrl_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['galleryUrl'] = $tb_gallery_galleryUrl_name_copy;
			}
		
			
			$save_tb_gallery = $id = $this->model_tb_gallery->store($save_data);
            

			if ($save_tb_gallery) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_gallery;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_gallery/edit/' . $save_tb_gallery, 'Edit Tb Gallery'),
						anchor('administrator/tb_gallery', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_gallery/edit/' . $save_tb_gallery, 'Edit Tb Gallery')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_gallery');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_gallery');
				}
			}

		} else {
			$this->data['success'] = false;
			$this->data['message'] = 'Opss validation failed';
			$this->data['errors'] = $this->form_validation->error_array();
		}

		$this->response($this->data);
	}
	
		/**
	* Update view Tb Gallerys
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_gallery_update');

		$this->data['tb_gallery'] = $this->model_tb_gallery->find($id);

		$this->template->title('Tb Gallery Update');
		$this->render('backend/standart/administrator/tb_gallery/tb_gallery_update', $this->data);
	}

	/**
	* Update Tb Gallerys
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_gallery_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('galleryId', 'GalleryId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('tb_gallery_galleryImg_name', 'GalleryImg', 'trim|required');
		

		$this->form_validation->set_rules('tb_gallery_galleryUrl_name', 'GalleryUrl', 'trim|required');
		

		
		if ($this->form_validation->run()) {
			$tb_gallery_galleryImg_uuid = $this->input->post('tb_gallery_galleryImg_uuid');
			$tb_gallery_galleryImg_name = $this->input->post('tb_gallery_galleryImg_name');
			$tb_gallery_galleryUrl_uuid = $this->input->post('tb_gallery_galleryUrl_uuid');
			$tb_gallery_galleryUrl_name = $this->input->post('tb_gallery_galleryUrl_name');
		
			$save_data = [
				'galleryId' => $this->input->post('galleryId'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			if (!is_dir(FCPATH . '/uploads/tb_gallery/')) {
				mkdir(FCPATH . '/uploads/tb_gallery/');
			}

			if (!empty($tb_gallery_galleryImg_uuid)) {
				$tb_gallery_galleryImg_name_copy = date('YmdHis') . '-' . $tb_gallery_galleryImg_name;

				rename(FCPATH . 'uploads/tmp/' . $tb_gallery_galleryImg_uuid . '/' . $tb_gallery_galleryImg_name, 
						FCPATH . 'uploads/tb_gallery/' . $tb_gallery_galleryImg_name_copy);

				if (!is_file(FCPATH . '/uploads/tb_gallery/' . $tb_gallery_galleryImg_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['galleryImg'] = $tb_gallery_galleryImg_name_copy;
			}
		
			if (!empty($tb_gallery_galleryUrl_uuid)) {
				$tb_gallery_galleryUrl_name_copy = date('YmdHis') . '-' . $tb_gallery_galleryUrl_name;

				rename(FCPATH . 'uploads/tmp/' . $tb_gallery_galleryUrl_uuid . '/' . $tb_gallery_galleryUrl_name, 
						FCPATH . 'uploads/tb_gallery/' . $tb_gallery_galleryUrl_name_copy);

				if (!is_file(FCPATH . '/uploads/tb_gallery/' . $tb_gallery_galleryUrl_name_copy)) {
					echo json_encode([
						'success' => false,
						'message' => 'Error uploading file'
						]);
					exit;
				}

				$save_data['galleryUrl'] = $tb_gallery_galleryUrl_name_copy;
			}
		
			
			$save_tb_gallery = $this->model_tb_gallery->change($id, $save_data);

			if ($save_tb_gallery) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_gallery', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_gallery');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_gallery');
				}
			}
		} else {
			$this->data['success'] = false;
			$this->data['message'] = 'Opss validation failed';
			$this->data['errors'] = $this->form_validation->error_array();
		}

		$this->response($this->data);
	}
	
	/**
	* delete Tb Gallerys
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_gallery_delete');

		$this->load->helper('file');

		$arr_id = $this->input->get('id');
		$remove = false;

		if (!empty($id)) {
			$remove = $this->_remove($id);
		} elseif (count($arr_id) >0) {
			foreach ($arr_id as $id) {
				$remove = $this->_remove($id);
			}
		}

		if ($remove) {
            set_message(cclang('has_been_deleted', 'tb_gallery'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_gallery'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Gallerys
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_gallery_view');

		$this->data['tb_gallery'] = $this->model_tb_gallery->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Gallery Detail');
		$this->render('backend/standart/administrator/tb_gallery/tb_gallery_view', $this->data);
	}
	
	/**
	* delete Tb Gallerys
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_gallery = $this->model_tb_gallery->find($id);

		if (!empty($tb_gallery->galleryImg)) {
			$path = FCPATH . '/uploads/tb_gallery/' . $tb_gallery->galleryImg;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		if (!empty($tb_gallery->galleryUrl)) {
			$path = FCPATH . '/uploads/tb_gallery/' . $tb_gallery->galleryUrl;

			if (is_file($path)) {
				$delete_file = unlink($path);
			}
		}
		
		
		return $this->model_tb_gallery->remove($id);
	}
	
	/**
	* Upload Image Tb Gallery	* 
	* @return JSON
	*/
	public function upload_galleryImg_file()
	{
		if (!$this->is_allowed('tb_gallery_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'tb_gallery',
		]);
	}

	/**
	* Delete Image Tb Gallery	* 
	* @return JSON
	*/
	public function delete_galleryImg_file($uuid)
	{
		if (!$this->is_allowed('tb_gallery_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'galleryImg', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'tb_gallery',
            'primary_key'       => 'id',
            'upload_path'       => 'uploads/tb_gallery/'
        ]);
	}

	/**
	* Get Image Tb Gallery	* 
	* @return JSON
	*/
	public function get_galleryImg_file($id)
	{
		if (!$this->is_allowed('tb_gallery_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$tb_gallery = $this->model_tb_gallery->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'galleryImg', 
            'table_name'        => 'tb_gallery',
            'primary_key'       => 'id',
            'upload_path'       => 'uploads/tb_gallery/',
            'delete_endpoint'   => 'administrator/tb_gallery/delete_galleryImg_file'
        ]);
	}
	
	/**
	* Upload Image Tb Gallery	* 
	* @return JSON
	*/
	public function upload_galleryUrl_file()
	{
		if (!$this->is_allowed('tb_gallery_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		$uuid = $this->input->post('qquuid');

		echo $this->upload_file([
			'uuid' 		 	=> $uuid,
			'table_name' 	=> 'tb_gallery',
		]);
	}

	/**
	* Delete Image Tb Gallery	* 
	* @return JSON
	*/
	public function delete_galleryUrl_file($uuid)
	{
		if (!$this->is_allowed('tb_gallery_delete', false)) {
			echo json_encode([
				'success' => false,
				'error' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}

		echo $this->delete_file([
            'uuid'              => $uuid, 
            'delete_by'         => $this->input->get('by'), 
            'field_name'        => 'galleryUrl', 
            'upload_path_tmp'   => './uploads/tmp/',
            'table_name'        => 'tb_gallery',
            'primary_key'       => 'id',
            'upload_path'       => 'uploads/tb_gallery/'
        ]);
	}

	/**
	* Get Image Tb Gallery	* 
	* @return JSON
	*/
	public function get_galleryUrl_file($id)
	{
		if (!$this->is_allowed('tb_gallery_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => 'Image not loaded, you do not have permission to access'
				]);
			exit;
		}

		$tb_gallery = $this->model_tb_gallery->find($id);

		echo $this->get_file([
            'uuid'              => $id, 
            'delete_by'         => 'id', 
            'field_name'        => 'galleryUrl', 
            'table_name'        => 'tb_gallery',
            'primary_key'       => 'id',
            'upload_path'       => 'uploads/tb_gallery/',
            'delete_endpoint'   => 'administrator/tb_gallery/delete_galleryUrl_file'
        ]);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_gallery_export');

		$this->model_tb_gallery->export(
			'tb_gallery', 
			'tb_gallery',
			$this->model_tb_gallery->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_gallery_export');

		$this->model_tb_gallery->pdf('tb_gallery', 'tb_gallery');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_gallery_export');

		$table = $title = 'tb_gallery';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_gallery->find($id);
        $fields = $result->list_fields();

        $content = $this->pdf->loadHtmlPdf('core_template/pdf/pdf_single', [
            'data' => $data,
            'fields' => $fields,
            'title' => $title
        ], TRUE);

        $this->pdf->initialize($config);
        $this->pdf->pdf->SetDisplayMode('fullpage');
        $this->pdf->writeHTML($content);
        $this->pdf->Output($table.'.pdf', 'H');
	}

	
}


/* End of file tb_gallery.php */
/* Location: ./application/controllers/administrator/Tb Gallery.php */