@extends('layouts.main')
@section('content')
      <div class="container-fluid  mt-4" rounded>
   
          <form action="/mahasiswa/updateMhs/{{ $mahasiswa -> id}}" method="POST" class="pt-2 pb-2">
              @csrf
              @method('PUT')
              <div class="form-group w-25 ">
                  <label>NIM</label>
                  <input type="number" name="nim" class="form-control" value="{{ $mahasiswa->nim }}" readonly>
              </div>

              <div class="form-group w-25 bg-info">
                  <label>Nama</label>
                  <input type="text" name="nama" class="form-control" value="{{ $mahasiswa->nama }}" require>
              </div>
              
              <label>Gender</label>
              <div class="form-check w-25 bg-info">
                  <input type="radio" name="gender" value="Laki-Laki" class="form-check-input" {{ $mahasiswa ->gender == 'Laki-Laki' ? 'checked':''}}>
                  <label>Laki-Laki</label>
              </div>
              <div class="form-check w-25 bg-info">
                  <input type="radio" name="gender" value="Perempuan" class="form-check-input" {{ $mahasiswa -> gender == '2' ? 'checked':''}}>
                  <label>Perempuan</label>
              </div>

              <div class="form-group w-25 bg-info">
                  <label>Jurusan</label>
                  <input type="text" name="jurusan" value="Sistem Informasi" value= "{{ $mahasiswa->nama }}" default>
              </div>

              <div class="form-group w-25 bg-info">
                  <label>Bidang Minat</label>
                  <select name="bidangminat" class="form-control">
                      <option value="0">--Pilih Bidang Minat--</option>
                      <option value="E-commerce" {{$mahasiswa->bidangminat=='E-commerce' ? 'selected':''}} > 
                      E-commerce </option>
                      <option value="Kesehatan" {{$mahasiswa->bidangminat=='Sistem Informasi Layanan Kesehatan' ? 'selected':''}} > 
                          Sistem Informasi Layanan Kesehatan </option>
                      <option value="Layanan" {{$mahasiswa->bidangminat=='Layanan' ? 'selected':''}} > 
                          Layanan </option>
                  </select>
              </div>
              <div class="form-check mt-4">
                  <input type="submit" value ="SIMPAN" class = "btn btn-outline-primary">
              </div>
          </form>         
      </div>
@stop