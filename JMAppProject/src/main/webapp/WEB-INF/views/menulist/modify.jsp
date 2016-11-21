<%@ page  contentType="text/html;charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
	</head>
	<body>
		
		메뉴리스트 수정
		<hr/>
			<form method="post">
			<table>
				<tr>
					<td style="background-color:skyblue; width:120px;">메뉴가격</td>
					<td><input type="number" name="mlprice" value="${menuList.mlprice}" style="width:600px"/></td>
				</tr> 
				<tr>
					<td style="background-color:skyblue; width:120px;">메뉴 정보</td>
					<td><input type="text" name="mlinfo" value="${menuList.mlinfo}" style="width:600px"/></td>
				</tr>   
				<tr>
					<td style="background-color:skyblue; width:120px;">기존 메뉴사진</td>
					<td><img src="showPhoto?mlsavedfile=${menuList.mlsavedfile}" width="100px"/></td>
				</tr>
				<tr>
					<td style="background-color:skyblue; width:120px;">새 메뉴사진</td>
					<td><input type="file" name="mlsavedfile" value="${menuList.mlsavedfile}"/></td>
				</tr>
				<tr>
					<td style="background-color:skyblue; width:120px;">초이스</td>
					<td>
						<input type="radio" name="mlishot" value="true"/>핫
						<input type="radio" name="mlishot" value="false"/>일반
					</td>
				</tr>
			</table>
				<input type="submit" value="수정"/>
			</form>
			<%-- 
			메뉴가격 : <input type="number" name="mlprice" value="${menuList.mlprice}"/><br/>
			메뉴 정보 : <input type="text" name="mlinfo" value="${menuList.mlinfo}"/><br/>
			메뉴 사진 : <input type="file" name="mlsavedfile" value="${menuList.mlsavedfile}"/><br/>
			핫메뉴 선택 : <input type="radio" name="mlishot" value="true"/>핫
					   <input type="radio" name="mlishot" value="false">일반<br/>
					   --%>
	</body>
</html>