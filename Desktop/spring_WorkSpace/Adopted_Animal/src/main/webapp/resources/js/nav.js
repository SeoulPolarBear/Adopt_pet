/**
 * 
 */

$(function(){
	$.getJSON("kinds", function(x){
		$.each(x, function(index,item){
			$(".dropdown-menu").append("<li><a class='dropdown-item' href=" + 
					`${x.kind_species}` + ">" + `${x.kind_species}` + 
					"</a></li>");
		});
	});
});