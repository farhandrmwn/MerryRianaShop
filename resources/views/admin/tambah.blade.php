@extends("admin.layout.master")

@section("content")
<div class="container">
    <div class="row mb-2">
        <div class="col-md-12 mt-1">
            <a href="{{ url('admin/barang') }}" class="btn btn-primary"><i class="fa fa-arrow-left"></i> Kembali</a>
        </div>
        <div class="col-md-12 mt-1">
            <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('admin/barang') }}">Home</a></li>
                        <li class="breadcrumb-item" aria-current="page">List Barang</li>
                    </ol>
        </div>
    </div>
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">Input Data Barang</div>
                <div class="card-body">
                    <!-- route pertanyaan store -->
                    <form action="{{ 'store' }}" method="post">
                        @csrf
                        <div class="form-row">
                            <div class="form-group col-md-6 mt-2">
                                <label for="inputNama">Nama Barang</label>
                                <input type="text" name="nama_barang" id="inputNama" class="form-control">
                            </div>
                            <div class="form-group col-md-6 mt-2">
                                <label for="inputHarga">Harga</label>
                                <input type="text" name="harga" id="inputHarga" class="form-control">
                            </div>
                        </div>
                        <div class="form-group">
                            <label for="inputKeterangan">Keterangan</label>
                            <input type="text" name="keterangan" id="inputKeterangan" class="form-control">
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6 mt-2">
                                <label for="inputStok">Stok</label>
                                <input type="text" name="stok" id="inputStok" class="form-control">
                            </div>
                            <div class="form-group col-md-6 mt-2">
                                <label for="inputGambar">Gambar</label>
                                <input type="text" name="gambar" id="inputGambar" class="form-control">
                            </div>
                        </div>  
                        <div class="col-md-12">
                            <button type="submit" class="btn btn-sm btn-primary" id="trigger-swal">Submit</button>
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
        
    </div>

@endsection