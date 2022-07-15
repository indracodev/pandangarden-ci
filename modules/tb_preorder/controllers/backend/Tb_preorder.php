<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Preorder Controller
*| --------------------------------------------------------------------------
*| Tb Preorder site
*|
*/
class Tb_preorder extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_preorder');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Preorders
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_preorder_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_preorders'] = $this->model_tb_preorder->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_preorder_counts'] = $this->model_tb_preorder->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_preorder/index/',
			'total_rows'   => $this->data['tb_preorder_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Preorder List');
		$this->render('backend/standart/administrator/tb_preorder/tb_preorder_list', $this->data);
	}
	
	/**
	* Add new tb_preorders
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_preorder_add');

		$this->template->title('Tb Preorder New');
		$this->render('backend/standart/administrator/tb_preorder/tb_preorder_add', $this->data);
	}

	/**
	* Add New Tb Preorders
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_preorder_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('preorderId', 'PreorderId', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('preorderStart', 'PreorderStart', 'trim|required');
		

		$this->form_validation->set_rules('preorderEnd', 'PreorderEnd', 'trim|required');
		

		$this->form_validation->set_rules('preorderStatus', 'PreorderStatus', 'trim|required|max_length[1]');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'preorderId' => $this->input->post('preorderId'),
				'menuId' => $this->input->post('menuId'),
				'preorderStart' => $this->input->post('preorderStart'),
				'preorderEnd' => $this->input->post('preorderEnd'),
				'preorderStatus' => $this->input->post('preorderStatus'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_preorder = $id = $this->model_tb_preorder->store($save_data);
            

			if ($save_tb_preorder) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_preorder;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_preorder/edit/' . $save_tb_preorder, 'Edit Tb Preorder'),
						anchor('administrator/tb_preorder', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_preorder/edit/' . $save_tb_preorder, 'Edit Tb Preorder')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_preorder');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_preorder');
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
	* Update view Tb Preorders
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_preorder_update');

		$this->data['tb_preorder'] = $this->model_tb_preorder->find($id);

		$this->template->title('Tb Preorder Update');
		$this->render('backend/standart/administrator/tb_preorder/tb_preorder_update', $this->data);
	}

	/**
	* Update Tb Preorders
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_preorder_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('preorderId', 'PreorderId', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('preorderStart', 'PreorderStart', 'trim|required');
		

		$this->form_validation->set_rules('preorderEnd', 'PreorderEnd', 'trim|required');
		

		$this->form_validation->set_rules('preorderStatus', 'PreorderStatus', 'trim|required|max_length[1]');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'preorderId' => $this->input->post('preorderId'),
				'menuId' => $this->input->post('menuId'),
				'preorderStart' => $this->input->post('preorderStart'),
				'preorderEnd' => $this->input->post('preorderEnd'),
				'preorderStatus' => $this->input->post('preorderStatus'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_preorder = $this->model_tb_preorder->change($id, $save_data);

			if ($save_tb_preorder) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_preorder', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_preorder');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_preorder');
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
	* delete Tb Preorders
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_preorder_delete');

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
            set_message(cclang('has_been_deleted', 'tb_preorder'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_preorder'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Preorders
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_preorder_view');

		$this->data['tb_preorder'] = $this->model_tb_preorder->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Preorder Detail');
		$this->render('backend/standart/administrator/tb_preorder/tb_preorder_view', $this->data);
	}
	
	/**
	* delete Tb Preorders
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_preorder = $this->model_tb_preorder->find($id);

		
		
		return $this->model_tb_preorder->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_preorder_export');

		$this->model_tb_preorder->export(
			'tb_preorder', 
			'tb_preorder',
			$this->model_tb_preorder->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_preorder_export');

		$this->model_tb_preorder->pdf('tb_preorder', 'tb_preorder');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_preorder_export');

		$table = $title = 'tb_preorder';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_preorder->find($id);
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


/* End of file tb_preorder.php */
/* Location: ./application/controllers/administrator/Tb Preorder.php */