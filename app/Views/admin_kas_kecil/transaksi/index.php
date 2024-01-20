<?= $this->extend('layout/admin_kas_kecil'); ?>
<?= $this->section('content'); ?>

<div class="main-panel">
    <div class="content-wrapper">
        <div class="page-header">
            <h3 class="page-title">Transaksi</h3>
            <nav aria-label="breadcrumb">
                <ol class="breadcrumb">
                    <li class="breadcrumb-item"><a href="<?= base_url('/dashboard') ?>">Beranda</a></li>
                    <li class="breadcrumb-item active" aria-current="page">Transaksi</li>
                </ol>
            </nav>
        </div>
        <div class="row">
            <div class="col-md-6 grid-margin stretch-card">
                <div class="card">
                    <div class="card-body">
                        <div class="template-demo">
                            <div class="menu-item">
                                <a href="<?= base_url('/akk/closing_sales') ?>"> <i class="mdi mdi-cloud-check icon-md"></i>
                                    <h6> Input Tagihan Baru</h6>
                                </a>
                            </div>
                            <hr>
                            <div class="menu-item">
                                <a href="<?= base_url('/akk/master_sales') ?>">
                                    <i class="mdi mdi-archive text-dark icon-md"></i>
                                    <h6> Pengambilan Barang</h6>
                                </a>
                            </div>
                            <hr>
                            <div class="menu-item">
                                <a href="<?= base_url('/akk/master_defect') ?>">
                                    <i class="mdi mdi-tag icon-md"></i>
                                    <h6> Pengeluaran Stock Defect</h6>
                                </a>
                            </div>
                            <hr>
                            <div class="menu-item">
                                <a href="<?= base_url('/akk/master_sample') ?>">
                                    <i class="mdi mdi-truck icon-md"></i>
                                    <h6> Pengeluaran Stock Sample</h6>
                                </a>
                            </div>
                            <hr>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>
<style>
    .menu-item {
        display: flex;
        align-items: center;
        margin-bottom: 15px;
    }

    /* .icon-md {
    margin-right: 10px;
}

a {
    text-decoration: none;
    color: black;
} */

    .menu-item a {
        display: flex;
        align-items: center;
        text-decoration: none;
        color: black;
    }

    .menu-item i {
        margin-right: 10px;
    }
</style>
<?= $this->endSection() ?>