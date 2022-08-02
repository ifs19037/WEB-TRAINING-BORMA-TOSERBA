<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;

use Session;

use DB;

class IndexController extends Controller
{
    public function Index()
    {
        $nik_akun = Session::get('nik_akun');
        
        $divisi = Session::get('divisi');

        $pengumuman = DB::table('pengumuman')->orderBy('id_pengumuman', 'desc')->limit(5)->get();
        
        $materi = DB::table('materi')->where('divisi', $divisi)->where('status', 'tampil')->orderBy('id_materi', 'desc')->limit(3)->get();

        $cek_hasil_kuis = DB::table('hasil_kuis')->where('nik_akun', $nik_akun)->first();

        $kuis = DB::table('kuis')->where('divisi', $divisi)->where('status', 'tampil')->orderBy('id_kuis', 'desc')->limit(2)->get();

        return view('index')->with('pengumuman', $pengumuman)->with('materi', $materi)->with('kuis', $kuis)->with('cek_hasil_kuis', $cek_hasil_kuis);
    }

}