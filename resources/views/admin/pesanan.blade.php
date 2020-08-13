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
                        <li class="breadcrumb-item" aria-current="page">List Pesanan</li>
                    </ol>
        </div>
    </div>
    <div class="row">
        <?php                   
                $tot = \App\Pesanan::where('user_id', Auth::user()->id)->where('status',1)->first();
        ?>
    @foreach($pesanans as $pesanan)
    <div class="col-md-6">
            <div class="card text-center">
              <div class="card-header">
                Pesanan Baru!
              </div>
              <div class="card-body">
                <h5 class="card-title">{{ $pesanan->user->name }}</h5>
                <p class="card-text"></p>
                <a href="{{ 'detail' }}/{{ $pesanan->id }}" class="btn btn-primary">Detail</a>
              </div>
              <div class="card-footer text-muted">
                {{ $pesanan->tanggal }}
              </div>
            </div>
        </div>
    @endforeach
       </div>    
    </div>

@endsection