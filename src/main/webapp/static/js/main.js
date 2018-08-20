		 	$(function() {
				$('.has_menu').hover(function() {
					$(this).find('ul').slideDown(1);
				}, function() {
					$(this).find('ul').slideUp(1);
				});
			});

			$(function() {
				$('.has_menu').hover(function() {
					$(this).find('ul').slideDown(1);
				}, function() {
					$(this).find('ul').slideUp(1);
				});
			})

			//获取地址栏参数，name:参数名称
			function getUrlParms(name){
				var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
				var r = window.location.search.substr(1).match(reg);
				if(r!=null)
					return unescape(r[2]);
				return null;
			}
			//时间转换
			function fmtDate(obj){
				var date =  new Date(obj);
				var y = 1900+date.getYear();
				var m = "0"+(date.getMonth()+1);
				var d = "0"+date.getDate();
				return y+"-"+m.substring(m.length-2,m.length)+"-"+d.substring(d.length-2,d.length);
			}
			function trim(str,is_global){
				var result;
				result = str.replace(/(^\s+)|(\s+$)/g,"");
				if(is_global.toLowerCase()=="g")
				{
					result = result.replace(/\s/g,"");
				}
				return result;
			}
			function dealHtml(str){
				return str.split('< ').join("<");
			}
