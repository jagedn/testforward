<!DOCTYPE html>
<html>
<head>
<meta name="layout" content="main" />
</head>
<body>

	<g:form name="test" url="test">
		<input type="text" name="s" placeholder="Search...">
		<g:actionSubmit value="submit" />
	</g:form>

	<div id="result"></div>

	<script type="text/javascript">
		$(document).ready(
				function() {
					$("#test").on(
							"submit",
							function(e) {
								e.preventDefault();

								var $form = $(this), term = $form.find(
										"input[name='s']").val(), url = $form
										.attr("action");

								var posting = $.post(url, {
									s : term
								});

								// Put the results in a div
								posting.done(function(data) {
									$("#result").empty().append(data);
								});
							})
				});
	</script>

</body>
</html>