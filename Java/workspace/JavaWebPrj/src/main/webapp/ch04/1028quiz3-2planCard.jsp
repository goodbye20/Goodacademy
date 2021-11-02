<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String name = request.getParameter("name");
	String price = request.getParameter("price");
	String saving = request.getParameter("saving");
	
	double d = Double.parseDouble(saving);
	// 문자열인 saving을 실수로 변환
	saving = String.format("%.2f", d);
	// 소수점 두자리까지 버림
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	.plan-item {
		background-color: #fff;
		border-radius: 10px;
		height: 95%;
	}
	.plan-item:hover {
		animation: background-color-fix;	
		animation-fill-mode: forword;
		animation-duration: 0.1s;
	}
	@media (max-width: 800px){
		.plan-item {
			width: 362px;
			color: black;
		}
	}
	key-frames background-color-fix {
		100% {
			background-color: #AEEA00;
		}
	}
	.choose-header {
		font-size: 2.4rem;
		color: crimson;
	}
	
	@media(max-width: 1180px){
		.choose-header {
			margin: 10px 0 0 0;
			font-size: 1.9rem;
		}
	}
	
	.price, .price-description {
		color: black;
	}
</style>
</head>
<body>
	<a href="#" class="plan-item">
		<h3 class="choose-header"><%=name %></h3>
		<p class="price">
			<strong>$<%=price %></strong>
		</p>
		<p class="price-description">
			(당신은 매년 $<%=saving %>를 절약할 수 있습니다.)
		</p>
	</a>
</body>
</html>