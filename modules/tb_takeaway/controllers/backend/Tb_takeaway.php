<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Takeaway Controller
*| --------------------------------------------------------------------------
*| Tb Takeaway site
*|
*/
class Tb_takeaway extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_takeaway');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Takeaways
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_takeaway_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_takeaways'] = $this->model_tb_takeaway->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_takeaway_counts'] = $this->model_tb_takeaway->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_takeaway/index/',
			'total_rows'   => $this->data['tb_takeaway_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Takeaway List');
		$this->render('backend/standart/administrator/tb_takeaway/tb_takeaway_list', $this->data);
	}
	
	/**
	* Add new tb_takeaways
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_takeaway_add');

		$this->template->title('Tb Takeaway New');
		$this->render('backend/standart/administrator/tb_takeaway/tb_takeaway_add', $this->data);
	}

	/**
	* Add New Tb Takeaways
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_takeaway_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('takeawayId', 'TakeawayId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('takeawayName', 'TakeawayName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('takeawayPhone', 'TakeawayPhone', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('takeawayDate', 'TakeawayDate', 'trim|required');
		

		$this->form_validation->set_rules('takeawayTime', 'TakeawayTime', 'trim|required');
		

		$this->form_validation->set_rules('takeawayEmail', 'TakeawayEmail', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('orderId', 'OrderId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('orderFee', 'OrderFee', 'trim|required|max_length[8]');
		

		$this->form_validation->set_rules('takeawayPayment', 'TakeawayPayment', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('paymentStatus', 'PaymentStatus', 'trim|required|max_length[1]');
		

		$this->form_validation->set_rules('paymentDate', 'PaymentDate', 'trim|required');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'takeawayId' => $this->input->post('takeawayId'),
				'takeawayName' => $this->input->post('takeawayName'),
				'takeawayPhone' => $this->input->post('takeawayPhone'),
				'takeawayDate' => $this->input->post('takeawayDate'),
				'takeawayTime' => $this->input->post('takeawayTime'),
				'takeawayEmail' => $this->input->post('takeawayEmail'),
				'orderId' => $this->input->post('orderId'),
				'orderFee' => $this->input->post('orderFee'),
				'takeawayPayment' => $this->input->post('takeawayPayment'),
				'paymentStatus' => $this->input->post('paymentStatus'),
				'paymentDate' => $this->input->post('paymentDate'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_takeaway = $id = $this->model_tb_takeaway->store($save_data);
            

			if ($save_tb_takeaway) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_takeaway;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_takeaway/edit/' . $save_tb_takeaway, 'Edit Tb Takeaway'),
						anchor('administrator/tb_takeaway', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_takeaway/edit/' . $save_tb_takeaway, 'Edit Tb Takeaway')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_takeaway');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_takeaway');
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
	* Update view Tb Takeaways
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_takeaway_update');

		$this->data['tb_takeaway'] = $this->model_tb_takeaway->find($id);

		$this->template->title('Tb Takeaway Update');
		$this->render('backend/standart/administrator/tb_takeaway/tb_takeaway_update', $this->data);
	}

	/**
	* Update Tb Takeaways
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_takeaway_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('takeawayId', 'TakeawayId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('takeawayName', 'TakeawayName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('takeawayPhone', 'TakeawayPhone', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('takeawayDate', 'TakeawayDate', 'trim|required');
		

		$this->form_validation->set_rules('takeawayTime', 'TakeawayTime', 'trim|required');
		

		$this->form_validation->set_rules('takeawayEmail', 'TakeawayEmail', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('orderId', 'OrderId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('orderFee', 'OrderFee', 'trim|required|max_length[8]');
		

		$this->form_validation->set_rules('takeawayPayment', 'TakeawayPayment', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('paymentStatus', 'PaymentStatus', 'trim|required|max_length[1]');
		

		$this->form_validation->set_rules('paymentDate', 'PaymentDate', 'trim|required');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'takeawayId' => $this->input->post('takeawayId'),
				'takeawayName' => $this->input->post('takeawayName'),
				'takeawayPhone' => $this->input->post('takeawayPhone'),
				'takeawayDate' => $this->input->post('takeawayDate'),
				'takeawayTime' => $this->input->post('takeawayTime'),
				'takeawayEmail' => $this->input->post('takeawayEmail'),
				'orderId' => $this->input->post('orderId'),
				'orderFee' => $this->input->post('orderFee'),
				'takeawayPayment' => $this->input->post('takeawayPayment'),
				'paymentStatus' => $this->input->post('paymentStatus'),
				'paymentDate' => $this->input->post('paymentDate'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_takeaway = $this->model_tb_takeaway->change($id, $save_data);

			if ($save_tb_takeaway) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_takeaway', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_takeaway');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_takeaway');
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
	* delete Tb Takeaways
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_takeaway_delete');

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
            set_message(cclang('has_been_deleted', 'tb_takeaway'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_takeaway'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Takeaways
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_takeaway_view');

		$this->data['tb_takeaway'] = $this->model_tb_takeaway->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Takeaway Detail');
		$this->render('backend/standart/administrator/tb_takeaway/tb_takeaway_view', $this->data);
	}
	
	/**
	* delete Tb Takeaways
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_takeaway = $this->model_tb_takeaway->find($id);

		
		
		return $this->model_tb_takeaway->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_takeaway_export');

		$this->model_tb_takeaway->export(
			'tb_takeaway', 
			'tb_takeaway',
			$this->model_tb_takeaway->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_takeaway_export');

		$this->model_tb_takeaway->pdf('tb_takeaway', 'tb_takeaway');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_takeaway_export');

		$table = $title = 'tb_takeaway';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_takeaway->find($id);
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


/* End of file tb_takeaway.php */
/* Location: ./application/controllers/administrator/Tb Takeaway.php */