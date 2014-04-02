$ ->
	$('.alert').addClass('animated slideInRight');
	
	$(".alert a.close").click ->
		$(this).parent().addClass('animated fadeOutRight');
		
	$('.alert').delay(10000).fadeOut('slow')