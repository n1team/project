	$(document).ready(function() {
			$('#summernote').summernote({
				height : 550,
				lang : 'ko-KR',
// 				airMode: true
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
			$('#save').click(function() {
				$('#lis').click()
			});
		});
		$(document).ready(function() {
			$('#newnote4').click(function() {
				$('#lis').click()
			});
		});
		$(document).ready(function() {
			$('#modify').click(function() {
				$('#mo2').click()
			});
		});