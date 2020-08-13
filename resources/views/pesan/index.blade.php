@extends("layout.master")

@section("content")
<div class="container">
    <div class="row mb-2">
        <div class="col-md-12 mt-1">
            <a href="{{ url('home') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
        </div>
        <div class="col-md-12 mt-1">
            <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('home') }}">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">{{ $barang->nama_barang }}</li>
                    </ol>
        </div>
        <div class="col-md-12 mt-1">
            <div class="card">
                <div class="card-header">
                    <h4>{{ $barang->nama_barang }}</h4>
                </div>
                <div class="card-body">
                    <div class="row">
                        <div class="col-md-6">
                            <img class="card-img-top" src="{{ asset('dist/img/'.$barang->gambar) }}" alt="Card image cap">
                        </div>
                        <div class="col-md-6">
                            <p>{{ $barang->keterangan }}</p>
                            <h5>Stok : {{ $barang->stok }}</h5  >
                            <h4><span class="badge badge-success mb-2">Rp. {{number_format($barang->harga)}}</span><br></h4>
                            <table class="table">
                                <tr>
                                    <td>Jumlah Pesan</td>
                                    <td>:</td>
                                    <td>
                                        <form method="post" action="{{ url('pesan') }}/{{ $barang->id }}" >
                                            @csrf
                                            <input type="text" name="jumlah_pesan" class="form-control" required="">
                                            <button type="submit" class="btn btn-primary mt-2"><i class="fa fa-shopping-cart"></i> Masukkan Keranjang</button>
                                        </form>
                                    </td>
                                </tr>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</div>

@endsection