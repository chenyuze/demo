<%@ page language="java" pageEncoding="UTF-8"%>
<%@page import="com.qktgxt.util.Tgzt"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ page isELIgnored="false" %> 
<%
String path = request.getContextPath();
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="pragma" content="no-cache" />
		<meta http-equiv="cache-control" content="no-cache" />
		<meta http-equiv="expires" content="0" />
		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
		<script language="javascript">
		   function down1(fujianPath,fujianYuashiMing)
           {
               var url="<%=path %>/updown/updown.jsp?fujianPath="+fujianPath+"&fujianYuashiMing="+fujianYuashiMing;
		       url=encodeURI(url); 
               url=encodeURI(url); 
               window.open(url,"_self");
           }
		</script>
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="8" background="<%=path %>/img/tbg.gif">&nbsp;已评审的稿件&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="*">标题</td>
					<td width="10%">作者</td>
					<td width="10%">摘引</td>
					<td width="10%">关键字</td>
					<td width="10%">投稿日期</td>
					<td width="12%">附件</td>
					<td width="12%">审批结果</td>
					<td width="12%">审批时间</td>
		        </tr>	
				<c:forEach items="${requestScope.tgxxList}" var="tgxx">
				<tr align='center' bgcolor="#FFFFFF" onMouseMove="javascript:this.bgColor='red';" onMouseOut="javascript:this.bgColor='#FFFFFF';" height="22">
					<td bgcolor="#FFFFFF" align="center">
						${tgxx.biaoti}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tgxx.strYonghu}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tgxx.zy}
					</td>
					<td bgcolor="#FFFFFF" align="center">
					    ${tgxx.gjz}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tgxx.tgrq}
					</td>
					<td bgcolor="#FFFFFF" align="center">
						<c:if test="${tgxx.tgfj.id==0}">
							&nbsp;
						</c:if>
						<c:if test="${tgxx.tgfj.id!=0}">
							<a style="color: red" href="#" onclick="down1('${tgxx.tgfj.fjlj}','${tgxx.tgfj.fjmc }')">${tgxx.tgfj.fjmc }</a>
						</c:if>
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tgxx.zbps.strZbpsjg }
					</td>
					<td bgcolor="#FFFFFF" align="center">
						${tgxx.zbps.zbpsrq }
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>
