/**
 * 
 */	
$(function(){
	function searchAddress(){
		$("#distanceaddr").click(function(){
			new daum.Postcode({
		        oncomplete: function(data) {
		            $("#postaddr").val(data.zonecode);
		            $("#distanceaddr").val(data.roadAddress);
		        }
		    }).open();
		});
	}
	alert("성공");
	});