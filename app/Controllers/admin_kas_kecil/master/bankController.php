<?php

namespace App\Controllers\admin_kas_kecil\master;

class bankController extends BaseController
{
    public function index()
    {
        $data['judul'] = 'Bintang';
        $data['judul1'] = 'Master Bank';
        $data['model'] = $this->mdBank
            ->join('user', 'user.id_user=bank.created_by', 'left')->findAll();
        return view('admin_kas_kecil/master/bank/index', $data);
    }

    public function input()
    {
        $data = [
            'payment_code' => $this->request->getPost('payment_code'),
            'created_by' => SESSION('userData')['id_user'],
            'nama_bank' => $this->request->getPost('nama_bank'),
        ];
        // print_r($data);
        // exit;
        $this->mdBank->insert($data);
        return redirect()->to(base_url('/akk/master_bank'));
    }

    public function hapus($id_bank)
    {
        $delete = $this->mdBank->delete($id_bank);
        if ($delete) {
            return redirect()->to(base_url('/akk/master_bank'));
        } else {
            echo 'Gagal menghapus data.';
        }
    }
}