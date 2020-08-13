    @extends("layout.master")

@section("content")
<div class="container">
        <div class="container-fluid">
            <div class="row mb-2">
                <div class="col-sm-6">
                    <h1>Dashboard</h1>
                </div>
                <div class="col-sm-6">
                    <ol class="breadcrumb float-sm-right">
                        <li class="breadcrumb-item"><a href="{{ url('home') }}">Home</a></li>
                    </ol>
                </div>
            </div>
                <div class="row">
            @foreach($barangs as $barang)
    <div class="col-md-4">
            <div class="card">
                <img class="card-img-top" src="{{ asset('dist/img/'.$barang->gambar)}}" alt="Card image cap">
              <div class="card-body">
                <h5 class="card-title">{{ $barang->nama_barang }}</h5>
                <p class="card-text">
                    <strong>Stok :</strong>{{ $barang-> stok}}<br>
                    <span class="badge badge-success mb-2">Rp. {{number_format($barang->harga)}}</span> 
                </p>
                <a href="{{ url('pesan') }}/{{ $barang->id }}" class="btn btn-primary"><i class="fa fa-shopping-cart"></i> Pesan</a>
              </div>
            </div>
            </div>
    @endforeach
            </div>
    </div><!-- /.container-fluid -->
</div>

@endsection