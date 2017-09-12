<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>


<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <title>֧��</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->
	<link rel="stylesheet" type="text/css" href="<c:url value='/jsps/css/trade/pay.css'/>">
	<script type="text/javascript" src="<c:url value='/jquery/jquery-1.5.1.js'/>"></script>
	<script type="text/javascript">
		var vilidatePaypwdUrl = "${pageContext.request.contextPath}/TradeServlet";
	</script>
	<script type="text/javascript" src="<c:url value='/jsps/js/trade/pay.js'/>"></script>
  </head>
  
  <body>
  
    <div style="height:100px;width: 100%;background-color: #4169E1 ">
		<%@include file="/jsps/top.jsp" %>
	</div>
	  <br/>
	  <br/>
	  <br/>
	  <br/>
	<div class="divContent">
		<span class="spanPrice">֧����</span><span class="price_t">&yen;${trade.tradeMoney }</span>
		<span class="spanTradeid">��ţ�${trade.tradeid }</span>
	</div>



	<form action="<c:url value='/TradeServlet'/>" method="post" id="form1" target="_top">
		<div class="divPayway">
			<div class = "divCheckBody">
				<div class = "divCheckContent">
					<span>ѡ��֧����ʽ:</span>
				</div>
			</div>
			<div style="margin-left: 20px;">
				<input id="pay_way1" type="radio" name="pay_way" value="pw-01" checked="checked"/>���֧��
				<input id="pay_way2" type="radio" name="pay_way" value="pw-02"/>�ױ�֧��
			</div>
		</div>

		<input type="hidden" name="methodName" value="checkPayWay"/>
		<input type="hidden" name="tradeid" value="${trade.tradeid }"/>
		
		<div class="divMypay">
			<div class="divText">����֧������:</div>
			<div style="margin-left: 20px;">
				 <div style="margin-bottom: 20px;">
					<input id="pay_pwd" type="password" name="pay_pwd" placeholder="����֧������" required="required"/>
					<%-- <c:if test="${not empty mypayerrorcode}"><span style="color:#c30">${mypayerrorcode }</span></c:if> --%>
				</div>
			</div>
			<div style="margin-left:20px">
				<a href="#" class="linkNext">��һ��</a>
			</div> 
		</div>

		<div class="divBank">
			<div class="divText">ѡ����������</div>
			<div style="margin-left: 20px;">
			  <div style="margin-bottom: 20px;">
				<input id="ICBC-NET-B2C" type="radio" name="yh" value="ICBC-NET-B2C" checked="checked"/>
				<img name="ICBC-NET-B2C" align="middle" src="<c:url value='/bank_img/icbc.bmp'/>"/>
				
				<input id="CMBCHINA-NET-B2C" type="radio" name="yh" value="CMBCHINA-NET-B2C"/>
				<img name="CMBCHINA-NET-B2C" align="middle" src="<c:url value='/bank_img/cmb.bmp'/>"/>
		
				<input id="ABC-NET-B2C" type="radio" name="yh" value="ABC-NET-B2C"/>
				<img name="ABC-NET-B2C" align="middle" src="<c:url value='/bank_img/abc.bmp'/>"/>
				
				<input id="CCB-NET-B2C" type="radio" name="yh" value="CCB-NET-B2C"/>
				<img name="CCB-NET-B2C" align="middle" src="<c:url value='/bank_img/ccb.bmp'/>"/>
			  </div>	
			  <div style="margin-bottom: 20px;">
				<input id="BCCB-NET-B2C" type="radio" name="yh" value="BCCB-NET-B2C"/>
				<img name="BCCB-NET-B2C" align="middle" src="<c:url value='/bank_img/bj.bmp'/>"/>
		
				<input id="BOCO-NET-B2C" type="radio" name="yh" value="BOCO-NET-B2C"/>
				<img name="BOCO-NET-B2C" align="middle" src="<c:url value='/bank_img/bcc.bmp'/>"/>
		
				<input id="CIB-NET-B2C" type="radio" name="yh" value="CIB-NET-B2C"/>
				<img name="CIB-NET-B2C" align="middle" src="<c:url value='/bank_img/cib.bmp'/>"/>
		
				<input id="NJCB-NET-B2C" type="radio" name="yh" value="NJCB-NET-B2C"/>
				<img name="NJCB-NET-B2C" align="middle" src="<c:url value='/bank_img/nanjing.bmp'/>"/>
			  </div>
			  <div style="margin-bottom: 20px;">
				<input id="CMBC-NET-B2C" type="radio" name="yh" value="CMBC-NET-B2C"/>
				<img name="CMBC-NET-B2C" align="middle" src="<c:url value='/bank_img/cmbc.bmp'/>"/>
		
				<input id="CEB-NET-B2C" type="radio" name="yh" value="CEB-NET-B2C"/>
				<img name="CEB-NET-B2C" align="middle" src="<c:url value='/bank_img/guangda.bmp'/>"/>
		
				<input id="BOC-NET-B2C" type="radio" name="yh" value="BOC-NET-B2C"/>
				<img name="BOC-NET-B2C" align="middle" src="<c:url value='/bank_img/bc.bmp'/>"/>
		
				<input id="PINGANBANK-NET" type="radio" name="yh" value="PINGANBANK-NET"/>
				<img name="PINGANBANK-NET" align="middle" src="<c:url value='/bank_img/pingan.bmp'/>"/>
			  </div>
			  <div style="margin-bottom: 20px;">
				<input id="CBHB-NET-B2C" type="radio" name="yh" value="CBHB-NET-B2C"/>
				<img name="CBHB-NET-B2C" align="middle" src="<c:url value='/bank_img/bh.bmp'/>"/>
		
				<input id="HKBEA-NET-B2C" type="radio" name="yh" value="HKBEA-NET-B2C"/>
				<img name="HKBEA-NET-B2C" align="middle" src="<c:url value='/bank_img/dy.bmp'/>"/>
		
				<input id="NBCB-NET-B2C" type="radio" name="yh" value="NBCB-NET-B2C"/>
				<img name="NBCB-NET-B2C" align="middle" src="<c:url value='/bank_img/ningbo.bmp'/>"/>
		
				<input id="ECITIC-NET-B2C" type="radio" name="yh" value="ECITIC-NET-B2C"/>
				<img name="ECITIC-NET-B2C" align="middle" src="<c:url value='/bank_img/zx.bmp'/>"/>
			  </div>
			  <div style="margin-bottom: 20px;">
				<input id="SDB-NET-B2C" type="radio" name="yh" value="SDB-NET-B2C"/>
				<img name="SDB-NET-B2C" align="middle" src="<c:url value='/bank_img/sfz.bmp'/>"/>
		
				<input id="GDB-NET-B2C" type="radio" name="yh" value="GDB-NET-B2C"/>
				<img name="GDB-NET-B2C" align="middle" src="<c:url value='/bank_img/gf.bmp'/>"/>
		
				<input id="SHB-NET-B2C" type="radio" name="yh" value="SHB-NET-B2C"/>
				<img name="SHB-NET-B2C" align="middle" src="<c:url value='/bank_img/sh.bmp'/>"/>
		
				<input id="SPDB-NET-B2C" type="radio" name="yh" value="SPDB-NET-B2C"/>
				<img name="SPDB-NET-B2C" align="middle" src="<c:url value='/bank_img/shpd.bmp'/>"/>
			  </div>
			  <div style="margin-bottom: 20px;">
				<input id="POST-NET-B2C" type="radio" name="yh" value="POST-NET-B2C"/>
				<img name="POST-NET-B2C" align="middle" src="<c:url value='/bank_img/post.bmp'/>"/>
		
				<input id="BJRCB-NET-B2C" type="radio" name="yh" value="BJRCB-NET-B2C"/>
				<img name="BJRCB-NET-B2C" align="middle" src="<c:url value='/bank_img/beijingnongshang.bmp'/>"/>
		
				<input id="HXB-NET-B2C" type="radio" name="yh" value="HXB-NET-B2C"/>
				<img name="HXB-NET-B2C" align="middle" src="<c:url value='/bank_img/hx.bmp'/>"/>
		
				<input id="CZ-NET-B2C" type="radio" name="yh" value="CZ-NET-B2C"/>
				<img name="CZ-NET-B2C" align="middle" src="<c:url value='/bank_img/zheshang.bmp'/>"/>
			  </div>
			</div>
			<div style="margin: 40px;">
				<a href="#" class="linkNext">��һ��</a>
			</div>
		</div>
	</form>
  </body>
</html>