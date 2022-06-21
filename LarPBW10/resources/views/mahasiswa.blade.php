@extends('layouts.main')
@section('content')
<div class="card-header">
                        <a  name="" id="" class="btn btn-primary" href="/mahasiswa/formmhs" role="button"><i class="bi bi-plus-square"></i>ADD</a>
                        <form class="form-inline my-2 my-lg-0 float-right" method="GET" action="/mahasiswa/search">
                            <input class="form-control mr-sm-2" name="cari" type="search" placeholder="Search" aria-label="Search">
                            <button class="btn btn-outline-primary my-2 my-sm-0" type="submit"><i class="bi bi-search"></i></button>
                        </form>
                        </div>
                        @if (session('alert01'))
                        <div class="alert alert-success alert-dismissible fade show" role="alert">
                            <strong>{{ session('alert01') }}</strong>
                            <button type ="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        @elseif (session('alert02'))
                        <div class="alert alert-warning alert-dismissible fade show" role="alert">
                            <strong>{{ session('alert02') }}</strong>
                            <button type ="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        @else (session('alert03'))
                        <div class="alert alert-danger alert-dismissible fade show" role="alert">
                            <strong>{{ session('alert03') }}</strong>
                            <button type ="button" class="close" data-dismiss="alert" aria-label="Close">
                                <span aria-hidden="true">&times;</span>
                            </button>
                        </div>
                        @endif
    <table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">ID</th>
      <th scope="col">Nim</th>
      <th scope="col">Nama</th>
      <th scope="col">Gender</th>
      <th scope="col">Jurusan</th>
      <th scope="col">Bidang Studi</th>
      <th scope="col">Manipulasi</th>
    </tr>
  </thead>
  <tbody>
      @foreach( $mahasiswa as $no => $mhs)
    <tr>
      <th scope="row">{{++$no}}</th>
      <td>{{$mhs->nim}}</td>
      <td>{{$mhs->nama}}</td>
      <td>{{$mhs->gender}}</td>
      <td>{{$mhs->jurusan}}</td>
      <td>{{$mhs->bidangminat}}</td>
      <td>
                            <a href="/mahasiswa/editMhs/{{ $mhs->id }}" class="btn btn-outline-primary"><i class="bi bi-pencil-square"></i></a>
                            <a href="/mahasiswa/hapusMhs/{{ $mhs->id }}" class="btn btn-outline-primary" onclick="return confirm('Hapus Data ini?')"
                            style="word-spacing:32.5px"><i class="bi bi-trash-fill"></i></a>
                        </td>
    </tr>
    @endforeach
  </tbody>
</table>
<span class='float-right'>{{$mahasiswa->links()}} </span>

@stop