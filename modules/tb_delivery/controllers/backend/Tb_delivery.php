<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Delivery Controller
*| --------------------------------------------------------------------------
*| Tb Delivery site
*|
*/
class Tb_delivery extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_delivery');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Deliverys
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_delivery_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_deliverys'] = $this->model_tb_delivery->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_delivery_counts'] = $this->model_tb_delivery->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_delivery/index/',
			'total_rows'   => $this->data['tb_delivery_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Delivery List');
		$this->render('backend/standart/administrator/tb_delivery/tb_delivery_list', $this->data);
	}
	
	/**
	* Add new tb_deliverys
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_delivery_add');

		$this->template->title('Tb Delivery New');
		$this->render('backend/standart/administrator/tb_delivery/tb_delivery_add', $this->data);
	}

	/**
	* Add New Tb Deliverys
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_delivery_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('deliveryId', 'DeliveryId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('deliveryName', 'DeliveryName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('deliveryPhone', 'DeliveryPhone', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('deliveryDate', 'DeliveryDate', 'trim|required');
		

		$this->form_validation->set_rules('deliveryTime', 'DeliveryTime', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('deliveryAddress', 'DeliveryAddress', 'trim|required|max_length[256]');
		

		$this->form_validation->set_rules('deliveryCoord', 'DeliveryCoord', 'trim|required|max_length[256]');
		

		$this->form_validation->set_rules('deliveryEmail', 'DeliveryEmail', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('deliveryNote', 'DeliveryNote', 'trim|required|max_length[256]');
		

		$this->form_validation->set_rules('deliveryFee', 'DeliveryFee', 'trim|required|max_length[6]');
		

		$this->form_validation->set_rules('orderId', 'OrderId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('orderFee', 'OrderFee', 'trim|required|max_length[8]');
		

		$this->form_validation->set_rules('deliveryPayment', 'DeliveryPayment', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('paymentStatus', 'PaymentStatus', 'trim|required|max_length[1]');
		

		$this->form_validation->set_rules('paymentDate', 'PaymentDate', 'trim|required');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'deliveryId' => $this->input->post('deliveryId'),
				'deliveryName' => $this->input->post('deliveryName'),
				'deliveryPhone' => $this->input->post('deliveryPhone'),
				'deliveryDate' => $this->input->post('deliveryDate'),
				'deliveryTime' => $this->input->post('deliveryTime'),
				'deliveryAddress' => $this->input->post('deliveryAddress'),
				'deliveryCoord' => $this->input->post('deliveryCoord'),
				'deliveryEmail' => $this->input->post('deliveryEmail'),
				'deliveryNote' => $this->input->post('deliveryNote'),
				'deliveryFee' => $this->input->post('deliveryFee'),
				'orderId' => $this->input->post('orderId'),
				'orderFee' => $this->input->post('orderFee'),
				'deliveryPayment' => $this->input->post('deliveryPayment'),
				'paymentStatus' => $this->input->post('paymentStatus'),
				'paymentDate' => $this->input->post('paymentDate'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_delivery = $id = $this->model_tb_delivery->store($save_data);
            

			if ($save_tb_delivery) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_delivery;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_delivery/edit/' . $save_tb_delivery, 'Edit Tb Delivery'),
						anchor('administrator/tb_delivery', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_delivery/edit/' . $save_tb_delivery, 'Edit Tb Delivery')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_delivery');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_delivery');
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
	* Update view Tb Deliverys
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_delivery_update');

		$this->data['tb_delivery'] = $this->model_tb_delivery->find($id);

		$this->template->title('Tb Delivery Update');
		$this->render('backend/standart/administrator/tb_delivery/tb_delivery_update', $this->data);
	}

	/**
	* Update Tb Deliverys
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_delivery_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('deliveryId', 'DeliveryId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('deliveryName', 'DeliveryName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('deliveryPhone', 'DeliveryPhone', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('deliveryDate', 'DeliveryDate', 'trim|required');
		

		$this->form_validation->set_rules('deliveryTime', 'DeliveryTime', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('deliveryAddress', 'DeliveryAddress', 'trim|required|max_length[256]');
		

		$this->form_validation->set_rules('deliveryCoord', 'DeliveryCoord', 'trim|required|max_length[256]');
		

		$this->form_validation->set_rules('deliveryEmail', 'DeliveryEmail', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('deliveryNote', 'DeliveryNote', 'trim|required|max_length[256]');
		

		$this->form_validation->set_rules('deliveryFee', 'DeliveryFee', 'trim|required|max_length[6]');
		

		$this->form_validation->set_rules('orderId', 'OrderId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('orderFee', 'OrderFee', 'trim|required|max_length[8]');
		

		$this->form_validation->set_rules('deliveryPayment', 'DeliveryPayment', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('paymentStatus', 'PaymentStatus', 'trim|required|max_length[1]');
		

		$this->form_validation->set_rules('paymentDate', 'PaymentDate', 'trim|required');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'deliveryId' => $this->input->post('deliveryId'),
				'deliveryName' => $this->input->post('deliveryName'),
				'deliveryPhone' => $this->input->post('deliveryPhone'),
				'deliveryDate' => $this->input->post('deliveryDate'),
				'deliveryTime' => $this->input->post('deliveryTime'),
				'deliveryAddress' => $this->input->post('deliveryAddress'),
				'deliveryCoord' => $this->input->post('deliveryCoord'),
				'deliveryEmail' => $this->input->post('deliveryEmail'),
				'deliveryNote' => $this->input->post('deliveryNote'),
				'deliveryFee' => $this->input->post('deliveryFee'),
				'orderId' => $this->input->post('orderId'),
				'orderFee' => $this->input->post('orderFee'),
				'deliveryPayment' => $this->input->post('deliveryPayment'),
				'paymentStatus' => $this->input->post('paymentStatus'),
				'paymentDate' => $this->input->post('paymentDate'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_delivery = $this->model_tb_delivery->change($id, $save_data);

			if ($save_tb_delivery) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_delivery', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_delivery');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_delivery');
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
	* delete Tb Deliverys
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_delivery_delete');

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
            set_message(cclang('has_been_deleted', 'tb_delivery'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_delivery'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Deliverys
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_delivery_view');

		$this->data['tb_delivery'] = $this->model_tb_delivery->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Delivery Detail');
		$this->render('backend/standart/administrator/tb_delivery/tb_delivery_view', $this->data);
	}
	
	/**
	* delete Tb Deliverys
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_delivery = $this->model_tb_delivery->find($id);

		
		
		return $this->model_tb_delivery->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_delivery_export');

		$this->model_tb_delivery->export(
			'tb_delivery', 
			'tb_delivery',
			$this->model_tb_delivery->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_delivery_export');

		$this->model_tb_delivery->pdf('tb_delivery', 'tb_delivery');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_delivery_export');

		$table = $title = 'tb_delivery';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_delivery->find($id);
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


/* End of file tb_delivery.php */
/* Location: ./application/controllers/administrator/Tb Delivery.php */