<?php

namespace App\Models;

use CodeIgniter\Model;

class priceModel extends Model
{
    protected $table = 'price';
    protected $primaryKey = 'id_price';

    protected $useAutoIncrement = true;

    protected $returnType = 'array';
    protected $usSoftDeletes = true;

    protected $allowedFields = ['keterangan_price', 'tanggal_aktif', 'created_by'];

    protected $useTimestamps = true;
    protected $dateFormat    = 'datetime';
    protected $deletedField  = 'deleted_at';
}