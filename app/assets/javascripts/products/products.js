/*function alertProducts(){
	var title = "Confirmacion";
	var mssg = "¿Desea guardar sus datos?";
	var confirm = "Aceptar";
	var callback = function(){
		var form = $("#for");
		form.submit();
	}
	successAjax(title, mssg, confirm, callback);
}

function successAjax(title, mssg, confirm, callback){
	swal({
		title: title,
		text: mssg,
		type: "success",
		confirmButtonColor: "DD6B55",
		cancelButtonColor: "DDAB57",
		confirmButtonText: "Aceptar",
		cancelButtonText: "Cancelar",
		showCancelButton: true,
		showLoaderOnConfirm:false,
		closeOnConfirm: true
	},
	function(){
		callback();
	});
}

swal({ title: "<%= notice %>", type: "success", timer: 3000, 
showConfirmButton: false, closeOnConfirm: true });*/


function alertProducts(url){
	//alert(url)
	

	var title = "Alertaaaaaaaaaaaaaaaa";
	var mssg = "Los productos se estan acabando ";
	var confirm = "Aceptar";
	var callback = function(){
		var form = $(".for");
		form.submit();
	}
	successAjax(title, mssg, confirm, callback, url);
}

function successAjax(title, mssg, confirm, callback, url){
	swal({
		title: title,
		text: mssg,
		type: "success",
		confirmButtonColor: "DD6B55",
		confirmButtonText: "Aceptar",
		cancelButtonText: "Cancelar",
		showCancelButton: false,
		showLoaderOnConfirm:false,
		closeOnConfirm: true
	},
	function(){
		callback();
		urlse = location.href= url

		
	});
}