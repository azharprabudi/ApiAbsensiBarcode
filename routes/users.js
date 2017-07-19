var express = require('express');
var moment = require('moment');
var router = express.Router();
const db = require('../db');

/* GET users listing. */
router.get('/', function(req, res, next) {
  res.send('respond with a resource');
});

router.post('/simpanAbsensi',function(req,res,next){
	let body = req.body;
	if( body.nim != null && body.latitude != null && body.longitude != null && body.address != null && body.qrcode != null ){
		db.query('INSERT INTO absensi_mahasiswa SET ? ',{ nim : body.nim, latitude : body.latitude, longitude : body.longitude, address: body.address, waktu : moment().format('YYYY-MM-DD H:mm:ss'), qrcode : body.qrcode },function(err){
			if(!err){
				res.status(200).json({msg : ' data berhasil disimpan '});
			}
			else{
				console.log(err);
				res.status(404).json({msg : ' ada yang bermasalah dengan api '});
			}
		})
	}
	else{
		res.status(400).json({msg : ' format tidak sesuai '});
	}
})

module.exports = router;
