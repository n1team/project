$(document).ready(function() {
			$('#summernote').summernote({
				height : 550,
				lang : 'ko-KR'
			});
		});

		$(document).ready(function() {
			$('#clear').click(function() {
				$('#summernote').summernote('reset');
				$("#msg").val("");

			});
		});

		$(document).ready(function() {
			$('#list').click(function() {
				$('.col-lg-10').toggleClass('list1');
				$('.col-lg-2').toggleClass('list2');
			});
		});
		$(document).ready(function() {
			$('#newnote2').click(function() {
				$('#lis').click()
			});
		});