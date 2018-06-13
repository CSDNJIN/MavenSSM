<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>

<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="css/demo.css">
<style type="text/css">
.box{
	width: 20px;
	height: 20px;
	padding: 2px;
	border:1px solid #ccc;
	border-radius: 2px;
}
</style>

</head>
<body>

<div class="container">
	<div class="row">
		<div class="col-md-12" style="padding:2em 0;">
			 
			<div class="table-responsive">
				<table class="table table-bordered table-striped" id="mytable">
					<thead>
					<tr>
						<th data-options="field:'code'">编码</th>
						<th data-options="field:'name'">國家名称</th>
						<th data-options="field:'price'">国家星级</th>
						 
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${lsst }" var="stu">
						<tr>
							<td>${stu.ctid }</td>
							<td>${stu.ctname }</td>
							<td>${stu.ctstar }</td>
						 
						</tr>
					</c:forEach>
				</tbody>
				</table>
			</div>
		</div>
		<div class="col-md-12"  style="padding-bottom:2em;">
			<button class="btn btn-info" id="add"><i class="fa fa-plus"></i> 添加新的表格行</button>
		</div>
	</div>
</div>

<script src="js/jquery-1.11.0.min.js" type="text/javascript"></script>
<script type="text/javascript" src="js/bootstable.js"></script>
<script type="text/javascript">
	$('#mytable').SetEditable({
		$addButton: $('#add')
	});
</script>

 
</body>
</html>