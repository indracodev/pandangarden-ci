<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Customers Controller
*| --------------------------------------------------------------------------
*| Tb Customers site
*|
*/
class Tb_customers extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_customers');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Customerss
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_customers_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_customerss'] = $this->model_tb_customers->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_customers_counts'] = $this->model_tb_customers->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_customers/index/',
			'total_rows'   => $this->data['tb_customers_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Customers List');
		$this->render('backend/standart/administrator/tb_customers/tb_customers_list', $this->data);
	}
	
	/**
	* Add new tb_customerss
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_customers_add');

		$this->template->title('Tb Customers New');
		$this->render('backend/standart/administrator/tb_customers/tb_customers_add', $this->data);
	}

	/**
	* Add New Tb Customerss
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_customers_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('customerId', 'CustomerId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('customerName', 'CustomerName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('customerUsername', 'CustomerUsername', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('customerEmail', 'CustomerEmail', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('customerAddress', 'CustomerAddress', 'trim|required');
		

		$this->form_validation->set_rules('customerPhone', 'CustomerPhone', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('customerPassword', 'CustomerPassword', 'trim|required');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'customerId' => $this->input->post('customerId'),
				'customerName' => $this->input->post('customerName'),
				'customerUsername' => $this->input->post('customerUsername'),
				'customerEmail' => $this->input->post('customerEmail'),
				'customerAddress' => $this->input->post('customerAddress'),
				'customerPhone' => $this->input->post('customerPhone'),
				'customerPassword' => $this->input->post('customerPassword'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_customers = $id = $this->model_tb_customers->store($save_data);
            

			if ($save_tb_customers) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_customers;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_customers/edit/' . $save_tb_customers, 'Edit Tb Customers'),
						anchor('administrator/tb_customers', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_customers/edit/' . $save_tb_customers, 'Edit Tb Customers')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_customers');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_customers');
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
	* Update view Tb Customerss
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_customers_update');

		$this->data['tb_customers'] = $this->model_tb_customers->find($id);

		$this->template->title('Tb Customers Update');
		$this->render('backend/standart/administrator/tb_customers/tb_customers_update', $this->data);
	}

	/**
	* Update Tb Customerss
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_customers_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('customerId', 'CustomerId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('customerName', 'CustomerName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('customerUsername', 'CustomerUsername', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('customerEmail', 'CustomerEmail', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('customerAddress', 'CustomerAddress', 'trim|required');
		

		$this->form_validation->set_rules('customerPhone', 'CustomerPhone', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('customerPassword', 'CustomerPassword', 'trim|required');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'customerId' => $this->input->post('customerId'),
				'customerName' => $this->input->post('customerName'),
				'customerUsername' => $this->input->post('customerUsername'),
				'customerEmail' => $this->input->post('customerEmail'),
				'customerAddress' => $this->input->post('customerAddress'),
				'customerPhone' => $this->input->post('customerPhone'),
				'customerPassword' => $this->input->post('customerPassword'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_customers = $this->model_tb_customers->change($id, $save_data);

			if ($save_tb_customers) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_customers', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_customers');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_customers');
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
	* delete Tb Customerss
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_customers_delete');

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
            set_message(cclang('has_been_deleted', 'tb_customers'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_customers'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Customerss
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_customers_view');

		$this->data['tb_customers'] = $this->model_tb_customers->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Customers Detail');
		$this->render('backend/standart/administrator/tb_customers/tb_customers_view', $this->data);
	}
	
	/**
	* delete Tb Customerss
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_customers = $this->model_tb_customers->find($id);

		
		
		return $this->model_tb_customers->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_customers_export');

		$this->model_tb_customers->export(
			'tb_customers', 
			'tb_customers',
			$this->model_tb_customers->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_customers_export');

		$this->model_tb_customers->pdf('tb_customers', 'tb_customers');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_customers_export');

		$table = $title = 'tb_customers';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_customers->find($id);
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


/* End of file tb_customers.php */
/* Location: ./application/controllers/administrator/Tb Customers.php */