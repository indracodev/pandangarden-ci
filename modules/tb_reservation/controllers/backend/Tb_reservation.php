<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Reservation Controller
*| --------------------------------------------------------------------------
*| Tb Reservation site
*|
*/
class Tb_reservation extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_reservation');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Reservations
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_reservation_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_reservations'] = $this->model_tb_reservation->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_reservation_counts'] = $this->model_tb_reservation->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_reservation/index/',
			'total_rows'   => $this->data['tb_reservation_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Reservation List');
		$this->render('backend/standart/administrator/tb_reservation/tb_reservation_list', $this->data);
	}
	
	/**
	* Add new tb_reservations
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_reservation_add');

		$this->template->title('Tb Reservation New');
		$this->render('backend/standart/administrator/tb_reservation/tb_reservation_add', $this->data);
	}

	/**
	* Add New Tb Reservations
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_reservation_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('reservationId', 'ReservationId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('reservationName', 'ReservationName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('reservationPhone', 'ReservationPhone', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('reservationDate', 'ReservationDate', 'trim|required');
		

		$this->form_validation->set_rules('reservationTime', 'ReservationTime', 'trim|required');
		

		$this->form_validation->set_rules('reservationType', 'ReservationType', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('reservationRequest', 'ReservationRequest', 'trim|required|max_length[256]');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'reservationId' => $this->input->post('reservationId'),
				'reservationName' => $this->input->post('reservationName'),
				'reservationPhone' => $this->input->post('reservationPhone'),
				'reservationDate' => $this->input->post('reservationDate'),
				'reservationTime' => $this->input->post('reservationTime'),
				'reservationType' => $this->input->post('reservationType'),
				'reservationRequest' => $this->input->post('reservationRequest'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_reservation = $id = $this->model_tb_reservation->store($save_data);
            

			if ($save_tb_reservation) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_reservation;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_reservation/edit/' . $save_tb_reservation, 'Edit Tb Reservation'),
						anchor('administrator/tb_reservation', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_reservation/edit/' . $save_tb_reservation, 'Edit Tb Reservation')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_reservation');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_reservation');
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
	* Update view Tb Reservations
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_reservation_update');

		$this->data['tb_reservation'] = $this->model_tb_reservation->find($id);

		$this->template->title('Tb Reservation Update');
		$this->render('backend/standart/administrator/tb_reservation/tb_reservation_update', $this->data);
	}

	/**
	* Update Tb Reservations
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_reservation_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('reservationId', 'ReservationId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('reservationName', 'ReservationName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('reservationPhone', 'ReservationPhone', 'trim|required|max_length[15]');
		

		$this->form_validation->set_rules('reservationDate', 'ReservationDate', 'trim|required');
		

		$this->form_validation->set_rules('reservationTime', 'ReservationTime', 'trim|required');
		

		$this->form_validation->set_rules('reservationType', 'ReservationType', 'trim|required|max_length[10]');
		

		$this->form_validation->set_rules('reservationRequest', 'ReservationRequest', 'trim|required|max_length[256]');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'reservationId' => $this->input->post('reservationId'),
				'reservationName' => $this->input->post('reservationName'),
				'reservationPhone' => $this->input->post('reservationPhone'),
				'reservationDate' => $this->input->post('reservationDate'),
				'reservationTime' => $this->input->post('reservationTime'),
				'reservationType' => $this->input->post('reservationType'),
				'reservationRequest' => $this->input->post('reservationRequest'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_reservation = $this->model_tb_reservation->change($id, $save_data);

			if ($save_tb_reservation) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_reservation', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_reservation');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_reservation');
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
	* delete Tb Reservations
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_reservation_delete');

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
            set_message(cclang('has_been_deleted', 'tb_reservation'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_reservation'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Reservations
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_reservation_view');

		$this->data['tb_reservation'] = $this->model_tb_reservation->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Reservation Detail');
		$this->render('backend/standart/administrator/tb_reservation/tb_reservation_view', $this->data);
	}
	
	/**
	* delete Tb Reservations
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_reservation = $this->model_tb_reservation->find($id);

		
		
		return $this->model_tb_reservation->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_reservation_export');

		$this->model_tb_reservation->export(
			'tb_reservation', 
			'tb_reservation',
			$this->model_tb_reservation->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_reservation_export');

		$this->model_tb_reservation->pdf('tb_reservation', 'tb_reservation');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_reservation_export');

		$table = $title = 'tb_reservation';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_reservation->find($id);
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


/* End of file tb_reservation.php */
/* Location: ./application/controllers/administrator/Tb Reservation.php */