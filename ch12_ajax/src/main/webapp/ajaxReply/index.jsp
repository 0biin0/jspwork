<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>댓글 보기</title>
</head>
<style>
	body{text-ailgn:center;}
	img{width:600px;}
</style>
<body>
	<img src="../resources/img1.png">
	<table>
	<tr>
	<thead>
		<th>댓글 작성</th>
		<td>
		<textarea rows="3" cols="50"></textarea>
		</td>
		<td><button id="btn1">댓글등록</button>
		</td>
		</tr>
		</thead>
		<tbody>
		</tbody>
	</table>
	<script type="text/javascript">
		$(() => {
			selectReplayList();
		})
		function selectReplayList() {
			$.ajax({
				url:"rlist.bo",
				data: {bnum: 1}, //원글의 num값을 넘겨준다
				success:function(result) {
					console.log(result);
				},
				error:function(){
					console.log("ajax 통신 실패");
				}
			})
		}
	</script> 
</body>
</html>