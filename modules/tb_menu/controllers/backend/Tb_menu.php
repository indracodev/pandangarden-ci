<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Menu Controller
*| --------------------------------------------------------------------------
*| Tb Menu site
*|
*/
class Tb_menu extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_menu');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Menus
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_menu_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_menus'] = $this->model_tb_menu->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_menu_counts'] = $this->model_tb_menu->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_menu/index/',
			'total_rows'   => $this->data['tb_menu_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Menu List');
		$this->render('backend/standart/administrator/tb_menu/tb_menu_list', $this->data);
	}
	
	/**
	* Add new tb_menus
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_menu_add');

		$this->template->title('Tb Menu New');
		$this->render('backend/standart/administrator/tb_menu/tb_menu_add', $this->data);
	}

	/**
	* Add New Tb Menus
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_menu_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('menuName', 'MenuName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('categoryId', 'CategoryId', 'trim|required|max_length[20]');
		

		$this->form_validation->set_rules('goFood', 'GoFood', 'trim|required');
		

		$this->form_validation->set_rules('grabFood', 'GrabFood', 'trim|required');
		

		$this->form_validation->set_rules('whatsapp', 'Whatsapp', 'trim|required');
		

		$this->form_validation->set_rules('menuDesc', 'MenuDesc', 'trim|required');
		

		$this->form_validation->set_rules('menuPrice', 'MenuPrice', 'trim|required|max_length[6]');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'menuId' => $this->input->post('menuId'),
				'menuName' => $this->input->post('menuName'),
				'categoryId' => $this->input->post('categoryId'),
				'goFood' => $this->input->post('goFood'),
				'grabFood' => $this->input->post('grabFood'),
				'whatsapp' => $this->input->post('whatsapp'),
				'menuDesc' => $this->input->post('menuDesc'),
				'menuPrice' => $this->input->post('menuPrice'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_menu = $id = $this->model_tb_menu->store($save_data);
            

			if ($save_tb_menu) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_menu;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_menu/edit/' . $save_tb_menu, 'Edit Tb Menu'),
						anchor('administrator/tb_menu', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_menu/edit/' . $save_tb_menu, 'Edit Tb Menu')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_menu');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_menu');
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
	* Update view Tb Menus
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_menu_update');

		$this->data['tb_menu'] = $this->model_tb_menu->find($id);

		$this->template->title('Tb Menu Update');
		$this->render('backend/standart/administrator/tb_menu/tb_menu_update', $this->data);
	}

	/**
	* Update Tb Menus
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_menu_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('menuName', 'MenuName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('categoryId', 'CategoryId', 'trim|required|max_length[20]');
		

		$this->form_validation->set_rules('goFood', 'GoFood', 'trim|required');
		

		$this->form_validation->set_rules('grabFood', 'GrabFood', 'trim|required');
		

		$this->form_validation->set_rules('whatsapp', 'Whatsapp', 'trim|required');
		

		$this->form_validation->set_rules('menuDesc', 'MenuDesc', 'trim|required');
		

		$this->form_validation->set_rules('menuPrice', 'MenuPrice', 'trim|required|max_length[6]');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'menuId' => $this->input->post('menuId'),
				'menuName' => $this->input->post('menuName'),
				'categoryId' => $this->input->post('categoryId'),
				'goFood' => $this->input->post('goFood'),
				'grabFood' => $this->input->post('grabFood'),
				'whatsapp' => $this->input->post('whatsapp'),
				'menuDesc' => $this->input->post('menuDesc'),
				'menuPrice' => $this->input->post('menuPrice'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_menu = $this->model_tb_menu->change($id, $save_data);

			if ($save_tb_menu) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_menu', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_menu');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_menu');
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
	* delete Tb Menus
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_menu_delete');

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
            set_message(cclang('has_been_deleted', 'tb_menu'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_menu'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Menus
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_menu_view');

		$this->data['tb_menu'] = $this->model_tb_menu->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Menu Detail');
		$this->render('backend/standart/administrator/tb_menu/tb_menu_view', $this->data);
	}
	
	/**
	* delete Tb Menus
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_menu = $this->model_tb_menu->find($id);

		
		
		return $this->model_tb_menu->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_menu_export');

		$this->model_tb_menu->export(
			'tb_menu', 
			'tb_menu',
			$this->model_tb_menu->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_menu_export');

		$this->model_tb_menu->pdf('tb_menu', 'tb_menu');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_menu_export');

		$table = $title = 'tb_menu';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_menu->find($id);
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


/* End of file tb_menu.php */
/* Location: ./application/controllers/administrator/Tb Menu.php */