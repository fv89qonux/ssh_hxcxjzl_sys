<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="utf-8">
		<title>表单</title>
		<meta name="renderer" content="webkit">
		<meta http-equiv="X-UA-Compatible" content="IE=edge,chrome=1">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<meta name="apple-mobile-web-app-status-bar-style" content="black">
		<meta name="apple-mobile-web-app-capable" content="yes">
		<meta name="format-detection" content="telephone=no">

		<link rel="stylesheet" href="${ctx}/common/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="${ctx}/common/plugins/font-awesome/css/font-awesome.min.css">
	</head>

	<body>
		<div style="margin: 15px;">
			<fieldset class="layui-elem-field layui-field-title" style="margin-top: 20px;">
				<legend>新增场地</legend>
			</fieldset>

			<form class="layui-form" action="${ctx}/area_exAdd.do" enctype="multipart/form-data" onsubmit="return toVaild()">
			
				<div class="layui-form-item">
					<div class="layui-inline">
						<label class="layui-form-label">场地价格</label>
						<div class="layui-input-inline">
							<input type="number" name="price" autocomplete="off" class="layui-input">
						</div>
					</div>
				</div>
				<div class="layui-form-item">
					<label class="layui-form-label">场地类型</label>
					<div class="layui-input-block" style="width: 190px;">
						<select name="type" lay-filter="leixin">
							<option value="0"  selected="">专业场</option>
							<option value="1">贵宾场</option>
							<option value="2">高级场</option>
							<option value="3">标准场</option>
							<option value="4">普通场</option>
						</select>
					</div>
				</div>

				<div class="layui-form-item">
					<label class="layui-form-label">场地状态</label>
					<div class="layui-input-block" style="width: 190px;">
						<select name="state" lay-filter="zhungtai">
							<option value="0">可使用</option>
							<option value="1" selected="">修理中</option>
							<option value="2">不可用</option>
						</select>
					</div>
				</div>
				<div class="layui-form-item">
					<div class="layui-input-block">
						<button class="layui-btn" type="submit">立即提交</button>
						<button type="reset" class="layui-btn layui-btn-primary">重置</button>
					</div>
				</div>
			</form>
		</div>
		<script type="text/javascript" src="${ctx}/common/plugins/layui/layui.js"></script>
		<script>
			layui.use(['form', 'layedit', 'laydate'], function() {

			});
		</script>
	</body>

</html>