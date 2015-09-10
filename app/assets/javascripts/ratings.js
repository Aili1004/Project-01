
$(document).ready(function () {
	
	$('.slick').slick();

	if ($('.map-canvas').length <= 0) {
		console.log($('.map-canvas').length);
    	return;
  	}

	$(".google-map-address").on ("click", function(event) {

		// console.log($('.map-canvas').length);

		var address = $("div.google-map-address").text();
		// console.log("address: " + address);

		var mapCanvas = document.getElementsByClassName('map-canvas')[0];
		console.log(mapCanvas);

		var geocoder = new google.maps.Geocoder();

		console.log('here is the address', address);
		geocoder.geocode( { 'address': address }, function(results, status) {
			
			var location = results[0].geometry.location;

			var mapOptions = {
				center: new google.maps.LatLng(location.lat(), location.lng()),
				zoom: 12,
				mapTypeId: google.maps.MapTypeId.ROADMAP
			};

			var map = new google.maps.Map(mapCanvas, mapOptions);

			var marker = new google.maps.Marker({
				position: { lat: location.lat(), lng: location.lng() },
				map: map,
				label: 'M' 
			});

			 var infowindow = new google.maps.InfoWindow({
			  	content: "<h1>My Marker</h1><p>This is my marker</p>"
			 });

			marker.addListener('click', function() {
				infowindow.open(map, marker);
			});

		});

  	});
	   
});