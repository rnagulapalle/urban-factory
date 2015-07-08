var ufc = {
	postForm : function() {
		console.log('submit');
		$
				.ajax({
					type : "POST",
					url : "/subscription",
					data : 'raj.jsp@gmail.com',
					contentType : 'application/json',
					success : function(res) {
						if (res && res.content
								&& res.content === 'Saved successfully') {
							$("#successModal").modal('toggle');
						} else{
							$("#errorModal").modal('toggle');
						}
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