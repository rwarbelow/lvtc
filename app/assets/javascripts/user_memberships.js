$(document).ready(function(){
	$('#add-member').on('click', function(e){
		e.preventDefault;
		var count = $('.family-membership > div').size() + 1
		$('.family-membership').append('<div class="person"><div style="float: left; padding-left: 25px"><label for="person"><strong>Member #' + count + '</strong></label><input type="text" name="firstname[]" id="firstname1" style="width: 20em" placeholder="First Name"/></div><div style="float:left; padding-left: 25px"><label for="" style="color:white">&nbsp;</label><input type="text" size="20" name="lastname[]" id="lastname1" style="width: 20em" placeholder="Last Name"/></div><div style="float:left; padding-left: 25px"><label for="birthdate">Date of Birth</label><input type="date" size="20" name="birthdate[]" value="2000-01-01" style="width: 20em"/></div><div style="float: left; padding-left: 25px;width: 20em;height:100px"><label for="gender">Gender</label><select name="gender[]" id="gender"><option value="">Select from dropdown</option><option value="female">Female</option><option value="male">Male</option></select></div></div>')
	})
	var position = 
	$('#delete-member').on('click', function(){
		$('.person:last').remove()
	})
})




