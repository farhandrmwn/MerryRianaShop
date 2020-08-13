@extends("admin.layout.master")

@section("content")
<div class="container">
    <div class="row mb-2">
        <div class="col-md-12 mt-1">
            <a href="{{ url('admin/home') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
        </div>
        <div class="col-md-12 mt-1">
            <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin') }}/{{ url('home') }}">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">List Barang</li>
                    </ol>
        </div>
        <div class="col-md-12">
            <div class="card">
                <button type="button" class="btn btn-primary"><a href="{{ 'barang' }}/{{ 'tambah' }}" style="color:white;">Tambah Data Barang</a></button>
            </div>
        </div>
    </div>
    <div class="col-md-12">
            <div class="card">
                <div class="card-body">
                    <h3><i class="fa fa-shopping-cart"></i> List Barang</h3>
                    <table class="table table-striped">
                        <thead>
                            <tr>
                                <th>No</th>
                                <th>ID</th>
                                <th>Nama Barang</th>
                                <th>Harga</th>
                                <th>Stok</th>
                                <th>Keterangan</th>
                                <th>gambar</th>
                            </tr>
                        </thead>
                        <tbody>
                            <?php $no = 1; ?>
                            @foreach($barangs as $barang)
                            <tr>
                                <td>{{ $no++ }}</td>
                                <td>{{ $barang->id }}</td>
                                <td>{{ $barang->nama_barang }}</td>
                                <td>{{ $barang->harga }}</td>
                                <td>{{ $barang->stok }}</td>
                                <td>{{ $barang->keterangan }}</td>
                                <td>{{ $barang->gambar }}</td>
                            </tr>
                            @endforeach
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
        
    </div>

@endsection