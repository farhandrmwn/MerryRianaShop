<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Barang extends Model
{
	protected $table = 'barangs';
    protected $primaryKey = 'id';
    protected $fillable = ['id','nama_barang','harga','stok','keterangan','gambar','date_created','date_updated'];
    
    public function cart(){
        return $this->hasMany('App\Cart','barang_id','id');
    }
}
