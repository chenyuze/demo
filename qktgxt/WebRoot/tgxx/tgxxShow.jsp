<%@ page language="java" pageEncoding="UTF-8"%>

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
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3" />
		<meta http-equiv="description" content="This is my page" />

		<link rel="stylesheet" type="text/css" href="<%=path %>/css/base.css" />
	</head>

	<body leftmargin="2" topmargin="2" background='<%=path %>/img/allbg.gif'>
			<table width='98%'  border='0'style="margin-top:8px;margin-left: 5px;">
			  <tr>
			    <td>
			        <form action="<%=path %>/tgxx?type=tgxxShowSearch" name="formAdd" method="post">
			          标题： <input type="text" name="biaoti" value="${requestScope.biaoti }"/>
			           &nbsp;
			           <input type="submit" value="查询"/>
			        </form>
			    </td>
			  </tr>
		    </table>
			
			<table width="98%" border="0" cellpadding="2" cellspacing="1" bgcolor="#D1DDAA" align="center" style="margin-top:8px">
				<tr bgcolor="#E7E7E7">
					<td height="14" colspan="6" background="<%=path %>/img/tbg.gif">&nbsp;投稿管理&nbsp;</td>
				</tr>
				<tr align="center" bgcolor="#FAFAF1" height="22">
					<td width="*">标题</td>
					<td width="10%">作者</td>
					<td width="10%">摘引</td>
					<td width="10%">关键字</td>
					<td width="10%">投稿日期</td>
					<td width="20%">附件</td>
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
							<a title="点击下载" href="<%=path %>/tgxx?type=down&fjid=${tgxx.tgfj.id }">${tgxx.tgfj.fjmc }</a>
						</c:if>
					</td>
				</tr>
				</c:forEach>
			</table>
	</body>
</html>
