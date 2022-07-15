<?php
defined('BASEPATH') OR exit('No direct script access allowed');


/**
*| --------------------------------------------------------------------------
*| Tb Menu Po Controller
*| --------------------------------------------------------------------------
*| Tb Menu Po site
*|
*/
class Tb_menu_po extends Admin	
{
	
	public function __construct()
	{
		parent::__construct();

		$this->load->model('model_tb_menu_po');
		$this->load->model('group/model_group');
		$this->lang->load('web_lang', $this->current_lang);
	}

	/**
	* show all Tb Menu Pos
	*
	* @var $offset String
	*/
	public function index($offset = 0)
	{
		$this->is_allowed('tb_menu_po_list');

		$filter = $this->input->get('q');
		$field 	= $this->input->get('f');

		$this->data['tb_menu_pos'] = $this->model_tb_menu_po->get($filter, $field, $this->limit_page, $offset);
		$this->data['tb_menu_po_counts'] = $this->model_tb_menu_po->count_all($filter, $field);

		$config = [
			'base_url'     => 'administrator/tb_menu_po/index/',
			'total_rows'   => $this->data['tb_menu_po_counts'],
			'per_page'     => $this->limit_page,
			'uri_segment'  => 4,
		];

		$this->data['pagination'] = $this->pagination($config);

		$this->template->title('Tb Menu Po List');
		$this->render('backend/standart/administrator/tb_menu_po/tb_menu_po_list', $this->data);
	}
	
	/**
	* Add new tb_menu_pos
	*
	*/
	public function add()
	{
		$this->is_allowed('tb_menu_po_add');

		$this->template->title('Tb Menu Po New');
		$this->render('backend/standart/administrator/tb_menu_po/tb_menu_po_add', $this->data);
	}

	/**
	* Add New Tb Menu Pos
	*
	* @return JSON
	*/
	public function add_save()
	{
		if (!$this->is_allowed('tb_menu_po_add', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
		
		

		$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('menuName', 'MenuName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('menuDesc', 'MenuDesc', 'trim|required');
		

		$this->form_validation->set_rules('menuPrice', 'MenuPrice', 'trim|required|max_length[6]');
		

		

		if ($this->form_validation->run()) {
		
			$save_data = [
				'menuId' => $this->input->post('menuId'),
				'menuName' => $this->input->post('menuName'),
				'menuDesc' => $this->input->post('menuDesc'),
				'menuPrice' => $this->input->post('menuPrice'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			
			



			
			
			$save_tb_menu_po = $id = $this->model_tb_menu_po->store($save_data);
            

			if ($save_tb_menu_po) {
				
				
					
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $save_tb_menu_po;
					$this->data['message'] = cclang('success_save_data_stay', [
						anchor('administrator/tb_menu_po/edit/' . $save_tb_menu_po, 'Edit Tb Menu Po'),
						anchor('administrator/tb_menu_po', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_save_data_redirect', [
						anchor('administrator/tb_menu_po/edit/' . $save_tb_menu_po, 'Edit Tb Menu Po')
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_menu_po');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_menu_po');
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
	* Update view Tb Menu Pos
	*
	* @var $id String
	*/
	public function edit($id)
	{
		$this->is_allowed('tb_menu_po_update');

		$this->data['tb_menu_po'] = $this->model_tb_menu_po->find($id);

		$this->template->title('Tb Menu Po Update');
		$this->render('backend/standart/administrator/tb_menu_po/tb_menu_po_update', $this->data);
	}

	/**
	* Update Tb Menu Pos
	*
	* @var $id String
	*/
	public function edit_save($id)
	{
		if (!$this->is_allowed('tb_menu_po_update', false)) {
			echo json_encode([
				'success' => false,
				'message' => cclang('sorry_you_do_not_have_permission_to_access')
				]);
			exit;
		}
				$this->form_validation->set_rules('menuId', 'MenuId', 'trim|required|max_length[5]');
		

		$this->form_validation->set_rules('menuName', 'MenuName', 'trim|required|max_length[60]');
		

		$this->form_validation->set_rules('menuDesc', 'MenuDesc', 'trim|required');
		

		$this->form_validation->set_rules('menuPrice', 'MenuPrice', 'trim|required|max_length[6]');
		

		
		if ($this->form_validation->run()) {
		
			$save_data = [
				'menuId' => $this->input->post('menuId'),
				'menuName' => $this->input->post('menuName'),
				'menuDesc' => $this->input->post('menuDesc'),
				'menuPrice' => $this->input->post('menuPrice'),
				'lastUpdated' => date('Y-m-d H:i:s'),
			];

			

			


			
			
			$save_tb_menu_po = $this->model_tb_menu_po->change($id, $save_data);

			if ($save_tb_menu_po) {

				

				
				
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = true;
					$this->data['id'] 	   = $id;
					$this->data['message'] = cclang('success_update_data_stay', [
						anchor('administrator/tb_menu_po', ' Go back to list')
					]);
				} else {
					set_message(
						cclang('success_update_data_redirect', [
					]), 'success');

            		$this->data['success'] = true;
					$this->data['redirect'] = base_url('administrator/tb_menu_po');
				}
			} else {
				if ($this->input->post('save_type') == 'stay') {
					$this->data['success'] = false;
					$this->data['message'] = cclang('data_not_change');
				} else {
            		$this->data['success'] = false;
            		$this->data['message'] = cclang('data_not_change');
					$this->data['redirect'] = base_url('administrator/tb_menu_po');
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
	* delete Tb Menu Pos
	*
	* @var $id String
	*/
	public function delete($id = null)
	{
		$this->is_allowed('tb_menu_po_delete');

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
            set_message(cclang('has_been_deleted', 'tb_menu_po'), 'success');
        } else {
            set_message(cclang('error_delete', 'tb_menu_po'), 'error');
        }

		redirect_back();
	}

		/**
	* View view Tb Menu Pos
	*
	* @var $id String
	*/
	public function view($id)
	{
		$this->is_allowed('tb_menu_po_view');

		$this->data['tb_menu_po'] = $this->model_tb_menu_po->join_avaiable()->filter_avaiable()->find($id);

		$this->template->title('Tb Menu Po Detail');
		$this->render('backend/standart/administrator/tb_menu_po/tb_menu_po_view', $this->data);
	}
	
	/**
	* delete Tb Menu Pos
	*
	* @var $id String
	*/
	private function _remove($id)
	{
		$tb_menu_po = $this->model_tb_menu_po->find($id);

		
		
		return $this->model_tb_menu_po->remove($id);
	}
	
	
	/**
	* Export to excel
	*
	* @return Files Excel .xls
	*/
	public function export()
	{
		$this->is_allowed('tb_menu_po_export');

		$this->model_tb_menu_po->export(
			'tb_menu_po', 
			'tb_menu_po',
			$this->model_tb_menu_po->field_search
		);
	}

	/**
	* Export to PDF
	*
	* @return Files PDF .pdf
	*/
	public function export_pdf()
	{
		$this->is_allowed('tb_menu_po_export');

		$this->model_tb_menu_po->pdf('tb_menu_po', 'tb_menu_po');
	}


	public function single_pdf($id = null)
	{
		$this->is_allowed('tb_menu_po_export');

		$table = $title = 'tb_menu_po';
		$this->load->library('HtmlPdf');
      
        $config = array(
            'orientation' => 'p',
            'format' => 'a4',
            'marges' => array(5, 5, 5, 5)
        );

        $this->pdf = new HtmlPdf($config);
        $this->pdf->setDefaultFont('stsongstdlight'); 

        $result = $this->db->get($table);
       
        $data = $this->model_tb_menu_po->find($id);
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


/* End of file tb_menu_po.php */
/* Location: ./application/controllers/administrator/Tb Menu Po.php */