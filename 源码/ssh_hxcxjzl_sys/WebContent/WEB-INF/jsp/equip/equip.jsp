<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@include file="/common/taglibs.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

	<head>
		<meta charset="UTF-8">
		<title>Table</title>
		<link rel="stylesheet" href="${ctx}/common/plugins/layui/css/layui.css" media="all" />
		<link rel="stylesheet" href="${ctx}/common/css/global.css" media="all">
		<link rel="stylesheet" href="${ctx}/common/plugins/font-awesome/css/font-awesome.min.css">
		<link rel="stylesheet" href="${ctx}/common/css/table.css" />
		<script type="text/javascript" src="${ctx}/common/plugins/layui/layui.js"></script>
	</head>

	<body>
		<div class="admin-main">

			<blockquote class="layui-elem-quote">
			<form class="layui-form" method="post" action="${ctx}/equip_equip.do" id="listform">
				<table>
					<tr>
						<td style="width:20%;">					
							<label class="layui-form-label">器材名称:</label>
							<div class="layui-input-inline">
								<input type="text" class="layui-input" name="name" value="${Obj.name}">
							</div>
						</td>
						<td style="width:20%;">					
							<label class="layui-form-label">器材价格:</label>
							<div class="layui-input-inline">
								<input type="text" class="layui-input" name="price" value="${Obj.price}">
							</div>
						</td>
						<td style="width:20%;">
							<label class="layui-form-label">器材类型:</label>
							<div class="layui-input-block" style="width: 190px;">
								<select name="type" lay-filter="leixin" id="leixing">
									<option></option>
									<option value="0">球拍</option>
									<option value="1">衣裤</option>
									<option value="2">球鞋</option>
									<option value="3">球拍</option>
									<option value="4">其他</option>
								</select>
							</div>
						</td>
						<td style="width:20%;">

						</td>
						<td>
							<a href="javascript:;" class="layui-btn layui-btn-small" id="search" onclick="changesearch()">
							<i class="layui-icon">&#xe615;</i> 查找器材
							</a>
						</td>
					</tr>
				</table>
			</form>

			</blockquote>
			<fieldset class="layui-elem-field">
				<legend>滑雪场列表</legend>
				<a href="${ctx}/equip_add.do" class="layui-btn layui-btn-small" id="add">
					<i class="layui-icon">&#xe608;</i> 添加器材
				</a>
				<div class="layui-field-box">
					<table class="site-table table-hover">
						<thead>
							<tr>
								<th>ID</th>
								<th>名称</th>
								<th>价格</th>
								<th>类型</th>
								<th>操作</th>
							</tr>
						</thead>
						<tbody>
        <c:forEach items="${pagers.datas}" var="data" varStatus="l">
        <tr>
           <td>${data.id}</td>
           <td>${data.name}</td>
           <td>${data.price}元</td>
           <td>
           		<c:if test="${data.type == 0}">
           		球拍
            	</c:if>
            	           		<c:if test="${data.type == 1}">
           		衣裤
            	</c:if>
            	           		<c:if test="${data.type == 2}">
           		球鞋
            	</c:if>
            	           		<c:if test="${data.type == 3}">
           		球拍
            	</c:if>
            	           		<c:if test="${data.type == 4}">
           		其他
            	</c:if>
           </td>
           <td>
              <div class="button-group"> <a class="layui-btn layui-btn-mini" href="${ctx}/equip_update.do?id=${data.id}">修改</a> <a class="layui-btn layui-btn-danger layui-btn-mini" href="${ctx}/equip_delete.do?id=${data.id}">删除</a></div>
           </td>
        </tr>
       </c:forEach>
       <tr>
        <td colspan="8"><div class="pagelist">
        <!-- 分页开始 -->
			      <pg:pager  url="${ctx}/equip_equip.do" maxIndexPages="5" items="${pagers.total}"  maxPageItems="15" export="curPage=pageNumber" >
			        
					<pg:last>  
						共${pagers.total}记录,共${pageNumber}页,  
					</pg:last>  
						当前第${curPage}页 
			        <pg:first>  
			    		<a href="${pageUrl}">首页</a>  
					</pg:first>  
					<pg:prev>  
			    		<a href="${pageUrl}">上一页</a>  
					</pg:prev>  
			       	<pg:pages>  
			        	<c:choose>  
			            	<c:when test="${curPage eq pageNumber}">  
			                	<font color="red">[${pageNumber }]</font>  
			            	</c:when>  
			            	<c:otherwise>  
			               		<a href="${pageUrl}">${pageNumber}</a>  
			            	</c:otherwise>  
			        	</c:choose>  
			    	</pg:pages>
			             
			        <pg:next>  
			    		<a href="${pageUrl}">下一页</a>  
					</pg:next>  
					<pg:last>  
						<c:choose>  
			            	<c:when test="${curPage eq pageNumber}">  
			                	<font color="red">尾页</font>  
			            	</c:when>  
			            	<c:otherwise>  
			               		<a href="${pageUrl}">尾页</a>  
			            	</c:otherwise>  
			        	</c:choose> 
			    		  
					</pg:last>
				</pg:pager>
				 </div></td>
                    <!-- 分页结束 -->
      </tr>
		</tbody>
	</table>

	</div>
	</fieldset>
		</div>
		<script>
		layui.use(['form', 'layedit', 'laydate'], function() {

		});
		
		function changesearch(){	
			$("#listform").submit();
		}
		
		layui.config({
			base: 'common/plugins/layui/modules/'
		});

		layui.use(['icheck', 'laypage','layer'], function() {

			$('#search').on('click', function() {
				
			});


			$('.site-table tbody tr').on('click', function(event) {
				var $this = $(this);
				var $input = $this.children('td').eq(0).find('input');
				$input.on('ifChecked', function(e) {
					$this.css('background-color', '#EEEEEE');
				});
				$input.on('ifUnchecked', function(e) {
					$this.removeAttr('style');
				});
				$input.iCheck('toggle');
			}).find('input').each(function() {
				var $this = $(this);
				$this.on('ifChecked', function(e) {
					$this.parents('tr').css('background-color', '#EEEEEE');
				});
				$this.on('ifUnchecked', function(e) {
					$this.parents('tr').removeAttr('style');
				});
			});
			$('#selected-all').on('ifChanged', function(event) {
				var $input = $('.site-table tbody tr td').find('input');
				$input.iCheck(event.currentTarget.checked ? 'check' : 'uncheck');
			});
		})
		</script>
	</body>

</html>