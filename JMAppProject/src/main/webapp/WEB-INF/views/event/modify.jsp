<%@ page  contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"> 
	</head>
	<body>
		
		이벤트 수정
		<hr/>
			<form method="post" enctype="multipart/form-data">
				이벤트 이름 : <input type="text" name=ename value="${event.ename}"/><br/>
				이벤트 사진 : <input type="file" name=esavedfile value="${event.esavedfile}"/><br/>
				이벤트 정보 : <input type="text" name=einfo value="${event.einfo}"/><br/>
				이벤트 할인가격 : <input type="number" name=eprice value="${event.eprice}"/><br/>
				이벤트 시작기간 : <input type="date" name=estart value="${event.estart}"/><br/>
				이벤트 종료기간 : <input type="date" name=eend value="${event.eend}"/><br/>
				
				<input type="submit" value="수정"/>
					<%-- <table>
						<tr>
							<td style="background-color:blue; width:100px">이벤트 이름</td>
							<td><input type="text" name="ename" style="width:600px" value="${event.ename}"/></td>
						</tr>
					
						<tr>
							<td style="background-color:blue; width:100px">식당</td>
							<td><input type="text" name="eresid" style="width:600px" value="${event.eresid}"/></td>
						</tr>
						
						<tr>
							<td style="background-color:blue; width:100px">이벤트사진</td>
							<td><input type="file" name="esavedfile" style="width:600px" value="${event.esavedfile}"/></td>
						</tr>
						
						<tr>
							<td style="background-color:blue; width:100px">이벤트 정보</td>
							<td><input type="text" name="einfo" style="width:600px" value="${event.einfo}"/></td>
						</tr>
						
						<tr>
							<td style="background-color:blue; width:100px">이벤트 메뉴</td>
							<td><input type="text" name="emlname" style="width:600px" value="${event.emlname}"/></td>
						</tr>
						
						<tr>
							<td style="background-color:blue; width:120px">이벤트 할인가격</td>
							<td><input type="text" name="eprice" style="width:600px" value="${event.eprice}"/></td>
						</tr>
						
						<tr>
							<td style="background-color:blue; width:100px">이벤트 시작</td>
							<td><input type="date" name="estart" style="width:600px" value="${event.estart}"/></td>
						</tr>
						
						<tr>
							<td style="background-color:blue; width:100px">이벤트 종료</td>
							<td><input type="date" name="eend" value="${event.eend}"/></td>
						</tr>
					</table>
				<input type="submit" value="수정"/> --%>
		
					
			</form>
	</body>
</html>