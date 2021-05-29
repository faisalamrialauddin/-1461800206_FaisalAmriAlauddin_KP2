<?php
class m_1461800206 extends CI_Model
{
    public function cetak_data_db()
    {
        $this->db->select('ms_buku.judul_buku, ms_kategori.nama_kategori, ms_buku.pengarang_buku, ms_penerbit.nama_penerbit,ms_buku.tahun_terbit_buku');
        $this->db->from('ms_buku');
        $this->db->join('ms_kategori', ' ms_buku.kode_kategori = ms_kategori.kode_kategori');
        $this->db->join('ms_penerbit', 'ms_buku.kode_penerbit = ms_penerbit.kode_penerbit');
        $this->db->where('tahun_terbit_buku', '2019');
        $query = $this->db->get()->result();
        return $query;
    }
}
