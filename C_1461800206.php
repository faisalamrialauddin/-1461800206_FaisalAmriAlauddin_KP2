<?php

class C_1461800206 extends CI_Controller
{
    public function __construct()
    {
        parent::__construct();
        $this->load->model('m_1461800206');
    }

    public function index()
    {
        $data['sql'] = $this->m_1461800206->cetak_data_db();
        $this->load->view('v_1461800206', $data);
    }
}
