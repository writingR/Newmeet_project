<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="EUC-KR"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
</head>
<body>
<h1>������ ��������</h1>
	
	<h2>���� ��ǥ �̹��� ���� �� ���ӻ���</h2>
		<br><br>
		<form id="form" enctype="multipart/form-data">
			<table>
			<thead>
			<tr>
				<td><input type="file" id="m_img" name="m_img" value="null"></td>
			</tr>
				
			</thead>
			<tbody id="moim">
			
			</tbody>
			</table>
			
		</form>
		
                	
					
</body>
<script>

	$(document).ready(function() {
		var html = '';
		html += '<tr>';
		html += '<td><input type="hidden" id="small_idx" name="small_idx" value="' + sessionStorage.getItem("small_idx") + '"></td>';
		html += '</tr>';
		html += '<tr>';
		html += '<td><input type="hidden" id="m_name" name="m_name" value="' + sessionStorage.getItem("m_name") + '"></td>';
		html += '</tr>';
		html += '<tr>';
		html += '<td><input type="text" id="m_cont" name="m_cont" value="' + sessionStorage.getItem("m_cont").replace(/\"/g,'&quot;') + '"></td>';
		html += '</tr>';
		html += '<tr>';
		html += '<td><input type="submit" value="���� ����"></td>';
		html += '</tr>';

		$('#moim').html(html);
	});

	
	$('#form').submit(function(){
		 // Get form
     // var form = $('#form')[0];

       // Create an FormData object 
       var formData = new FormData();
        formData.append("small_idx",$('#small_idx').val());
        formData.append("m_name",$('#m_name').val());
		formData.append("m_cont",$('#m_cont').val());
		formData.append("m_img",$('#m_img')[0].files[0]);
		if($('#m_img')[0].files[0] == null){
			alert('������ �������ּ���');
		}
		
		$.ajax({
			url : 'http://localhost:8080/nm/meeting',
			type : 'POST',
			data : formData,
           processData: false,
           contentType: false,
			success : function(data) {
				sessionStorage.setItem("m_idx",data);
				
				alert(data+':��Ȯ�ϰ� ����');
				location.href="/nm/moimList";
				
			}
			
		});
		return false; 		
	});
</script>
</html>