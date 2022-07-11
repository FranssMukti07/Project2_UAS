<?php

defined('BASEPATH') or exit('No direct script access allowed');

class Home extends CI_Controller
{


    function __construct()
    {
        parent::__construct();
        $this->load->library(['form_validation']);

        $this->load->model('AuthModel');
        if (!$this->AuthModel->current_user()) {
            redirect('auth');
        }
    }

    public function index()
    {
        $this->data['title'] = 'Admin Pages | Home';

        $this->load->view('dashboard/components/header', $this->data);
        $this->load->view('dashboard/components/sidebar');
        $this->load->view('dashboard/admin/home/index');
        $this->load->view('dashboard/components/footer');
    }
}

/* End of file MainController.php */
