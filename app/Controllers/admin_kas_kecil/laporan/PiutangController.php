<?php

namespace App\Controllers\admin_kas_kecil\laporan;

class PiutangController extends BaseController
{
    public function areaPrint()
    {
        $data['judul'] = 'Bintang Distributor';
        $data['judul1'] = 'REPORT TAGIHAN';
        $dt1 = $this->request->getPost("tgl_mulai");
        $dt2 =  $this->request->getPost("tgl_berakhir");
        $id_area =  $this->request->getPost("id_area");
        $id_partner = $this->request->getPost("id_partner");
        // $data['model'] = $this->mdSales
        //     ->join('nota', 'nota.id_sales=sales.id_sales')
        //     ->join('customer', 'customer.id_customer=nota.id_customer')
        //     ->where('sales.id_branch', Session('userData')['id_branch'])
        //     ->where('nota.created_at >=', $dt1)
        //     ->where('nota.created_at <=', $dt2)
        //     ->where('sales.id_area', $id_area)
        //     ->where('nota.id_partner', $id_partner)
        //     ->orderBY('id_nota', 'DESC')
        //     ->findAll();
        $data['model'] = $this->mdNota
            // ->join('nota', 'nota.id_sales=sales.id_sales')
            ->join('customer', 'customer.id_customer=nota.id_customer')
            // ->where('nota.id_branch', Session('userData')['id_branch'])
            // ->where('nota.created_at >=', $dt1)
            // ->where('nota.created_at <=', $dt2 . ' 23:59:59')
            ->where('nota.id_area', $id_area)
            ->where('nota.id_partner', $id_partner)
            ->where('nota.payment_method', 'KREDIT')
            // ->orderBY('id_nota', 'DESC')
            ->findAll();

            // print_r($this->request->getPost());
            // print_r($data);
            // exit;

        $data['info'] = $this->mdSales
            ->join('area', 'area.id_area=sales.id_area')
            ->join('partner', 'partner.id_partner=sales.id_partner')
            ->join('nota', 'nota.id_sales=sales.id_sales')
            ->orderBY('id_nota', 'DESC')
            ->where('sales.id_branch', Session('userData')['id_branch'])
            // ->where('nota.created_at >=', $dt1)
            // ->where('nota.created_at <=', $dt2)
            ->where('sales.id_area', $id_area)
            ->where('nota.id_partner', $id_partner)
            ->find();

        if (!empty($data['info'])) {
            $data['info'] = $data['info'][0];
        } else {
            $data['info'];
            return redirect()->to(base_url('/akk/laporan/form_sisa#kosong'));
            exit;
        }

        $mpdf = new \Mpdf\Mpdf();
        $html = view('admin_kas_kecil/laporan/piutang/area_print', $data, []);
        $mpdf->WriteHTML($html);
        $this->response->setHeader('Content-Type', 'application/pdf');
        $mpdf->Output($data['judul1'], 'I');
    }

    public function salesmanPrint()
    {
        $data['judul'] = 'Bintang Distributor';
        $data['judul1'] = 'REPORT TAGIHAN';
        $dt1 = $this->request->getPost("tgl_mulai");
        $dt2 =  $this->request->getPost("tgl_berakhir");
        // $id_area =  $this->request->getPost("id_area");
        // $id_partner = $this->request->getPost("id_partner");
        // $data['model'] = $this->mdSales
        //     ->join('nota', 'nota.id_sales=sales.id_sales')
        //     ->join('customer', 'customer.id_customer=nota.id_customer')
        //     ->where('sales.id_branch', Session('userData')['id_branch'])
        //     ->where('nota.created_at >=', $dt1)
        //     ->where('nota.created_at <=', $dt2)
        //     ->where('sales.id_area', $id_area)
        //     ->where('nota.id_partner', $id_partner)
        //     ->orderBY('id_nota', 'DESC')
        //     ->findAll();
        $data['model'] = $this->mdNota
            // ->join('nota', 'nota.id_sales=sales.id_sales')
            ->join('customer', 'customer.id_customer=nota.id_customer')
            // ->where('nota.id_branch', Session('userData')['id_branch'])
            // ->where('nota.created_at >=', $dt1)
            // ->where('nota.created_at <=', $dt2 . ' 23:59:59')
            // ->where('nota.id_area', $id_area)
            // ->where('nota.id_partner', $id_partner)
            ->where('nota.payment_method', 'KREDIT')
            // ->orderBY('id_nota', 'DESC')
            ->findAll();

            // print_r($this->request->getPost());
            // print_r($data);
            // exit;

        $data['info'] = $this->mdSales
            ->join('area', 'area.id_area=sales.id_area')
            ->join('partner', 'partner.id_partner=sales.id_partner')
            ->join('nota', 'nota.id_sales=sales.id_sales')
            ->orderBY('id_nota', 'DESC')
            ->where('sales.id_branch', Session('userData')['id_branch'])
            // ->where('nota.created_at >=', $dt1)
            // ->where('nota.created_at <=', $dt2)
            // ->where('sales.id_area', $id_area)
            // ->where('nota.id_partner', $id_partner)
            ->find();

        if (!empty($data['info'])) {
            $data['info'] = $data['info'][0];
        } else {
            $data['info'];
            return redirect()->to(base_url('/akk/laporan/form_sisa#kosong'));
            exit;
        }

        $mpdf = new \Mpdf\Mpdf();
        $html = view('admin_kas_kecil/laporan/piutang/salesman_print', $data, []);
        $mpdf->WriteHTML($html);
        $this->response->setHeader('Content-Type', 'application/pdf');
        $mpdf->Output($data['judul1'], 'I');
    }
}