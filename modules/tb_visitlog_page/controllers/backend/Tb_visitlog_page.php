<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Visitlog Page Controller
*| --------------------------------------------------------------------------
*| Tb Visitlog Page site
*|
*/
class Tb_visitlog_page extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_visitlog_page');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Visitlog Pages
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_visitlog_page_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_visitlog_pages'] = $this->model_tb_visitlog_page->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_visitlog_page_counts'] = $this->model_tb_visitlog_page->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_visitlog_page/index/',
			'total_rows'   => $this->data['tb_visitlog_page_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Visitlog Page List');
		$this->render('backend/standart/administrator/tb_visitlog_page/tb_visitlog_page_list', $this->data);
	}
	
	/**
	* Add new tb_visitlog_pages
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_visitlog_page_add');

		$this->template->title('Tb Visitlog Page New');
		$this->render('backend/standart/administrator/tb_visitlog_page/tb_visitlog_page_add', $this->data);
	}

	/**
	* Add New Tb Visitlog Pages
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_visitlog_page_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('tb_visitlog_ip', 'Tb Visitlog Ip', 'trim|required|max_length[20]');
		

		$this->form_validation->set_rules('tb_visitlog_page_name', 'Tb Visitlog Page Name', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('tb_visitlog_page_time', 'Tb Visitlog Page Time', 'trim|required');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'tb_visitlog_ip' => $this->input->post('tb_visitlog_ip'),
				'tb_visitlog_page_name' => $this->input->post('tb_visitlog_page_name'),
				'tb_visitlog_page_time' => $this->input->post('tb_visitlog_page_time'),
			];

			
			



			
			
			$save_tb_visitlog_page = $id = $this->model_tb_visitlog_page->store($save_data);
            

			if ($save_tb_visitlog_page) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_visitlog_page;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_visitlog_page/edit/' . $save_tb_visitlog_page, 'Edit Tb Visitlog Page'),
						anchor('administrator/tb_visitlog_page', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_visitlog_page/edit/' . $save_tb_visitlog_page, 'Edit Tb Visitlog Page')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_visitlog_page');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_visitlog_page');
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
	* Update view Tb Visitlog Pages
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_visitlog_page_update');

		$this->data['tb_visitlog_page'] = $this->model_tb_visitlog_page->find($id);

		$this->template->title('Tb Visitlog Page Update');
		$this->render('backend/standart/administrator/tb_visitlog_page/tb_visitlog_page_update', $this->data);
	}

	/**
	* Update Tb Visitlog Pages
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_visitlog_page_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('tb_visitlog_ip', 'Tb Visitlog Ip', 'trim|required|max_length[20]');
		

		$this->form_validation->set_rules('tb_visitlog_page_name', 'Tb Visitlog Page Name', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('tb_visitlog_page_time', 'Tb Visitlog Page Time', 'trim|required');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'tb_visitlog_ip' => $this->input->post('tb_visitlog_ip'),
				'tb_visitlog_page_name' => $this->input->post('tb_visitlog_page_name'),
				'tb_visitlog_page_time' => $this->input->post('tb_visitlog_page_time'),
			];

			

			


			
			
			$save_tb_visitlog_page = $this->model_tb_visitlog_page->change($id, $save_data);

			if ($save_tb_visitlog_page) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_visitlog_page', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_visitlog_page');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_visitlog_page');
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
	* delete Tb Visitlog Pages
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_visitlog_page_delete');

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
            set_message(cclang('has_been_deleted', 'tb_visitlog_page'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_visitlog_page'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Visitlog Pages
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_visitlog_page_view');

		$this->data['tb_visitlog_page'] = $this->model_tb_visitlog_page->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Visitlog Page Detail');
		$this->render('backend/standart/administrator/tb_visitlog_page/tb_visitlog_page_view', $this->data);
	}
	
	/**
	* delete Tb Visitlog Pages
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_visitlog_page = $this->model_tb_visitlog_page->find($id);

		
		
		return $this->model_tb_visitlog_page->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_visitlog_page_export');

		$this->model_tb_visitlog_page->export(
			'tb_visitlog_page', 
			'tb_visitlog_page',
			$this->model_tb_visitlog_page->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_visitlog_page_export');

		$this->model_tb_visitlog_page->pdf('tb_visitlog_page', 'tb_visitlog_page');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_visitlog_page_export');

		$table = $title = 'tb_visitlog_page';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_visitlog_page->find($id);
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


/* End of file tb_visitlog_page.php */
/* Location: ./application/controllers/administrator/Tb Visitlog Page.php */