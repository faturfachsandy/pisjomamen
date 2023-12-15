class PisjoData {
	String gambar;
	String nama;
	String desc;
	int harga;

	PisjoData({
		required this.gambar,
		required this.nama,
		required this.desc,
		required this.harga,
	});
}

var pisjoDataList = [
	PisjoData(
		gambar: "images/pisjo tampah1.png",
		nama: "Pisjo Tampah",
		desc: "Paket Pisjo Tampah\n\n30 pcs = IDR 235K\n40 pcs = IDR 295K\n50 pcs = IDR 355K\n60 pcs = IDR 415K\n100 pcs = IDR 655K",
		harga: 235000
	),
	PisjoData(
		gambar: "images/pisjo bowl.png",
		nama: "Pisjo Bowl",
		desc: "Isi 1 pisang ijo, sudah di potong-potong campur fla, dengan syrup terpisah.",
		harga: 11000
	),
	PisjoData(
		gambar: "images/pisjo mika1.png",
		nama: "Pisjo Box isi 2",
		desc: "Isi 2 pisang ijo utuh dengan fla dan syrup terpisah.",
		harga: 20000
	),
	PisjoData(
		gambar: "images/pisjo mika2.png",
		nama: "Pisjo Box isi 1",
		desc: "Isi 1 pisang ijo utuh dengan fla dan syrup terpisah.",
		harga: 12000
	),
	PisjoData(
		gambar: "images/pisjo tampah1.png",
		nama: "Pisjo Normal",
		desc: "Minimal 30 pcs Pisjo ukuran normal dengan fla dan syrup terpisah.",
		harga: 9500
	),
	PisjoData(
		gambar: "images/pisjo mika2.png",
		nama: "Pisjo Mini",
		desc: "Minimal 30 pcs Pisjo ukuran mini dengan fla dan syrup terpisah.",
		harga: 7000
	),
];