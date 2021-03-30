<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>test</title>
</head>
<body>
	<script type="text/javascript">
		function checkOnlyOne(a) { // 전화번호에 숫자만 입력 가능하도록
			var obj = document.getElementsByName("Phone");
			for (var i = 0; i < obj.length; i++) {
				if (obj[i] != a) {
					obj[i].checked = false;
				}
			}
		}
	</script>

	<script src="//code.jquery.com/jquery-1.11.0.min.js"></script>
	<script>
		//체크박스 .prop써서 하나만 클릭되게 하기
		$(document).ready(
				function() {
					$('input[type="checkbox"][name="ck"]').click(
							function() {
								if ($(this).prop('checked')) {
									$('input[type="checkbox"][name="ck"]')
											.prop('checked', false);
									$(this).prop('checked', true);
								}
							});
				});
	</script>

	<script src="https://code.jquery.com/jquery-1.12.4.min.js"
		integrity="sha256-ZosEbRLbNQzLpnKIkEdrPv7lOy9C27hHQ+Xp8a4MxAQ="
		crossorigin="anonymous"></script>
	<script type="text/javascript">
		// 이름칸에 한글만 입력하도록
		function onlyKorean(inputId) {
			var str = document.getElementById(inputId).value;
			for (i = 0; i < str.length; i++) {
				if (!((str.charCodeAt(i) > 0x3130 && str.charCodeAt(i) < 0x318F) || (str
						.charCodeAt(i) >= 0xAC00 && str.charCodeAt(i) <= 0xD7A3))) {
					alert("한글만 입력해주세요");
					document.getElementById(inputId).value = '';
				}
			}
		}
	</script>
	<script type="text/javascript">
		$(document).ready(function() { // prop 체크박스 하나만 사용
			onlyOneCheck("checkFail");
		});
	</script>
</head>

<form action="result.jsp" method="post">
	<table>
		<tr>
			<th>이름:</th>
			<td><input type="text" name="name" id="name" value="" size="10"
				maxlength="8" onkeyup="javascript:return onlyKorean('name');">
			</td>
		<tr>
			<th>주민번호:</th>
			<td><input type="text" name="KN1" maxlength="6"
				onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> - <input
				type="text" name="KN2" maxlength="1"
				onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> ******</td>
		<tr>
			<th>통신사:</th>
			<td data-group="checkFail">
				<div clas="check"></div>
				<form name="ck" method="get">
					SKT<input type="checkbox" name="ck" value="SKT"
						onclick='checkOnlyOne(this)' /> KT<input type="checkbox" name="ck"
						value="KT" onclick='checkOnlyOne(this)' /> LG<input
						type="checkbox" name="ck" value="LG" onclick='checkOnlyOne(this)' />
					알뜰<input type="checkbox" name="ck" value="etc"
						onclick='checkOnlyOne(this)' /> <select name="language">
						<option value="none">=== 선택 ===</option>
						<option value="ASK">알뜰 SK</option>
						<option value="AKT">알뜰 KT</option>
						<option value="ALG">알뜰 LG</option>
					</select>
					<tr>
						<th>전화번호:</th>
						<td><input type="text" name="phone1" maxlength="3"
							onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> - <input
							type="text" name="phone2" maxlength="4"
							onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /> - <input
							type="text" name="phone3" maxlength="4"
							onKeyup="this.value=this.value.replace(/[^0-9]/g,'');" /></td>
					<tr>
						<th>Email:</th>
						<td><input type="text" name="UserEmail" maxlength="30"
							style="ime-mode: disabled;" /> @ <select name="email_2">
								<option value="noneEmail">=== 선택 ===</option>
								<option value="Google">Google.com</option>
								<option value="Daum">Daum.net</option>
								<option value="Naver">naver.com</option>
						</select> 직접입력 : <input type="emailadress" style="ime-mode: disabled;" />
					</tr>
					<tr>
						<td colspan="2"><input button type="submit" value="전송"></td>
					</tr>
	</table>
</form>
</body>
</html>




