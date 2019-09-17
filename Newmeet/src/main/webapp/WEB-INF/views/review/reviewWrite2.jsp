<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<title>뉴밋</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
<link href="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.css" rel="stylesheet">
<link id="themecss" rel="stylesheet" type="text/css" href="//www.shieldui.com/shared/components/latest/css/light/all.min.css" />
<%@include file="/WEB-INF/views/frame/link.jsp"%>

</head>
<body>
	<%@include file="/WEB-INF/views/frame/header.jsp"%>
	<%@include file="/WEB-INF/views/frame/nav.jsp"%>


	<div class="site-wrap">

		<div class="site-section">
			<div class="container">
				<div class="row">
					<div class="col-md-12">
						<h2 class="h3 mb-3 text-black">후기 작성</h2>
					</div>
					<div class="col-md-7">

						<form action="${pageContext.request.contextPath}/review/writeProcess" method="post">
							<input type="hidden" value="${mNum}" name="mNum" required>
							<input type="hidden" name="img" id="images">
							<input type="hidden" name="star"  step="0.1" value="0" id="starScore">
							
							<div class="p-3 p-lg-5 border">

								<div class="form-group row">
									<div class="col-md-12">
										<label for="c_subject" class="text-black">제목 </label> <input
											type="text" class="form-control" id="c_subject" name="title"
											required>
									</div>
								</div>

								<div class="form-group row">
									<div class="col-md-12">
										<label for="c_message" class="text-black">내용 </label>
										<textarea name="content" id="summernote" cols="30"
											rows="7" class="form-control" required></textarea>
									</div>
								</div>

								

								<div class="form-group row">
									<div class="col-lg-12">
										<input type="submit" class="btn btn-info btn-lg btn-block"
											value="작성하기">
									</div>
								</div>
							</div>
						</form>
					</div>
					
					<div class="col-md-5 ml-auto">
						<div class="p-4 border mb-3">
							<span class="h6 text-uppercase">평가</span><span id="score" class="h6 text-uppercase" style="margin-left: 10px">0</span><p></p>
							<div id="rate"></div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>

	<%@include file="/WEB-INF/views/frame/footer.jsp"%>
	<%@include file="/WEB-INF/views/frame/sc.jsp"%>
	<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.11.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/summernote/0.8.12/summernote-bs4.js"></script>
<script src="http://www.shieldui.com/shared/components/latest/js/shieldui-all.min.js"></script>

	<script>
		var img = '${pageContext.request.contextPath}/static/img/noimg.jpg';
		$('#images').val(img);
		$(document).ready(function() {
			$('#summernote').summernote({
				height : 500,
				minHeight : null, // set minimum height of editor
				maxHeight : 400, // set maximum height of editor
				focus : true, // set focus to editable area after initializing summernote
				callbacks : {
					onImageUpload : function(files, editor, welEditable) {
						for (var i = files.length - 1; i >= 0; i--) {
							sendFile(files[i], this);
						}

					}
				}
			});

			function sendFile(file, el) {
				var form_data = new FormData();
				form_data.append('file', file);
				$.ajax({
					data : form_data,
					type : "POST",
					url : '/nm/image',
					cache : false,
					contentType : false,
					enctype : 'multipart/form-data',
					processData : false,
					success : function(url) {
						$(el).summernote('editor.insertImage', url);
						img = url;
						$('#images').val(img);
					}
				});
			}
			

			$('#rate').click(function(){

				$('#score').text($(this).swidget().value().toFixed(1));
				$('#starScore').val($(this).swidget().value().toFixed(1));				
				
			});




			
		});

		initializeRatings();
	    function initializeRatings() {
	       
		    $('#rate').shieldRating({
		    	max: 5,
	            step: 0.1,
	            value: 0,
	            markPreset: false
		    });
	        
	    }
		
	</script>


</body>


</html>