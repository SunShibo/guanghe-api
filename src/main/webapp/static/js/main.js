		 	$(function() {
				$('.has_menu').hover(function() {
					$(this).find('ul').slideDown(1);
				}, function() {
					$(this).find('ul').slideUp(1);
				});
			})