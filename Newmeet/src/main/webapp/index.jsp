<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<% response.sendRedirect("main"); %>

<!-- $('#nemail').focusout(function(){
				
				// aJax 비동기 통신 id 전송 사용 유무에 대한 결과 값을 반환
				
				$.ajax({
					url: '/nm/mem/IdCheck',
					type: 'get',
					data: {id: $(this).val() },
					success: function(data){
						alert(data);
						
						$('#idcheckmsg').html('');
						$('#idcheckmsg').removeClass('color_red');
						$('#idcheckmsg').removeClass('color_blue');
						
						if(data == 'Y'){
							$('#idcheck').prop('checked', true);
							$('#idcheckmsg').html('사용가능한 멋진 아이디 입니다.');
							$('#idcheckmsg').addClass('color_blue');
						} else {
							$('#idcheck').prop('checked', false);
							$('#idcheckmsg').html('사용중인 아이디 이거나 탈퇴한 아이디 입니다.');
							$('#idcheckmsg').addClass('color_red');
						}
						
					}
				});
			
			});
				$('#regForm').submit(function(){
					
					if(!$('#idcheck').prop('checked')){
						alert('폼양식 작성후에 회원가입이 완료됩니다.');
						return false;
					}
					
					
				}); -->
				