		 	$(function() {
				$('.has_menu').hover(function() {
					$(this).find('ul').slideDown("1500");
				}, function() {
					$(this).find('ul').slideUp("fast");
				});
			})