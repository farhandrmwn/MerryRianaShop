<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\User;
use App\Pesanan;
use App\Cart;
use App\Barang;
use Alert;

class AdminController extends Controller
{
    public function index(){
    	$users = User::paginate(20);
        return view('admin.user', compact('users'));
    }

    public function pesan(){
    	$pesanans = Pesanan::where('status', 1)->get();
        return view('admin.pesanan', compact('pesanans'));
    }

    public function detail($id){
    	$pesanan = Pesanan::where('id', $id)->first();
    	$carts = Cart::where('pesanan_id', $id)->get();
    	return view('admin.detail', compact('pesanan','carts'));
    }

    public function barang(){
        $barangs = Barang::paginate(20);
        return view('admin.barang', compact('barangs'));
    }

    public function create()
    {
        return view('admin.tambah');
    }

    public function store(Request $request)
    {
        $this->validate($request,[
            'nama_barang' => 'required',
            'harga' => 'required',
            'stok' => 'required',
            'keterangan' => 'required'
        ]);
 
        Barang::create([
            'nama_barang' => $request->nama_barang,
            'harga' => $request->harga,
            'stok' => $request->stok,
            'keterangan' => $request->keterangan,
            'gambar' => $request->gambar,
        ]);
        
        return redirect()->action('AdminController@barang')->with('status', 'Berhasil Disimpan!');
    }
}
