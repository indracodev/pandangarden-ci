<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Visitorlog Controller
*| --------------------------------------------------------------------------
*| Tb Visitorlog site
*|
*/
class Tb_visitorlog extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_visitorlog');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Visitorlogs
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_visitorlog_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_visitorlogs'] = $this->model_tb_visitorlog->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_visitorlog_counts'] = $this->model_tb_visitorlog->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_visitorlog/index/',
			'total_rows'   => $this->data['tb_visitorlog_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Visitorlog List');
		$this->render('backend/standart/administrator/tb_visitorlog/tb_visitorlog_list', $this->data);
	}
	
	/**
	* Add new tb_visitorlogs
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_visitorlog_add');

		$this->template->title('Tb Visitorlog New');
		$this->render('backend/standart/administrator/tb_visitorlog/tb_visitorlog_add', $this->data);
	}

	/**
	* Add New Tb Visitorlogs
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_visitorlog_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('tb_visitorlog_date', 'Tb Visitorlog Date', 'trim|required');
		

		$this->form_validation->set_rules('tb_visitorlog_ip', 'Tb Visitorlog Ip', 'trim|required|max_length[20]');
		

		$this->form_validation->set_rules('tb_visitorlog_client', 'Tb Visitorlog Client', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('tb_visitorlog_times', 'Tb Visitorlog Times', 'trim|required|max_length[11]');
		

		$this->form_validation->set_rules('tb_visitorlog_lastvisit', 'Tb Visitorlog Lastvisit', 'trim|required');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'tb_visitorlog_date' => $this->input->post('tb_visitorlog_date'),
				'tb_visitorlog_ip' => $this->input->post('tb_visitorlog_ip'),
				'tb_visitorlog_client' => $this->input->post('tb_visitorlog_client'),
				'tb_visitorlog_times' => $this->input->post('tb_visitorlog_times'),
				'tb_visitorlog_lastvisit' => $this->input->post('tb_visitorlog_lastvisit'),
			];

			
			



			
			
			$save_tb_visitorlog = $id = $this->model_tb_visitorlog->store($save_data);
            

			if ($save_tb_visitorlog) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_visitorlog;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_visitorlog/edit/' . $save_tb_visitorlog, 'Edit Tb Visitorlog'),
						anchor('administrator/tb_visitorlog', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_visitorlog/edit/' . $save_tb_visitorlog, 'Edit Tb Visitorlog')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_visitorlog');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_visitorlog');
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
	* Update view Tb Visitorlogs
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_visitorlog_update');

		$this->data['tb_visitorlog'] = $this->model_tb_visitorlog->find($id);

		$this->template->title('Tb Visitorlog Update');
		$this->render('backend/standart/administrator/tb_visitorlog/tb_visitorlog_update', $this->data);
	}

	/**
	* Update Tb Visitorlogs
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_visitorlog_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('tb_visitorlog_date', 'Tb Visitorlog Date', 'trim|required');
		

		$this->form_validation->set_rules('tb_visitorlog_ip', 'Tb Visitorlog Ip', 'trim|required|max_length[20]');
		

		$this->form_validation->set_rules('tb_visitorlog_client', 'Tb Visitorlog Client', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('tb_visitorlog_times', 'Tb Visitorlog Times', 'trim|required|max_length[11]');
		

		$this->form_validation->set_rules('tb_visitorlog_lastvisit', 'Tb Visitorlog Lastvisit', 'trim|required');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'tb_visitorlog_date' => $this->input->post('tb_visitorlog_date'),
				'tb_visitorlog_ip' => $this->input->post('tb_visitorlog_ip'),
				'tb_visitorlog_client' => $this->input->post('tb_visitorlog_client'),
				'tb_visitorlog_times' => $this->input->post('tb_visitorlog_times'),
				'tb_visitorlog_lastvisit' => $this->input->post('tb_visitorlog_lastvisit'),
			];

			

			


			
			
			$save_tb_visitorlog = $this->model_tb_visitorlog->change($id, $save_data);

			if ($save_tb_visitorlog) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_visitorlog', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_visitorlog');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_visitorlog');
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
	* delete Tb Visitorlogs
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_visitorlog_delete');

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
            set_message(cclang('has_been_deleted', 'tb_visitorlog'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_visitorlog'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Visitorlogs
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_visitorlog_view');

		$this->data['tb_visitorlog'] = $this->model_tb_visitorlog->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Visitorlog Detail');
		$this->render('backend/standart/administrator/tb_visitorlog/tb_visitorlog_view', $this->data);
	}
	
	/**
	* delete Tb Visitorlogs
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_visitorlog = $this->model_tb_visitorlog->find($id);

		
		
		return $this->model_tb_visitorlog->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_visitorlog_export');

		$this->model_tb_visitorlog->export(
			'tb_visitorlog', 
			'tb_visitorlog',
			$this->model_tb_visitorlog->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_visitorlog_export');

		$this->model_tb_visitorlog->pdf('tb_visitorlog', 'tb_visitorlog');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_visitorlog_export');

		$table = $title = 'tb_visitorlog';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_visitorlog->find($id);
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


/* End of file tb_visitorlog.php */
/* Location: ./application/controllers/administrator/Tb Visitorlog.php */