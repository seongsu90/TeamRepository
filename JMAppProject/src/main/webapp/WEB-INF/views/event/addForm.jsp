<%@ page  contentType="text/html;charset=UTF-8"%>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
	
		이벤트 생성
		<hr/>
			<form method="post">
				이름 : <input type="text" name="ename"/><br/>	
				식당명 : <input type="text" name="eResid"/><br/>
				이벤트 사진 : <input type="file" name="savedfile"/><br/>
				이벤트 정보 : <input type="text" name="einfo"/><br/>
				이벤트 메뉴 이름 : <input type="text" name="eMlname"/><br/>
				이벤트 할인가격 : <input type="text" name="eprice"/><br/>
				이벤트 시작기간 : <input type="datetime" name="estart"/><br/>
				이벤트 종료기간 : <input type="datetime" name="eend"/><br/>
				
					
				<input type="submit" value="생성"/>
			</form>
	</body>
</html>