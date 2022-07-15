<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Order Controller
*| --------------------------------------------------------------------------
*| Tb Order site
*|
*/
class Tb_order extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_order');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Orders
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_order_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_orders'] = $this->model_tb_order->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_order_counts'] = $this->model_tb_order->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_order/index/',
			'total_rows'   => $this->data['tb_order_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Order List');
		$this->render('backend/standart/administrator/tb_order/tb_order_list', $this->data);
	}
	
	/**
	* Add new tb_orders
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_order_add');

		$this->template->title('Tb Order New');
		$this->render('backend/standart/administrator/tb_order/tb_order_add', $this->data);
	}

	/**
	* Add New Tb Orders
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_order_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('orderId', 'OrderId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('orderType', 'OrderType', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('customerId', 'CustomerId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('menuQty', 'MenuQty', 'trim|required|max_length[2]');
		

		$this->form_validation->set_rules('menuPrice', 'MenuPrice', 'trim|required|max_length[7]');
		

		$this->form_validation->set_rules('orderSubtotal', 'OrderSubtotal', 'trim|required|max_length[11]');
		

		$this->form_validation->set_rules('orderNote', 'OrderNote', 'trim|required|max_length[256]');
		

		$this->form_validation->set_rules('orderStatus', 'OrderStatus', 'trim|required|max_length[1]');
		

		$this->form_validation->set_rules('orderExpired', 'OrderExpired', 'trim|required');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'orderId' => $this->input->post('orderId'),
				'orderType' => $this->input->post('orderType'),
				'customerId' => $this->input->post('customerId'),
				'menuId' => $this->input->post('menuId'),
				'menuQty' => $this->input->post('menuQty'),
				'menuPrice' => $this->input->post('menuPrice'),
				'orderSubtotal' => $this->input->post('orderSubtotal'),
				'orderNote' => $this->input->post('orderNote'),
				'orderStatus' => $this->input->post('orderStatus'),
				'orderExpired' => $this->input->post('orderExpired'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_order = $id = $this->model_tb_order->store($save_data);
            

			if ($save_tb_order) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_order;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_order/edit/' . $save_tb_order, 'Edit Tb Order'),
						anchor('administrator/tb_order', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_order/edit/' . $save_tb_order, 'Edit Tb Order')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_order');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_order');
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
	* Update view Tb Orders
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_order_update');

		$this->data['tb_order'] = $this->model_tb_order->find($id);

		$this->template->title('Tb Order Update');
		$this->render('backend/standart/administrator/tb_order/tb_order_update', $this->data);
	}

	/**
	* Update Tb Orders
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_order_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('orderId', 'OrderId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('orderType', 'OrderType', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('customerId', 'CustomerId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('menuQty', 'MenuQty', 'trim|required|max_length[2]');
		

		$this->form_validation->set_rules('menuPrice', 'MenuPrice', 'trim|required|max_length[7]');
		

		$this->form_validation->set_rules('orderSubtotal', 'OrderSubtotal', 'trim|required|max_length[11]');
		

		$this->form_validation->set_rules('orderNote', 'OrderNote', 'trim|required|max_length[256]');
		

		$this->form_validation->set_rules('orderStatus', 'OrderStatus', 'trim|required|max_length[1]');
		

		$this->form_validation->set_rules('orderExpired', 'OrderExpired', 'trim|required');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'orderId' => $this->input->post('orderId'),
				'orderType' => $this->input->post('orderType'),
				'customerId' => $this->input->post('customerId'),
				'menuId' => $this->input->post('menuId'),
				'menuQty' => $this->input->post('menuQty'),
				'menuPrice' => $this->input->post('menuPrice'),
				'orderSubtotal' => $this->input->post('orderSubtotal'),
				'orderNote' => $this->input->post('orderNote'),
				'orderStatus' => $this->input->post('orderStatus'),
				'orderExpired' => $this->input->post('orderExpired'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_order = $this->model_tb_order->change($id, $save_data);

			if ($save_tb_order) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_order', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_order');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_order');
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
	* delete Tb Orders
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_order_delete');

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
            set_message(cclang('has_been_deleted', 'tb_order'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_order'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Orders
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_order_view');

		$this->data['tb_order'] = $this->model_tb_order->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Order Detail');
		$this->render('backend/standart/administrator/tb_order/tb_order_view', $this->data);
	}
	
	/**
	* delete Tb Orders
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_order = $this->model_tb_order->find($id);

		
		
		return $this->model_tb_order->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_order_export');

		$this->model_tb_order->export(
			'tb_order', 
			'tb_order',
			$this->model_tb_order->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_order_export');

		$this->model_tb_order->pdf('tb_order', 'tb_order');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_order_export');

		$table = $title = 'tb_order';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_order->find($id);
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


/* End of file tb_order.php */
/* Location: ./application/controllers/administrator/Tb Order.php */