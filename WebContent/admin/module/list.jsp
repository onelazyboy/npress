<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<div class="form">
<table class="list">
    <thead>
        <tr>
            <th class="sn"></th>
            <th class="sn">序号</th>
            <th>名称</th>
            <th>位置</th>
            <th>类型</th>
        </tr>
    </thead>
    <tfoot>
        <tr>
            <td colspan="5"></td>
        </tr>
    </tfoot>
    <tbody>
    <c:if test="${empty modules}">
        <tr>
            <td colspan="5">暂无模块</td>
        </tr>
    </c:if>
    <c:forEach items="${modules}" var="o" varStatus="index">
        <tr>
            <td><input type="checkbox" value="${o.id}" /></td>
            <td>${o.index}</td>
            <td>${o.name}</td>
            <td>
              <c:choose>
                <c:when test="${0 eq o.pos}">顶部导航</c:when>
                <c:when test="${1 eq o.pos}">底部导航</c:when>
                <c:when test="${2 eq o.pos}">文章详情底部插件</c:when>
                <c:when test="${3 eq o.pos}">右侧边栏底部插件</c:when>
                <c:when test="${4 eq o.pos}">文章详情顶部插件</c:when>
                <c:when test="${5 eq o.pos}">右侧边栏顶部插件</c:when>
              </c:choose>
            </td>
            <td>
              <c:choose>
                <c:when test="${0 eq o.type}">本窗口打开的本站URL</c:when>
                <c:when test="${1 eq o.type}">新窗口打开的本站URL</c:when>
                <c:when test="${2 eq o.type}">本窗口打开的外站URL</c:when>
                <c:when test="${3 eq o.type}">新窗口打开的外站URL</c:when>
                <c:when test="${4 eq o.type}">本窗口打开的页面</c:when>
                <c:when test="${5 eq o.type}">新窗口打开的页面</c:when>
                <c:when test="${6 eq o.type}">插件</c:when>
              </c:choose>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>
</div>
<script type="text/javascript">
trOnSelected(I.$('class','list')[0],function(id){
  showPanel('admin-Module/pageModify?id='+id);
});
</script>