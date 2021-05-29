<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link href="https://unpkg.com/tailwindcss@^1.0/dist/tailwind.min.css" rel="stylesheet">
    <link href="https://fonts.googleapis.com/css?family=Source+Sans+Pro:400,400i,700" rel="stylesheet" />
    <title>Daftar Buku</title>
    <style>

	body,
	h1 {
		font-family: "Raleway", sans-serif
	}

	body,
	html {
		height: 100%
	}

	.bgimg {
		background-image: url('images/mac.jpg');
		min-height: 100%;
		background-position: center;
		background-size: cover;
	}


    </style>
</head>

<div class="bgimg w3-display-container w3-animate-opacity w3-text-white";>
    <div class="container ">
        <br>
        <h1 class="text-5xl text-2xl text-center font-black">Kegiatan Praktikum 2<br></h1>
        <h3 class="text-4xl text-1xl text-center font-black">DAFTAR_BUKU</h3>
		<h3 class="text-4xl text-1xl text-center font-black">1461800206</h3>
        <br><br>
        <div class="items-center justify-center flex items-center my-2">
            <center>
			<table class="shadow-lg bg-white">
                <thead class="text-black">
                    <tr class="bg-gray-400 flex flex-col flex-no wrap sm:table-row rounded-l-lg sm:rounded-none mb-2 sm:mb-0">
                        <th class="p-3 text-center">No.</th>
                        <th class="p-3 text-center">Judul Buku</th>
                        <th class="p-3 text-center">Kategori</th>
                        <th class="p-3 text-center">Pengarang</th>
                        <th class="p-3 text-center">Penerbit</th>
                        <th class="p-3 text-center">Tahun Terbit</th>
                    </tr>
                </thead>
			</center>
 </div>
        <tbody class="flex-1 sm:flex-none">
            <?php
            $num = 1;
            foreach ($sql as $row) { ?>
                <tr class="flex flex-col flex-no wrap sm:table-row mb-2 sm:mb-0">
                    <td class="border-grey-light border hover:bg-gray-100 p-3"><?= $num; ?></td>
                    <td class="border-grey-light border hover:bg-gray-100 p-3"><?= $row->judul_buku ?></td>
                    <td class="border-grey-light border hover:bg-gray-100 p-3"><?= $row->nama_kategori ?></td>
                    <td class="border-grey-light border hover:bg-gray-100 p-3"><?= $row->pengarang_buku ?></td>
                    <td class="border-grey-light border hover:bg-gray-100 p-3"><?= $row->nama_penerbit ?></td>
                    <td class="border-grey-light border hover:bg-gray-100 p-3 text-center"><?= $row->tahun_terbit_buku ?></td>
                </tr>
            <?php $num++;
            } ?>
        </tbody>
        </table>
    </div>
</body>

</html>