<%@ page  contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
		
		이벤트 정보
		<hr/>
		<table style="width:570px text-align=center;">
		    <tr>
				<td style="background-color:blue; width:100px">이름</td>
				<td>${event.ename}</td>
			</tr>
			<tr>
				<td style="background-color:orange; width:100px">식당명</td>	
				<td>${event.eResid}</td>
			</tr>
			<tr>
				<td style="background-color:orange; width:100px">이벤트 사진</td>
				<td>${event.ensavedfile}</td>
			</tr>	
			<tr>
				<td style="background-color:orange; width:100px">이벤트 정보</td>
				<td>${event.einfo}</td>
			</tr>
			<tr>
				<td style="background-color:orange; width:100px">이벤트 메뉴 이름</td>
				<td>${event.eMlname}</td>
			</tr>
			<tr>
				<td style="background-color:orange; width:100px">이벤트 할인가격</td>
				<td>${event.eprice}</td>
			</tr>
			<tr>
				<td style="background-color:orange; width:100px">이벤트 시작기간</td>
				<td>${event.start}</td>
			</tr>	
			<tr>
				<td style="background-color:orange; width:100px">이벤트 종료기간</td>
				<td>${event.eend}</td>
			</tr>	
		</table>
	</body>
</html>