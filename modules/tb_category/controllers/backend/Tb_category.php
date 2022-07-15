<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Category Controller
*| --------------------------------------------------------------------------
*| Tb Category site
*|
*/
class Tb_category extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_category');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Categorys
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_category_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_categorys'] = $this->model_tb_category->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_category_counts'] = $this->model_tb_category->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_category/index/',
			'total_rows'   => $this->data['tb_category_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Category List');
		$this->render('backend/standart/administrator/tb_category/tb_category_list', $this->data);
	}
	
	/**
	* Add new tb_categorys
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_category_add');

		$this->template->title('Tb Category New');
		$this->render('backend/standart/administrator/tb_category/tb_category_add', $this->data);
	}

	/**
	* Add New Tb Categorys
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_category_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('categoryId', 'CategoryId', 'trim|required|max_length[2]');
		

		$this->form_validation->set_rules('categoryName', 'CategoryName', 'trim|required|max_length[30]');
		

		$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'categoryId' => $this->input->post('categoryId'),
				'categoryName' => $this->input->post('categoryName'),
				'menuId' => $this->input->post('menuId'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_category = $id = $this->model_tb_category->store($save_data);
            

			if ($save_tb_category) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_category;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_category/edit/' . $save_tb_category, 'Edit Tb Category'),
						anchor('administrator/tb_category', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_category/edit/' . $save_tb_category, 'Edit Tb Category')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_category');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_category');
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
	* Update view Tb Categorys
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_category_update');

		$this->data['tb_category'] = $this->model_tb_category->find($id);

		$this->template->title('Tb Category Update');
		$this->render('backend/standart/administrator/tb_category/tb_category_update', $this->data);
	}

	/**
	* Update Tb Categorys
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_category_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('categoryId', 'CategoryId', 'trim|required|max_length[2]');
		

		$this->form_validation->set_rules('categoryName', 'CategoryName', 'trim|required|max_length[30]');
		

		$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'categoryId' => $this->input->post('categoryId'),
				'categoryName' => $this->input->post('categoryName'),
				'menuId' => $this->input->post('menuId'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_category = $this->model_tb_category->change($id, $save_data);

			if ($save_tb_category) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_category', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_category');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_category');
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
	* delete Tb Categorys
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_category_delete');

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
            set_message(cclang('has_been_deleted', 'tb_category'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_category'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Categorys
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_category_view');

		$this->data['tb_category'] = $this->model_tb_category->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Category Detail');
		$this->render('backend/standart/administrator/tb_category/tb_category_view', $this->data);
	}
	
	/**
	* delete Tb Categorys
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_category = $this->model_tb_category->find($id);

		
		
		return $this->model_tb_category->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_category_export');

		$this->model_tb_category->export(
			'tb_category', 
			'tb_category',
			$this->model_tb_category->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_category_export');

		$this->model_tb_category->pdf('tb_category', 'tb_category');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_category_export');

		$table = $title = 'tb_category';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_category->find($id);
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


/* End of file tb_category.php */
/* Location: ./application/controllers/administrator/Tb Category.php */