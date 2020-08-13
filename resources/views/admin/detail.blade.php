@extends("admin.layout.master")

@section("content")
<div class="container">
    <div class="row mb-2">
        <div class="col-md-12 mt-1">
            <a href="{{ url('admin/pesan') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
        </div>
        <div class="col-md-12 mt-1">
            <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/home') }}">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">Detail</li>
                    </ol>
        </div>
    </div>
    <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h3>Detail</h3>
                    <p align="right">Tanggal Pesan : {{ $pesanan->tanggal }}</p>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>ID Barang</th>
                                <th>Nama Barang</th>
                                <th>Jumlah</th>
                                <th>Harga</th>
                                <th>Total Harga</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; ?>
                            @foreach($carts as $cart)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $cart->barang_id }}</td>
                                <td>{{ $cart->barang->nama_barang }}</td>
                                <td>{{ $cart->jumlah }}</td>
                                <td align="right">Rp. {{ number_format($cart->barang->harga) }}</td>
                                <td align="right">Rp. {{ number_format($cart->jumlah_harga) }}</td>
                            </tr>
                            @endforeach
                            <tr>
                                <td colspan="5" align="right"><strong>Total Harga :</strong></td>
                                <td align="right"><strong>Rp. {{ number_format($pesanan->jumlah_harga) }}</strong></td>
                            </tr>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
</div>

@endsection