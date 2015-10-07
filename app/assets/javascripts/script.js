/*$(document).ready(function() {
    $('li.info').hover(function(){
        $(this).fadeTo('fast', 0.4);	
    }, function(){
        $(this).fadeTo('fast', 1);
    });   
	$('li.info').css('cursor', 'pointer');
	$('li.info').click(function(){
		$('#info').css({'color': '#5a5a5a'});
		$('#contact').css({'color': '#d3d3d3'});
		$('#media').css({'color': '#d3d3d3'});
		$('#login').css({'color': '#d3d3d3'});	
		$('#inhouse').css({'color': '#d3d3d3'});
		$('#scores').css({'color': '#d3d3d3'});	
		$('#edit').css({'color': '#d3d3d3'});	
		$('div.wrapp_info').show();
		$('div.wrapp_start').hide();		
		$('div.wrapp_contact').hide();		
		$('div.wrapp_media').hide();		
		$('div.wrapp_login').hide();
		$('div.wrapp_inhouse').hide();
		$('div.wrapp_scores').hide();	
		$('div.wrapp_edit').hide();	
	});
	
	
    $('li.contact').hover(function(){
        $(this).fadeTo('fast', 0.4);  
    }, function(){
        $(this).fadeTo('fast', 1);
    });   
	$('li.contact').css('cursor', 'pointer');
	$('li.contact').click(function(){
		$('#contact').css({'color': '#5a5a5a'});
		$('#info').css({'color': '#d3d3d3'});
		$('#media').css({'color': '#d3d3d3'});
		$('#login').css({'color': '#d3d3d3'});	
		$('#inhouse').css({'color': '#d3d3d3'});	
		$('#scores').css({'color': '#d3d3d3'});	
		$('#edit').css({'color': '#d3d3d3'});	
		$('div.wrapp_contact').show();
		$('div.wrapp_start').hide();		
		$('div.wrapp_info').hide();		
		$('div.wrapp_media').hide();		
		$('div.wrapp_login').hide();
		$('div.wrapp_inhouse').hide();
		$('div.wrapp_scores').hide();	
		$('div.wrapp_edit').hide();	
	});
	


    $('li.media').hover(function(){
        $(this).fadeTo('fast', 0.4);  
    }, function(){
        $(this).fadeTo('fast', 1);
    });   
	$('li.media').css('cursor', 'pointer');
	$('li.media').click(function(){
		$('#media').css({'color': '#5a5a5a'});
		$('#info').css({'color': '#d3d3d3'});
		$('#contact').css({'color': '#d3d3d3'});
		$('#login').css({'color': '#d3d3d3'});	
		$('#inhouse').css({'color': '#d3d3d3'});	
		$('#scores').css({'color': '#d3d3d3'});	
		$('#edit').css({'color': '#d3d3d3'});	
		$('div.wrapp_media').show();
		$('div.wrapp_start').hide();		
		$('div.wrapp_info').hide();		
		$('div.wrapp_contact').hide();		
		$('div.wrapp_login').hide();
		$('div.wrapp_inhouse').hide();
		$('div.wrapp_scores').hide();	
		$('div.wrapp_edit').hide();	
	});
	


    $('li.login').hover(function(){
        $(this).fadeTo('fast', 0.4);  
    }, function(){
        $(this).fadeTo('fast', 1);
    });   	
	$('li.login').css('cursor', 'pointer');
	$('li.login').click(function(){
		$('#login').css({'color': '#5a5a5a'});
		$('#contact').css({'color': '#d3d3d3'});
		$('#media').css({'color': '#d3d3d3'});
		$('#info').css({'color': '#d3d3d3'});	
		$('#inhouse').css({'color': '#d3d3d3'});	
		$('#scores').css({'color': '#d3d3d3'});	
		$('#edit').css({'color': '#d3d3d3'});	
		$('div.wrapp_login').show();
		$('div.wrapp_start').hide();		
		$('div.wrapp_info').hide();		
		$('div.wrapp_contact').hide();		
		$('div.wrapp_media').hide();
		$('div.wrapp_inhouse').hide();
		$('div.wrapp_scores').hide();	
		$('div.wrapp_edit').hide();	
	});
	
	
	
	$('li.start_page').css('cursor', 'pointer');	
	$("#start_page").click(function(){
		$('#info').css({'color': '#5a5a5a'});
		$('#contact').css({'color': '#5a5a5a'});
		$('#media').css({'color': '#5a5a5a'});
		$('#login').css({'color': '#5a5a5a'});	
		$('#inhouse').css({'color': '#5a5a5a'});
		$('#scores').css({'color': '#5a5a5a'});	
		$('#edit').css({'color': '#5a5a5a'});	
		$('div.wrapp_start').show();
		$('div.wrapp_info').hide();		
		$('div.wrapp_contact').hide();		
		$('div.wrapp_media').hide();
		$('div.wrapp_login').hide();
		$('div.wrapp_inhouse').hide();		
		$('div.wrapp_scores').hide();	
		$('div.wrapp_edit').hide();	
	});
	
	
	
	$('li.inhouse').hover(function(){
        $(this).fadeTo('fast', 0.4);  
    }, function(){
        $(this).fadeTo('fast', 1);
        });
	$('li.inhouse').css('cursor', 'pointer');	
	$("li.inhouse").click(function(){
		$('#info').css({'color': '#d3d3d3'});
		$('#contact').css({'color': '#d3d3d3'});
		$('#media').css({'color': '#d3d3d3'});
		$('#login').css({'color': '#d3d3d3'});	
		$('#inhouse').css({'color': '#5a5a5a'});	
		$('#scores').css({'color': '#d3d3d3'});	
		$('#edit').css({'color': '#d3d3d3'});	
		$('div.wrapp_start').hide();
		$('div.wrapp_info').hide();		
		$('div.wrapp_contact').hide();		
		$('div.wrapp_media').hide();
		$('div.wrapp_login').hide();
		$('div.wrapp_inhouse').show();	
		$('div.wrapp_scores').hide();	
		$('div.wrapp_edit').hide();		
	});
	
	
	$('li.scores').hover(function(){
        $(this).fadeTo('fast', 0.4);  
    }, function(){
        $(this).fadeTo('fast', 1);
        });
	$('li.scores').css('cursor', 'pointer');	
	$("li.scores").click(function(){
		$('#info').css({'color': '#d3d3d3'});
		$('#contact').css({'color': '#d3d3d3'});
		$('#media').css({'color': '#d3d3d3'});
		$('#login').css({'color': '#d3d3d3'});	
		$('#inhouse').css({'color': '#d3d3d3'});
		$('#scores').css({'color': '#5a5a5a'});	
		$('#edit').css({'color': '#d3d3d3'});
		$('div.wrapp_start').hide();
		$('div.wrapp_info').hide();		
		$('div.wrapp_contact').hide();		
		$('div.wrapp_media').hide();
		$('div.wrapp_login').hide();
		$('div.wrapp_inhouse').hide();	
		$('div.wrapp_scores').show();	
		$('div.wrapp_edit').hide();		
	});
	
	
	$('li.edit').hover(function(){
        $(this).fadeTo('fast', 0.4);  
    }, function(){
        $(this).fadeTo('fast', 1);
        });
	$('li.edit').css('cursor', 'pointer');	
	$("li.edit").click(function(){
		$('#info').css({'color': '#d3d3d3'});
		$('#contact').css({'color': '#d3d3d3'});
		$('#media').css({'color': '#d3d3d3'});
		$('#login').css({'color': '#d3d3d3'});	
		$('#inhouse').css({'color': '#d3d3d3'});
		$('#scores').css({'color': '#d3d3d3'});	
		$('#edit').css({'color': '#5a5a5a'});	
		$('div.wrapp_start').hide();
		$('div.wrapp_info').hide();		
		$('div.wrapp_contact').hide();		
		$('div.wrapp_media').hide();
		$('div.wrapp_login').hide();
		$('div.wrapp_inhouse').hide();	
		$('div.wrapp_scores').hide();	
		$('div.wrapp_edit').show();		
	});

});*/
