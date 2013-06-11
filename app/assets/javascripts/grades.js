$(function(){
	$("#edit_grade").on('click',function(evt) {
		var grade = $("#grade_name").val();
		window.location = "/grades/"+grade+"/marksheet/edit";
		evt.preventDefault();
	});
})