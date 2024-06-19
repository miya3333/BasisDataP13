# Basis Data Pertemuan 13
> [!IMPORTANT]
> ## Tugas Aldi Hermansyah
> [Laporan Materi Pertemuan 13](#laporan-materi)
> 
> [Tugas Rumah 1](#tugas-rumah-1)
> 
> [Tugas Rumah 2](#tugas-rumah-2)

# Laporan Materi
## `Commit`
> <img src="/P13/img/P13 - commit.png" img>

## `Rollback`
> <img src="/P13/img/P13 - rollback.png" img>

## `Stored Procedure`
> ### memanggil "hello World"
> 
> <img src="/P13/img/P13 - sp1.png" img>

> ### memanggil nim & nama
> 
> <img src="/P13/img/P13 - sp2.png" img>

> ### memanggil alamat dari "bandung"
> <img src="/P13/img/P13 - sp3.png" img>

## `Trigger`
> ### membuat tabel mahasiswa
> 
> <img src="/P13/img/P13 - t1.png" img>

> ### mengupdate tabel mahasiswa & membuat tabel log_mahasiswa
> 
> <img src="/P13/img/P13 - t2.png" img>

> ### mengupdate tabel mahasiswa & log_mahasiswa
> 
> <img src="/P13/img/P13 - t3.png" img>

# Tugas Rumah 1
[Go To TOP](#basis-data-pertemuan-13)
### `membuat database toko_buku`
>
> <img src="/P13/img/P13 - rumah.png" img>

### `Tabel buku`
> <img src="/P13/img/P13 - rumah - buku1.png" img>

> <img src="/P13/img/P13 - rumah - buku2.png" img>

### `Tabel penulis`
> <img src="/P13/img/P13 - rumah - penulis1.png" img>

> <img src="/P13/img/P13 - rumah - penulis2.png" img>

> <img src="/P13/img/P13 - rumah - penulis3.png" img>

### `Tabel detail_buku`

> <img src="/P13/img/P13 - rumah - db1.png">

> <img src="/P13/img/P13 - rumah - db2.png">

> <img src="/P13/img/P13 - rumah - db3.png">

### 1.  Definisikan Store prosedure untuk mengetahui apakah suatu buku tersedia atau tidak. Jika Tersedia, set status "BUKU TERSEDIA". Jika tidak Tersedia, set status "BUKU SEDANG KOSONG".
`(saya menggunakan >20 untuk melihat “BUKU TERSEDIA” dan <20 untuk “BUKU SEDANG KOSONG”)`
> <img src="/P13/img/P13 - rumah - soal 1.png">
   

### 2. Definisikan suatu Stored procedure yang berfungsi untuk2 menambahkan data pada tabel penulis.
> <img src="/P13/img/P13 - rumah - soal 2-1.png">

> <img src="/P13/img/P13 - rumah - soal 2-2.png">
   

### 3. Definisikan Stored Procedure untuk Mengetahui Jumlah buku yang Bergenre Romance.
> <img src="/P13/img/P13 - rumah - soal 3.png">

### 4. Berikan Presentase Pemahaman kalian Pada Modul Kali ini (0-100%) dan Berikan penjelasan pada bagian yang kalian belum pahami (apabila ada)
`70% saya paham dengan membaca modul, tetapi tidak bisa menghafal semua perintah yang ada. 30% saya mengambil referensi dari chatGPT dan youtube untuk memahami modul ini.`

# Tugas Rumah 2
[Go To TOP](#basis-data-pertemuan-13)
### `membuat database perkuliahan`

> <img src="/P13/img/P13 - rumah2 - db.png">
### 1. Buat tabel siswa dengan field nis, nama, dan status serta tabel daftarnilai dengan field nis dan nilai. Selanjutnya, definisikan trigger pada tabel daftarnilai, sehingga saat melakukan INSERT dan UPDATE pada tabel daftarnilai, field status akan otomatis terisi “LULUS” atau “TIDAK LULUS” dengan ketentuan apabila nilai < 75 dinyatakan tidak lulus.
### `Tabel siswa & Tabel daftarnilai`

### `Trigger INSERT & UPDATE`

### `Menambahkan data`

### 2. Buatlah dua tabel dosen_pa (field : id_pa, nama_pa, jml_mhs) dan mahasiswa (field: nim, nama, id_pa). Kemudian buatlah trigger pada tabel mahasiswa untuk menghitung jumlah mahasiswa yang dibimbing oleh masing-masing dosen_pa. Skenarionya, ketika terjadi INSERT, UPDATE dan DELETE pada tabel mahasiswa, field jml_mhs pada tabel dosen_pa akan terupdate secara otomatis.
### `Tabel dosen_pa & Tabel mahasiswa`

### `Trigger INSERT, UPDATE & DELETE`

### `Menggunakan INSERT`

### `Menggunakan UPDATE`

### `Menggunakan DELETE`

### `3. Buatlah Trigger untuk tabel nilaimhs agar jika terdapat INSERT, UPDATE dan DELETE pada tabel nilaimhs, maka data pada field ip di tabel mhs secara otomatis terupdate.

Rumus menghitung Ip (Indeks Prestasi):

            𝒋𝒖𝒎𝒍𝒂𝒉 𝑩𝒐𝒃𝒐𝒕 𝒎𝒌 𝒚𝒂𝒏𝒈 𝒅𝒊𝒂𝒎𝒃𝒊𝒍
      Ip =  - - -
            𝒋𝒖𝒎𝒍𝒂𝒉 𝑺𝑲𝑺 𝒎𝒌 𝒚𝒂𝒏𝒈 𝒅𝒊𝒂𝒎𝒃𝒊𝒍


Dimana, bobot =

    Jika Nilai Abjad “A” = sks x 4
    Jika Nilai Abjad “B” = sks x 3
    Jika Nilai Abjad “C” = sks x 2
    Jika Nilai Abjad “D” = sks x 1

