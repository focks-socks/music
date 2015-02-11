// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require turbolinks
//= require_tree .

$( document ).ready(function() {

	$('.artist-element').click( function(event) {
		$( ".artist-element" ).removeClass( "on" );
		$( "#" + event.target.id ).addClass( "on" );

		var id = event.target.id;
		id = id.replace("artist","");


		$.getJSON( "artist/albums/"+id, function( data ) {

		}).done(function(data) {
				var list = "";
				$.each(data, function(i, item) {
    				list = list + "<li>" + item.title + "</li>";
    			});
    			$( "#album-list" ).html("<ul>" + list + "</ul>");
				
			})
			.fail(function() {
				$( "#album-list" ).html("<li>There was an error retrieving the albums.</li>");
			});
		
	});

});
