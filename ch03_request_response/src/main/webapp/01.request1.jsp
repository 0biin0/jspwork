
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>request1</title>
</head>
<body>
	<h1>Request Ex1</h1>
	<form action="01.2.request.jsp">
		이름 : <input name="name"><br>
		학번 : <input name="studentNum"><br>
		성별 : 남자<input type="radio" name = "gender" value="남">&emsp;
		 	  여자<input type="radio" name = "gender" value="여"><p/>
		전공 : <select name="major">
				<option value="국문학과">국문학과</option>
				<option value="영문학과">영문학과</option>
				<option value="수학과">수학과</option>
				<option value="컴퓨터학과">컴퓨터학과</option>
				<option value="경제학과">경제학과</option>
		</select><p/>
		취미 : <input type="checkbox" name="hobby" value="여행">여행 &emsp;
			  <input type="checkbox" name="hobby" value="게임">게임 &emsp;
			  <input type="checkbox" name="hobby" value="야구">야구 &emsp;
			  <input type="checkbox" name="hobby" value="운동">운동 &emsp;
			  <input type="checkbox" name="hobby" value="영화">영화 <p/>
			  <input type="submit">	
		
	</form>
</body>
</html>