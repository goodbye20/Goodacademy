<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	double mainPrice = 10.00;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	body {
		font-size: 1rem;
		line-height: 1.4;
		margin: 0;
		background-color: #eee;
	}
	
	a{
		text-decoration: none;
	}
	
	main {
		margin: 67px 0 0 0;
	}
	
	@media(max-width: 650px;){
		main {
			margin: 150px 0 0 0;
		}
	}
	
	.plan {
		width: 100%;
		text-align: center;
	}
	
	.description {
		font-size: 1.6rem;
	}
	
	.box-container {
		display: grid;
		height: 500px;
		justify-content: center;
		grid-template-columns: 350px 350px 350px;
		background-color: #37af65;
		gap: 30px;
		align-items: center;
	}
	
	@media (max-width : 1100px){
		.box-container {
			grid-template-columns: 272px 272px 272px;
			height: 382px;
		}
	}
	@media (max-width : 950px){
		.box-container {
			grid-template-columns: 238px 238px 238px;
		}
	}
	@media (max-width : 800px){
		.box-container {
			display: flex;
			flex-direction: column;
			height: 750px; 
		}
	}
</style>
</head>
<body>
	<main>
		<section class="plan">
			<h1 class="description">지금 결제하세요</h1>
			<p>플랜 선택</p>
			<div class="box-container">
				<jsp:include page="1028quiz3-2planCard.jsp">
					<jsp:param name="name" value="월 플랜"></jsp:param>
					<jsp:param name="price" value="<%=(mainPrice-0.01) %>"></jsp:param>
					<jsp:param name="saving" value="<%=0 %>"></jsp:param>
				</jsp:include>
				<jsp:include page="1028quiz3-2planCard.jsp">
					<jsp:param name="name" value="분기 플랜"></jsp:param>
					<jsp:param name="price" value="<%=(((mainPrice*3)*9/10)-0.01) %>"></jsp:param>
					<jsp:param name="saving" value="<%=((mainPrice-0.01)*12)-((((mainPrice*3)*9/10)-0.01)*4) %>"></jsp:param>
				</jsp:include>
				<jsp:include page="1028quiz3-2planCard.jsp">
					<jsp:param name="name" value="연간 플랜"></jsp:param>
					<jsp:param name="price" value="<%=(((mainPrice*12)*8/10)-0.01) %>"></jsp:param>
					<jsp:param name="saving" value="<%=((mainPrice-0.01)*12)-(((mainPrice*12)*8/10)-0.01) %>"></jsp:param>
				</jsp:include>
			</div>
		</section>
	</main>
</body>
</html>