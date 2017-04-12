
$('.button, .closeButton, .addButton, .record').on('click', function(e) {
	e.preventDefault();
	var id = e.target.dataset['id'];
	if (typeof id == 'undefined')
		id = e.target.parentNode.dataset['id'];
	var target = '.detail#' + id + ', html, body';
	$(target).toggleClass('open');
});