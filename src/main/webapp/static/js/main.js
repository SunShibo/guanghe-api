
			$(function() {
				$('.has_menu').hover(function() {
					$(this).find('ul').slideDown(1);
				}, function() {
					$(this).find('ul').slideUp(1);
				});
			})

			/*
			 获取地址栏参数，name:参数名称
			 * */
			function getUrlParms(name){
				var reg = new RegExp("(^|&)"+ name +"=([^&]*)(&|$)");
				var r = window.location.search.substr(1).match(reg);
				if(name){
					if(r!=null)
						return decodeURI(r[2]);
					return null;
				} else{
					r = window.location.search.substr(1);
					if(r!=null)
						return decodeURI(r);
					return null;
				}
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
			function oneTab(arr){
				var newArr=[];
				for (var i=0;i<arr.length;i++) {
					if(arr[i].pid==0)newArr.push(arr[i]);
				}
				return newArr.sort(compare("sort"));
			}
			function twoTab(arr,pid){
				var newArr=[];
				for (var i=0;i<arr.length;i++) {
					if(arr[i].pid==pid)newArr.push(arr[i]);
				}
				return newArr.sort(compare("sort"));
			}
			var compare = function (prop) {
				return function (obj1, obj2) {
					var val1 = obj1[prop];
					var val2 = obj2[prop];if (val1 < val2) {
						return -1;
					} else if (val1 > val2) {
						return 1;
					} else {
						return 0;
					}
				}
			}

			function urlReplace(t,v,p){
				if(p.indexOf(t)==-1) return p+"&"+t+"="+v;
				var old  = t + "=" + p.split(t+'=')[1].split("&")[0];
				var New  = t + "=" + v;
				return p.replace(old,New);
			}