"use strict";
var express 	= 	require("express"),
	app			= 	express(),
	cons 		=	require("consolidate"),
	puerto 		= 	process.env.PORT || 3000,
	db   		= 	require('./modulos/database'),
	bodyParser  =   require('body-parser');

	db.conectaDatabase();

	//consolidate integra swig con express...
	app.engine("html", cons.swig); //Template engine...
	app.set("view engine", "html");
	app.set("views", __dirname + "/vistas");
	app.use(express.static('public'));


//Para indicar que se envía y recibe información por medio de Json...
app.use(bodyParser.json());
app.use(bodyParser.urlencoded({extended: true}));


app.get("/", function(req, res)
{
	res.render("index", {
		titulo 	:  	"Camilo Paez Trivia"
	});
});

app.get('/getQuestions', function(req, res){
		db.queryMysql("select numpregunta, pregunta, opcion1, opcion2, opcion3, opcion4 from preguntas order by rand();", function(err, data){
			if (err) throw err;
			res.json(data);
		});
	});

	//Iniciar el Servidor...
	var server = app.listen(puerto, function(err) {
	   if(err) throw err;
	   var message = 'Servidor corriendo en @ http://localhost:' + server.address().port;
	   console.log(message);
	});