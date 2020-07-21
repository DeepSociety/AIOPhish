var LINK = 'https://www.mixar.xyz/?sl=5028136-4508a&data1=Track1&data2=Track2&tag={External_ID_from_traffic_source}&website={subID}&placement={sub_subID}';
$('.linkfinal').attr('href',LINK);
$('.continuar').click(function(){
	if($.trim($('input[name=username]').val())==''){
		$('input[name=username]').addClass('shake').focus(),setTimeout(function(){$('input[name=username]').removeClass('shake')},800);
	}else{
		mostrar($('.modal .paso-03'));
		ocultar($('.modal .paso-04'));
		setInterval(change,3000);
		var text=[
			'Contactando a servicios de '+cons+'...',
			'Aplicando servicios...',
			'Verificando usuario <strong>'+$('input[name=username]').val()+'</strong> en Gare...',
			'Ingresando en los servicios del sistema...',
			'Autentificando inicio de sesión...',
			'<strong style="color:#00ff72">¡Usuario conectado!</strong>',
			'<span style="color:#ff0">Agregando pack #<strong>'+activo+'</strong>...</span>',
			'<span style="color:#00ff72">¡Pack #<strong>'+activo+'</strong> correctamente agregado!</span>',
			'<span style="color:#ff0">Agregando <strong>'+vbucks+' Diamantes</strong>...</span>',
			'<span style="color:#00ff72"><strong>'+vbucks+' Diamantes</strong> correctamente agregado!</span>',
			'Validando pack #<strong>'+activo+'</strong> y <strong>'+vbucks+' Diamantes</strong>',
		];
		var counter=0;
		var elem=$('.txtmodal');
		function change(){elem.fadeOut(function(){elem.html(text[counter]),counter++,counter===text.length+1?($('.pasoproc h1').text('Error de validación'),$('.txtmodal').addClass('ocultar'),$('.txtvalidation').removeClass('ocultar')):elem.fadeIn()})}
	}
});