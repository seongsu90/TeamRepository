<%@ page contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8"> 
	</head>
	<body>
		<hr/>
		<b>비밀번호 찾기</b>
		<hr/>
		<form method="post">
			아 이 디 : <input type="text" name="mid"/><br/>
			휴대폰번호 : <input type="text" name="mphone"/>${error}<br/>
			<input type="submit" value="확인"/>
		</form>
	</body>
</html>