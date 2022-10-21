<%@ page  contentType="text/html; charset=UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	request.setCharacterEncoding("UTF-8");
	String cp = request.getContextPath();
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head><link rel="stylesheet" href="${resourcePath }/img${fontCss}"/>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" href="//apps.bdimg.com/libs/jqueryui/1.10.4/css/jquery-ui.min.css">
<script src="//apps.bdimg.com/libs/jquery/1.10.2/jquery.min.js"></script>
<script src="//apps.bdimg.com/libs/jqueryui/1.10.4/jquery-ui.min.js"></script>
<script type="text/javascript">

	function openOrCloseMenu(index){
		
		var menu = document.getElementById("menu"+index);
		
		if(menu.style.display=="none"){
			menu.style.display="block";
		}else{
			menu.style.display="none"
		}
	}
	
	function setMenuAvailable(){
		
		//var iframePic = document.getElementById("iframePic");
		//iframePic.src="setting/menuAvailable.action";
		location.href="<%=cp%>/mypage/my_setting.jsp?flag=2&menu=menu7";
		<%-- 
		var url="<%=cp%>/cy/setting/menuAvailable.action";
		  
		$.post(url,{},function(args){
			$("#browser").html(args); 
		}); --%>
	}
	
	function setUsingBackGound(){
		var url="<%=cp%>/mypage/my_setting_r_background.jsp";
		  
		$.post(url,{},function(args){
			$("#browser").html(args); 
		});
	}
	
	function setUsingStoryMinimi(){
		var url="<%=cp%>/mypage/my_setting_r_storyMinimi.jsp";		  
		
		$.post(url,{},function(args){
			$("#browser").html(args); 
		});
	}

	
	
	


	
</script>
<title>Insert title here</title>
</head>
<body>

	<div style="width: 150px;height: 30px;" align="left">
		<font  style="font-size:15pt;font-weight: bold;color: #1294AB;letter-spacing: 1px;">Manager</font>
	</div>
								
	<div style="border-top: 3px solid #EBEBEB;border-bottom: 3px solid #EBEBEB;width: 150px;height: 370px;word-break:break-all;overflow: auto;overflow-x: hidden;" align="left">
		<div style="border: 0px solid black;width: 100%;">
			<img alt="no found" src="<%=cp%>/resources/images/setting_menu_3lines.png" height="13px" width="13px">
			<font  style="font-size:10pt;font-weight: bold;">
				<span onmouseover="this.style.color='#FF5E00';" onmouseout="this.style.color='black';"
					onclick="javascript:openOrCloseMenu('1')">
					미니홈피관리
				</span>
			</font>
		</div>
			
		<div style="border: 0px solid black;width: 100%;">
			<img alt="no found" src="<%=cp%>/resources/images/setting_menu_3lines.png" height="13px" width="13px">
			<font  style="font-size:10pt;font-weight: bold;">
				<span onmouseover="this.style.color='#FF5E00';" onmouseout="this.style.color='black';"
					onclick="javascript:openOrCloseMenu('2')">
				아이템 설정관리
				</span>
			</font>
		</div>
		<div id="menu2" style="border: 0px solid black;width: 100%;padding-left: 4px;display: none;">
			<img alt="no found" src="<%=cp%>/resources/images/setting_menu_direction.png" height="10px" width="10px">
			<font  style="font-size:9pt;font-weight: bold;color: #1294AB;">
				<span onmouseover="this.style.color='#FF5E00';" onmouseout="this.style.color='#1294AB';"
					onclick="javascript:setUsingBackGound()">
					미니홈피 스킨 설정
				</span>
			</font><br/>
			<img alt="no found" src="<%=cp%>/resources/images/setting_menu_direction.png" height="10px" width="10px">
			<font  style="font-size:9pt;font-weight: bold;color: #1294AB;">
				<span onmouseover="this.style.color='#FF5E00';" onmouseout="this.style.color='#1294AB';"
					onclick="javascript:setUsingFont()">
					글꼴 설정
				</span>
			</font><br/>
			<img alt="no found" src="<%=cp%>/resources/images/setting_menu_direction.png" height="10px" width="10px">
			<font  style="font-size:9pt;font-weight: bold;color: #1294AB;">
				<span onmouseover="this.style.color='#FF5E00';" onmouseout="this.style.color='#1294AB';"
					onclick="javascript:setUsingStoryMinimi()">
					스토리룸,미니미 설정
				</span>
			</font><br/>
			<img alt="no found" src="<%=cp%>/resources/images/setting_menu_direction.png" height="10px" width="10px">
			<font  style="font-size:9pt;font-weight: bold;color: #1294AB;">
				<span onmouseover="this.style.color='#FF5E00';" onmouseout="this.style.color='#1294AB';"
					onclick="javascript:setUsingSong()">
					음악 설정
				</span>
			</font><br/><br/>
		</div>
		
		<div style="border: 0px solid black;width: 100%;">
			<img alt="no found" src="<%=cp%>/resources/images/setting_menu_3lines.png" height="13px" width="13px">
			<font  style="font-size:10pt;font-weight: bold;">
				<span onmouseover="this.style.color='#FF5E00';" onmouseout="this.style.color='black';"
					onclick="javascript:openOrCloseMenu('4')">
					관리자 정보
				</span>
			</font>
		</div>
	</div>

</body>
</html>