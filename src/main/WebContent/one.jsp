<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css"
	href="easyui/themes/default/easyui.css">
<link rel="stylesheet" type="text/css" href="easyui/themes/icon.css">
<script type="text/javascript" src="easyui/jquery.js"></script>
<script type="text/javascript" src="easyui/jquery.easyui.min.js"></script>
<script type="text/javascript" src="easyui/locale/easyui-lang-zh_CN.js"></script>
<head>
<script type="text/javascript">
	
</script>
<style type="text/css">
</style>
</head>
<c:if test="${lsst == null }">
	<c:redirect url="findAll"></c:redirect>
</c:if>
<body onload="showAll()">
	<div id="p" class="easyui-panel" title="國家表"
		style="width: 1000px; height: 150px; background: #fafafa;"
		data-options="iconCls:'icon-save',closable:true,    
                collapsible:true,minimizable:true,maximizable:true"
		align="center">
		<div id="rr" class="easyui-resizable"
			data-options="maxWidth:1800,maxHeight:1600" sborder: 1px
			solid #ccc;" align="center">
			<table id="rr" class="easyui-datagrid" align="center">
				<thead>
					<tr>
						<th data-options="field:'code'">编码</th>
						<th data-options="field:'name'">國家名称</th>
						<th data-options="field:'price'">国家星级</th>
						<th data-options="field:'caozuo'">操作</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lsst }" var="stu">
						<tr>
							<td>${stu.ctid }</td>
							<td>${stu.ctname }</td>
							<td>${stu.ctstar }</td>
							<td><a id="btn" href="del?ctid=${stu.ctid }"
								class="easyui-linkbutton" data-options="iconCls:'icon-Add'">刪除</a>
								<a id="btn" href="update?ctid=${stu.ctid }"
								class="easyui-linkbutton" data-options="iconCls:'icon-Add'">修改</a></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>


</body>
</html>