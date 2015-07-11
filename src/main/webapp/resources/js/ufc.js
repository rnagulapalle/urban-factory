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
		ufc.postForm();
	});
});