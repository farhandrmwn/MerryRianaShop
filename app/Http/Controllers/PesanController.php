<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Barang;
use App\Pesanan;
use App\Cart;
use Carbon\Carbon;
use Auth;
use Alert;

class PesanController extends Controller
{
    public function __construct()
    {
        $this->middleware('auth');
    }

    public function index($id){
    	$barang = Barang::where('id', $id)->first();

    	return view('pesan.index', compact('barang'));
    }

    public function pesan(Request $request, $id){
    	$barang = Barang::where('id', $id)->first();
    	$tanggal = Carbon::now();

    	//validasi apakah melebihi stok
    	if($request->jumlah_pesan > $barang->stok)
    	{
    		return redirect('pesan/'.$id);
    	}

    	//cek validasi
    	$cek_pesanan = Pesanan::where('user_id', Auth::user()->id)->where('status',0)->first();
    	//simpan ke database pesanan
    	if(empty($cek_pesanan))
    	{
    		$pesanan = new Pesanan;
	    	$pesanan->user_id = Auth::user()->id;
	    	$pesanan->tanggal = $tanggal;
	    	$pesanan->status = 0;
	    	$pesanan->jumlah_harga = 0;
	    	$pesanan->save();
    	}
    	

    	//simpan ke database cart
    	$pesanan_baru = Pesanan::where('user_id', Auth::user()->id)->where('status',0)->first();

    	//cek cart
    	$cek_cart = Cart::where('barang_id', $barang->id)->where('pesanan_id', $pesanan_baru->id)->first();
    	if(empty($cek_cart))
    	{
    		$cart = new Cart;
	    	$cart->barang_id = $barang->id;
	    	$cart->pesanan_id = $pesanan_baru->id;
	    	$cart->jumlah = $request->jumlah_pesan;
	    	$cart->jumlah_harga = $barang->harga*$request->jumlah_pesan;
	    	$cart->save();
    	}else 
    	{
    		$cart = Cart::where('barang_id', $barang->id)->where('pesanan_id', $pesanan_baru->id)->first();

    		$cart->jumlah = $cart->jumlah+$request->jumlah_pesan;

    		//harga sekarang
    		$harga_cart_baru = $barang->harga*$request->jumlah_pesan;
	    	$cart->jumlah_harga = $cart->jumlah_harga+$harga_cart_baru;
	    	$cart->update();
    	}

    	//jumlah total
    	$pesanan = Pesanan::where('user_id', Auth::user()->id)->where('status',0)->first();
    	$pesanan->jumlah_harga = $pesanan->jumlah_harga+$barang->harga*$request->jumlah_pesan;
    	$pesanan->update();

    	alert()->success('Pesanan Sukses Masuk Keranjang', 'Success');
    	return redirect('home');
    }

    public function check_out(){
    	$pesanan = Pesanan::where('user_id', Auth::user()->id)->where('status',0)->first();
    	 	$carts = [];
    	        if(!empty($pesanan))
    	        {
    	            $carts = Cart::where('pesanan_id', $pesanan->id)->get();

    	        }
    	        return view('pesan.check_out', compact('pesanan', 'carts'));
    }

    public function delete($id){
            $cart = Cart::where('id', $id)->first();

            $pesanan = Pesanan::where('id', $cart->pesanan_id)->first();
            $pesanan->jumlah_harga = $pesanan->jumlah_harga-$cart->jumlah_harga;
            $pesanan->update();


            $cart->delete();

            alert()->error('Pesanan Sukses Dihapus', 'Hapus');
            return redirect('check-out');
        }

    public function konfirmasi(){
    	$pesanan = Pesanan::where('user_id', Auth::user()->id)->where('status',0)->first();
        $pesanan_id = $pesanan->id;
        $pesanan->status = 1;
        $pesanan->update();

        $carts = Cart::where('pesanan_id', $pesanan_id)->get();
        foreach ($carts as $cart) {
            $barang = Barang::where('id', $cart->barang_id)->first();
            $barang->stok = $barang->stok-$cart->jumlah;
            $barang->update();
        }
        alert()->success('Pesanan Sukses Check Out', 'Success');
        return redirect('check-out');
    }
}
