@extends('layouts.mahasiswa')
@section('title','Kartu Hasil Studi')
@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Kartu Hasil Studi</div>

                <div class="card-body">

                    @php
                    $totalSKS=0;
                    $totalMutu=0;
                    @endphp

                    <table class="table table-bordered">
                        <tr>
                            <th>NO</th>
                            <th>Kode MK</th>
                            <th>Matakuliah</th>
                            <th>Semester</th>
                            <th>SKS</th>
                            <th>Nilai</th>
                            <th>Grade</th>
                        </tr>
                        @foreach($khs as $row)
                        @php
                        $nilai = hitung_nilai($row->id);
                        $grade = hitung_grade($nilai);
                        $mutu  = hitung_mutu($grade);
                        @endphp
                        <tr>
                            <td>{{ $loop->iteration }}</td>
                            <td>{{ $row->kode_mk}}</td>
                            <td>{{ $row->nama_mk}}</td>
                            <td>{{ $row->semester}}</td>
                            <td>{{ $row->jml_sks}}</td>
                            <td>{{ $nilai }}</td>
                            <td>{{ $grade }}</td>
                        </tr>
                        <?php
                        $totalSKS=$totalSKS+$row->jml_sks;
                        $totalMutu = $totalMutu+$mutu;
                        ?>
                        @endforeach
                        <tr>
                            <td colspan="3">Jumlah SKS</td>
                            <td colspan="3">{{ $totalSKS}}</td>
                        </tr>
                        <tr>
                            <td colspan="3">Jumlah Mutu</td>
                            <td colspan="3">{{ $totalMutu }}</td>
                        </tr>
                        <tr>
                            <?php 
                            if(empty($totalMutu) or empty($totalSKS))
                                $ipk =0;
                            else
                                $ipk = $totalMutu/$totalSKS;
                            ?>

                            <td colspan="3">IPK</td>
                            <td colspan="3">{{ $ipk }}</td>
                        </tr>
                    </table>

                    <a href="/khs/pdf" class="btn btn-danger">Cetak KHS PDF</a>
                </div>
            </div>
        </div>
    </div>
</div>
@endsection
