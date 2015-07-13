var ufc = {
	postForm : function() {
		$
				.ajax({
					type : "POST",
					url : "/subscription",
					data : $('#contact').find('input[name="email"]').val(),
					contentType : 'application/json',
					success : function(res) {
						if (res && res.content
								&& res.content === 'Saved successfully') {
							$("#successModal").modal('toggle');
						} else {
							$("#errorModal").modal('toggle');
						}
					},
					error : function(err) {
						$("#errorModal").modal('toggle');
					}
				});
	}
};

$(function() {
	$('.formbutton').click(function(event) {
		event.preventDefault();
		var re = /^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/
		var email  = $('#contact').find('input[name="email"]').val();
		if(email !== '' && email.match(re) ) {
			ufc.postForm();
		} else{
			$("#errorModal").modal('toggle');
		}
	});
});