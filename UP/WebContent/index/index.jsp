<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ include file="../include/header.jsp" %>

<!-- jstl 태그 사용 -->
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<%@ page import="java.util.Date" %>
<c:set var="date" value="<%=new Date()%>"/>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>IU_Pasion</title>
<link rel="icon" type="image/png" href="image/pabicon.png">
<style type="text/css">
	@import url(http://fonts.googleapis.com/earlyaccess/nanumgothic.css);
	/* font-family: 'Nanum Gothic', serif; */
	* {
		padding: 0;
		margin: 0;
	}
	ul {
		list-style-type: none;
	}
	body, input, button, textarea {
		font-size: 12px;
		line-height: 1.3ec;
		font-family: 'Nanum Gothic', serif;
		color: #333;
	}
	a {
		text-decoration: none;
	}
	hr {
		display: none;
	}
	
	   /* ------------------------------------------------------------------메인------------------------------------------------------------------ */

       /* ------------------------------------------------------------------iu_pinkblue01------------------------------------------------------------------ */

	.conWrap {
		width: 100%;
		clear: both;
		margin: 10px auto 0 auto;
		z-index: 0;
		/* position: relative; 	 */		
	}
	.wrap {
		width: 100%;
		height: 100%;
	}
	.iu_pinkblue01 {
		width: 100%;
		height: 1000px;
		background: url('image/up_main/IU_MAIN_REALBG.png') center 0 no-repeat;
		position: relative;
		margin: 0 auto;
	}
	.iu_pinkblue_hover {
		width: 1144px;
		height: 761px;
		margin: 0 auto;
		top: 2.69%;
		position: relative;
	}
	.iu_pink_image {
		width: 572px;
		height: 761px;
		position: absolute;
		left: 0;			
	}

	.iu_blue_image {
		width: 572px;
		height: 761px;
		position: absolute;
		right: 0;			
	}
	.pinkblue01_drop {
		width: 228px;
		height: 740px;
		background-color: #FFF;
		padding: 10px;
		border: 1px solid #dfdfdf;		
		position: absolute;		
		top: -1.5px;
		z-index: -1;	
	}	
	#pink_drop {
		display: none;
		left: 0px;		
	}
	#pink_drop  a {
		width: 226px;
	}
	#pink_drop_title {
		width: 230px;
		height: 80px;		
		color: #FFB6C1;
		text-align: center;
		line-height: 80px;
		font-size: 35px;
		font-weight: bold;		
		padding-bottom: 10px;
		border-bottom: 1px solid #dfdfdf;
	}
	#blue_drop_title {
		width: 230px;
		height: 80px;		
		color: #6495ed;
		text-align: center;
		line-height: 80px;
		font-size: 35px;
		font-weight: bold;		
		padding-bottom: 10px;
		border-bottom: 1px solid #dfdfdf;
	}
	#blue_drop {
		display: none;
		right: 0px;			
	}
	#blue_drop  a {
		width: 226px;
	}
	.iu_pink_image:hover #pink_drop{
		display: block;
		z-index: 0;
		left: -250px;
		transition: 0.3s;
	}
	.iu_blue_image:hover #blue_drop {
		display: block;
		z-index: 0;
		right: -249px;
		transition: 0.3s;
	}
	.drop_goods {
		width: 100%;
		height: 50%;
	}
	#pink_MTM {
		width: 226px;
		height: 268.5px;
		background: url('image/up_main/IU_MTM_PINK.png') center 0 no-repeat;	
		margin: 80px auto 0 auto;
	}
	#coral_SHOES {
		width: 226px;
		height: 331px;
		background: url('image/up_main/IU_SHOES_CORAL.png') center 50px no-repeat;
		margin: 0px auto 0 auto;		
		position: absolute;	
		top: 420px;			
	}	
	#blue_HOOD {
		width: 226px;
		height: 268.5px;
		background: url('image/up_main/IU_HOOD_BLUE.png') center 0 no-repeat;		
		margin: 80px auto 0 auto;
	}	
	#blue_SHOES {
		width: 226px;
		height: 331px;
		background: url('image/up_main/IU_SHOES_BLUE.png') center 50px no-repeat;
		margin: 0 auto 0 auto;	
		position: absolute;	
		top: 420px;				
	}
	.total_pinkblue_drop{
		padding: 15px 0 0 0;
		position: relative;		
		top: 180px;
	}
	.drop_name, .drop_sale {
		display: inline-block;
		width: 170px;		
		text-align: center;
		color: #333;			
	}	
	.drop_name {
		font-size: 14px;
	}
	.drop_sale {
		font-size: 12px;
	}
		
	/* ------------------------------------------------------------------iu_pinkblue02------------------------------------------------------------------ */

	.iu_pinkblue02_01 {
		width: 1244px;
		height: 821px;
		background: url('image/up_main/IU_BLUE_IMAGE.png') center 0 no-repeat;
		margin: 0 auto;
		z-index: 1
	}
	.iu_pinkblue02_02 {
		width: 1480px;
		height: 764px;
		background: url('image/up_main/IU_BLUE_IMAGE2.png') center 0 no-repeat;
		margin: 0 auto;
	}
	#hover_pinkblue02_01 {
		width: 622px;
		height: 100%;		
		position: relative;
		display: inline-block;		
	}
	#total_pinkblue02 {
		width: 622px;
		height: 270px;
		position: absolute;
		bottom: 0px;
		right: -400px;
		z-index: -1;
	}
	#pinkblue02_JACKET {
		width: 170px;
		height: 270px;
		background: url('image/up_main/IU_JACKET_YELLOW.png') 0 20px no-repeat;			
		position: absolute;
		right: 30px;
		bottom: 0;				
	}
	#pinkblue02_SHOES {
		width: 170px;
		height: 270px;
		background: url('image/up_main/IU_SHOES_BLUE.png') 0 50px no-repeat;
		position: absolute;
		right: 230px;
		bottom: 0;		
	}
	#hover_pinkblue02_01:hover #total_pinkblue02 {
		right: -500px;
		z-index: 0;		
		transition: 0.3s;
	}

	/*------------------------------------------------------------------ iu_pinkblue03 ------------------------------------------------------------------*/

	.iu_pinkblue03_01 {
		width: 1244px;
		height: 832px;
		background: url('image/up_main/IU_PINK_IMAGE.png') center 0 no-repeat;
		margin: 0 auto;
	}
	.iu_pinkblue03_02 {
		width: 1480px;
		height: 766px;
		background: url('image/up_main/IU_PINK_IMAGE2.png') center 0 no-repeat;
		margin: 0 auto;
	}
	#hover_pinkblue03_01 {
		width: 622px;
		height: 100%;		
		position: relative;	
		right: -622px;	
		display: inline-block;
	}
	#total_pinkblue03 {
		width: 622px;
		height: 270px;
		position: absolute;
		bottom: 0px;
		left: -400px;
		z-index: -1;
	}
	#pinkblue03_BAG {
		width: 170px;
		height: 270px;
		background: url('image/up_main/IU_BACK_PINK.png') 0 20px no-repeat;			
		position: absolute;
		left: 30px;
		bottom: 0;				
	}
	#pinkblue03_SHOES {
		width: 170px;
		height: 270px;
		background: url('image/up_main/IU_SHOES_PINK.png') 0 50px no-repeat;
		position: absolute;
		left: 230px;
		bottom: 0;		
	}	
	#hover_pinkblue03_01:hover #total_pinkblue03 {
		left: -500px;
		z-index: 0;		
		transition: 0.3s;
	}
	#hover_pinkblue04_01 {
		width: 455px;
		height: 502px;
		position: relative;
		top: 26px;
	}
	
	/*------------------------------------------------------------------ iu_pinkblue04 ------------------------------------------------------------------*/

	.iu_pinkblue04_01 {
		width: 1603px;
		height: 1306px;
		background: url('image/up_main/IU_GOODS_IMAGE.png') center 0 no-repeat;
		margin: 0 auto;
		position: relative;
	}
	.iu_pinkblue04_02 {
		width: 100%;
		height: 981px;
		background: url('image/up_main/IU_GOODS_IMAGE2.png') center 0 no-repeat;
		margin: 0 auto;
	}
	#hover_pinkblue04_01 {
		position:relative;
		width: 455px;
		height: 502px;
		top: 26px;
		left: 170px;
		display: inline-block;
	}
	#total_pinkblue04_01 {
		width: 200px;
		height: 800px;
		position: relative;
		left: 0px;
		display: inline-block;
		z-index: -1;
		/* display: none; */
	}
	#pinkblue04_01_MTM{
		background: url('image/up_main/IU_MTM_YELLOW.png') 0 0 no-repeat;
		top: 0;
	}
	#pinkblue04_01_PANTS{
		background: url('image/up_main/IU_PANTS_YELLOW.png') 0 0 no-repeat;
		top: 270px;
	}
	#pinkblue04_01_BAG {
		background: url('image/up_main/IU_BACK_BEIGE.png') 0 0 no-repeat;
		top: 540px;
	}	
	#pinkblue04_01_MTM, #pinkblue04_01_PANTS, #pinkblue04_01_BAG{
		width: 200px;
		height: 250px;					
		position: absolute;
		left: 0;		
	}
	#hover_pinkblue04_01:hover #total_pinkblue04_01 {		
		left: -200px;
		z-index: 0;
		transition: 0.1s;	
		/* display: block; */
	}
	#hover_pinkblue04_02 {
		position: relative;
		width: 482px;
		height: 685px;		
		top: 505px;
		left: -220px;
		display: inline-block;
	}
	#total_pinkblue04_02 {		
		width: 200px;
		height: 685px;
		position: absolute;
		top: 0;
		left: 0;
		display: inline-block;
		z-index: -1;
	} 
	#pinkblue04_02_JACKET {
		width: 200px;
		height: 250px;
		margin: 105px 0 25px 0;
		background: url('image/up_main/IU_JACKET_WHITE.png') 0 0 no-repeat;
	}
	#pinkblue04_02_SHOES {
		width: 200px;
		height: 250px;
		margin: 0 0 25px 0;
		background: url('image/up_main/IU_SHOES_NAVY.png') 0 50px no-repeat;
	}
	#hover_pinkblue04_02:hover #total_pinkblue04_02{
		left: -200px;
		transition: 0.1s;	
		z-index: 0;
	}
	#hover_pinkblue04_03 {
		width: 712px;
		height: 985px;
		position: relative;
		top: -642px;
		left: 721px;
		display: inline-block;		
	}
	#total_pinkblue04_03 {
		width: 200px;
		height: 985px;
		background-color: white;
		position: absolute;
		right: 0px;
		display: inline-block;
		z-index: -1;		
	}	
	#pinkblue04_03_JACKET, #pinkblue04_03_PANTS, #pinkblue04_03_SHOES {
		width: 170px;
		height: 250px;					
		position: absolute;		
		left: 30px;		
	}
	#pinkblue04_03_JACKET {
		background: url('image/up_main/IU_JACKET_WHITE.png') 0 0 no-repeat;
		top: 80px;
	}
	#pinkblue04_03_PANTS {
		background: url('image/up_main/IU_PANTS_BLACK.png') 0 0 no-repeat;
		top: 420px;
	}
	#pinkblue04_03_SHOES {
		background: url('image/up_main/IU_SHOES_PINK.png') 0 50px no-repeat;
		top: 660px;
	}
	#hover_pinkblue04_03:hover #total_pinkblue04_03{		
		transition: 0.1s;	
		z-index: 0;
		right: -200px;
	}
	.pdt_item {
		float: left;
		margin: 0 10px;
		position: relative;
	}
</style>
</head>
<body>

	<!-------------------------------------------------------------------- header -------------------------------------------------------------------->

	<!-------------------------------------------------------------------- main -------------------------------------------------------------------->

	<!-------------------------------------------------------------------- iu_pinkblue01 -------------------------------------------------------------------->

	<div class="conWrap">
		<div class="conWrap">
			<div class="wrap">
				<div class="iu_pinkblue01">
					<div class="iu_pinkblue_hover">
						<div class="iu_pink_image">
							<div class="pinkblue01_drop" id="pink_drop">
								<div id="pink_drop_title">P I N K</div>							
									<div class="drop_goods" id="pink_MTM">
										<div class="total_pinkblue_drop"><a href="#" class="drop_name">UNI 등판 레터로고 맨투맨</a></div>
	                                	<div class="total_pinkblue_drop"><a href="#" class="drop_sale">69,000원</a></div>	
									</div>
								<div class="drop_goods" id="coral_SHOES">
									<div class="total_pinkblue_drop"><a href="#" class="drop_name">WL840WF</a></div>
	                               	<div class="total_pinkblue_drop"><a href="#" class="drop_sale">129,000원</a></div>
								</div>
							</div>
						</div>
						<div class="iu_blue_image">
							<div class="pinkblue01_drop" id="blue_drop">
								<div id="blue_drop_title">B L U E</div>							
								<div class="drop_goods" id="blue_HOOD">
									<div class="total_pinkblue_drop"><a href="#" class="drop_name">UNI 사이드 레터로고 후드티</a></div>
		                            <div class="total_pinkblue_drop" class="drop_sale"><a href="#" class="drop_sale">79,000원</a></div>	
								</div>
								<div class="drop_goods" id="blue_SHOES">
									<div class="total_pinkblue_drop"><a href="#" class="drop_name">WL840WS</a></div>
		                            <div class="total_pinkblue_drop"><a href="#" class="drop_sale">129,000원</a></div>
								</div>								
							</div>
						</div>
					</div>
				</div>

	<!-------------------------------------------------------------------- iu_pinkblue02 -------------------------------------------------------------------->

				<div class="iu_pinkblue02_01">
					<div id="hover_pinkblue02_01">
						<div id="total_pinkblue02">							
							<div id="pinkblue02_JACKET">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">UNI 컬러블록 웜업 자켓</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">159,000원</a></div>
							</div>							
							<div id="pinkblue02_SHOES">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">WL840WS</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">129,000원</a></div>
							</div>							
						</div>							
					</div>
				</div>
				<div class="iu_pinkblue02_02"></div>

	<!-------------------------------------------------------------------- iu_pinkblue03 -------------------------------------------------------------------->

				<div class="iu_pinkblue03_01">
					<div id="hover_pinkblue03_01">
						<div id="total_pinkblue03">							
							<div id="pinkblue03_BAG">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">3D BACKPACK MINI</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">139,000원</a></div>									
							</div>														
							<div id="pinkblue03_SHOES">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">WRT300RP</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">89,000원</a></div>
							</div>							
						</div>							
					</div>
				</div>
				<div class="iu_pinkblue03_02"></div>

	<!-------------------------------------------------------------------- iu_pinkblue04 -------------------------------------------------------------------->

				<div class="iu_pinkblue04_01">
					<div id="hover_pinkblue04_01">
						<div id="total_pinkblue04_01">
							<div id="pinkblue04_01_MTM">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">UNI 레터링 라운드 맨투맨</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">74,000원</a></div>
							</div>
							<div id="pinkblue04_01_PANTS">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">UNI 루즈핏 조거 팬츠</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">79,000원</a></div>
							</div>
							<div id="pinkblue04_01_BAG">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">3D BACKPACK MULTI</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">159,000원</a></div>
							</div>
						</div>
					</div>
					<div id="hover_pinkblue04_02">
						<div id="total_pinkblue04_02">
							<div id="pinkblue04_02_JACKET">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">UNI 트랙클럽 테이프 자켓</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">99,000원</a></div>
							</div>
							<div id="pinkblue04_02_SHOES">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">WRT300RV</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">89,000원</a></div>
							</div>
						</div>
					</div>
					<div id="hover_pinkblue04_03">
						<div id="total_pinkblue04_03">
							<div id="pinkblue04_03_JACKET">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">UNI 트랙클럽 테이프 자켓</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">99,000원</a></div>
							</div>
							<div id="pinkblue04_03_PANTS">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">UNI 트랙클럽 테이프 팬츠</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">79,000원</a></div>
							</div>
							<div id="pinkblue04_03_SHOES">
								<div class="total_pinkblue_drop"><a href="#" class="drop_name">WRT300RP</a></div>
								<div class="total_pinkblue_drop"><a href="#" class="drop_sale">89,000원</a></div>
							</div>
						</div>
					</div>
				</div>
				<div class="iu_pinkblue04_02"></div>
			</div>
		</div>
	</div>
	<%-- <div class="item_list" >
		<h3>NEW ITEM</h3>
		<hr>		
		<c:forEach items="${newProductList}" var="pDto">
			<div class="pdt_item">
				<a href="">
					<img alt="신상품" src="image/up_main/${pDto.p_img}" width="200px" height="200px;">
					<div class="wrap_info">
						<span>
							${pDto.p_name}
						</span>
						<br>
						<span>
							<fmt:setLocale value="ko_kr"/>
							<fmt:setLocale value="en_us"/>
							<fmt:setLocale value="ja_jp"/>
							<!-- currency = 접속하는 현지와 화폐단위 -->
							<fmt:formatNumber value="${pDto.p_price2}"  type="currency"/>
							<fmt:formatNumber value="0.15"  type="percent"/>
							<fmt:formatNumber value="553654789834"  pattern="###,###,###,###"/>
							<fmt:formatDate value="${date}" type="time" />
							<fmt:formatDate value="${date}" type="time" timeStyle="full" />
							<fmt:formatDate value="${date}" type="date" pattern="yyyy/mm/dd" />
						</span>
					</div>
				</a>
			</div>			
		</c:forEach>	
		<h3>BEST ITEM</h3>
		<hr>		
		<c:forEach items="${bestProductList}" var="pDto">
			<div class="pdt_item">
				<a href="">
					<img alt="베스트" src="image/up_main/${pDto.p_img}" width="200px" height="200px;">
					<div class="wrap_info">
						<span>
							${pDto.p_name}
						</span>
						<br>
						<span>							
							<fmt:setLocale value="ko_kr"/>
							<!-- currency = 접속하는 현지와 화폐단위 -->
							<fmt:formatNumber value="${pDto.p_price2}"  type="currency"/>							
						</span>
					</div>
				</a>
			</div>			
		</c:forEach>	
	</div>       --%>
</body>
</html>
<%@ include file="../include/footer.jsp" %>