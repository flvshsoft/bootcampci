<?php

namespace App\Controllers\admin_kas_kecil\master;

class productController extends BaseController
{
    public function index()
    {
        $data['judul'] = 'Bintang';
        $data['judul1'] = 'Master Data Product';
        $data['model'] = $this->mdProduct
            ->join('supplier', 'supplier.id_supplier=product.id_supplier')
            ->findAll();

        return view('admin_kas_kecil/master/product/index', $data);
    }
    public function tambah_product()
    {
        $data['judul'] = 'Bintang';
        $data['judul1'] = 'Data Product';
        $data['supplier'] =  $this->mdSupplier->findAll();
        return view('admin_kas_kecil/master/product/tambah', $data);
    }
    public function input()
    {
        $data = [
            'nama_product' => $this->request->getPost('nama_product'),
            'satuan_product' => $this->request->getPost('satuan_product'),
            'id_supplier' => $this->request->getPost('id_supplier'),
            'stock_product' => $this->request->getPost('stock_product'),
        ];
        // print_r($data);
        // exit;
        $this->mdProduct->insert($data);
        return redirect()->to(base_url('/akk/master_product'));
    }

    public function hapus($id_product)
    {
        $delete = $this->mdProduct->delete($id_product);
        if ($delete) {
            return redirect()->to(base_url('/akk/master_product'));
        } else {
            echo 'Gagal menghapus data.';
        }
    }

    public function edit($id_product)
    {
        $data['judul'] = 'Bintang';
        $data['judul1'] = 'Data Product';
        $data['model'] = $this->mdProduct
            ->join('supplier', 'supplier.id_supplier=product.id_supplier')
            ->where('id_product', $id_product)
            ->find()[0];
        $data['supplier'] =  $this->mdSupplier->findAll();
        return view('admin_kas_kecil/master/product/edit', $data);
    }

    public function update()
    {
        $id_product = $this->request->getPost('id_product');
        $data = [
            'id_product' => $id_product,
            'nama_product' => $this->request->getPost('nama_product'),
            'satuan_product' => $this->request->getPost('satuan_product'),
            'id_supplier' => $this->request->getPost('id_supplier'),
            'stock_product' => $this->request->getPost('stock_product'),
        ];
        // print_r($data);
        // exit;
        $this->mdProduct->save($data);
        return redirect()->to(base_url('/akk/master_product'));
    }
}