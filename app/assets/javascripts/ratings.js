
$(document).ready(function () {
	$('.addImageButton input').on('click', function(event) {
		event.preventDefault();
		var $newImageField = $('.imgField').find('input:first').clone();
		$newImageField.val('').appendTo('.imgField');
		$('.imgField').append($newImageField);
	});



	// $('.crossfade').slick();

})