const mysql = require('mysql');

let db = mysql.createConnection({
	user : 'root',
	host : 'localhost',
	password : '',
	database : 'absensiBarcode'
})

db.connect(function(err){
	if(!err){
		console.log('berhasil terkoneksi dengan db');
	}
	else{
		console.log('koneksi gagal dengan error',error);
	}
})

module.exports = db ;