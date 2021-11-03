<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	section {
		display: flex;
		padding: 20px;
		background-color: #666666;
		align-items: center;
		justify-content: center;
	}
	
	.snip {
		font-family: 'Roleway', Arial, sans-serif;
		position: relative;
		overflow: hidden;
		margin: 10px;
		min-width: 230px;
		max-width: 315px;
		width: 100%;
		background-color: #fff;
		text-align: left;
		color: #000;
		box-shadow: 0 0 5px rgba(0,0,0,0.15);
		font-size: 1rem;
		transform: translateZ(0);
		perspective: 20em;
	}
	
	.snip * {
		 box-sizing: border-box;
		 transition: all 0.3s ease-out;
	}
	
	.snip img {
		max-width: 100%;
		vertical-align: top;
		position: relative;
	}
	
	.snip .add-to-cart {
		position: absolute;
		top: 0;
		right: 0;
		padding-right: 10px;
		color: #fff;
		font-weight: 700;
		text-transform: uppercase;
		font-size: 0.9rem;
		opacity: 0;
		background-color: $409ad5;
		transform: rotateX(-90deg);
		transform-orgin: 100% 0;
	}
	
	.snip .add-to-cart i {
		display: inline-block;
		margin-right: 10px;
		width: 40px;
		line-height: 40px;
		text-align: center;
		background-color: #164666;
		color: #fff;
		font-size: 1.4rem;
	}
	
	.snip div {
		padding: 20px;
	}
	.snip h3, .snip p {
		margin: 0;
	}
	
	.snip h3 {
		font-size: 1.5rem;
		font-weight: 700;
		margin-bottom: 10px;
		text-transform: uppercase;
	}
	
	.snip p {
		font-size: 0.9rem;
		letter-spacing: 1px;
		font-weight: 400;
		height: 50px;
	}
	
	.snip .price {
		font-weight: 500;
		font-size: 1.5rem;
		line-height: 48px;
		letter-spacing: 1px;
	}
	
	.snip .price s {
		margin-right: 5px;
		opacity: 0.5;
		font-size: 0.9rem;
	}
	
	.snip a {
		position: absolute;
		top: 0;
		bottom: 0;
		left: 0;
		right: 0;
	}
	
	.snip:hover .add-to-cart, .snip.hover .add-to-cart {
		opacity: 1;
		transform: rotateX(0deg);
	}
	.snip:hover .add-to-cart, .snip.hover .add-to-cart i {
		background-color: #2980b9;
	}
</style>
</head>
<body>
	<section>
		<jsp:include page="1101quiz-selCard-2.jsp">
			<jsp:param value="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample85.jpg" name="img"/>
			<jsp:param value="Pudol Doux" name="name"/>
			<jsp:param value="All this mordern technology just makes people try to everything at once." name="desc"/>
			<jsp:param value="$24.00" name="price"/>
			<jsp:param value="$19.00" name="discount"/>
			<jsp:param value="1" name="link"/>
		</jsp:include>
		<jsp:include page="1101quiz-selCard-2.jsp">
			<jsp:param value="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample96.jpg" name="img"/>
			<jsp:param value="Kurie Secco" name="name"/>
			<jsp:param value="If you do the job badly enough sometimes you don't get asked to do it again." name="desc"/>
			<jsp:param value="$24.00" name="price"/>
			<jsp:param value="$19.00" name="discount"/>
			<jsp:param value="2" name="link"/>
		</jsp:include>
		<jsp:include page="1101quiz-selCard-2.jsp">
			<jsp:param value="https://s3-us-west-2.amazonaws.com/s.cdpn.io/331810/sample92.jpg" name="img"/>
			<jsp:param value="Zosaisan Invec" name="name"/>
			<jsp:param value="If your knees aren't green by the end of the day. you ought to seriously re-exammine your life." name="desc"/>
			<jsp:param value="$24.00" name="price"/>
			<jsp:param value="$19.00" name="discount"/>
			<jsp:param value="3" name="link"/>
		</jsp:include>
	</section>
</body>
</html>