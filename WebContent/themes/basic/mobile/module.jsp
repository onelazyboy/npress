<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8"%>
<%@ taglib uri="/nlft" prefix="nlft"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<jsp:include page="/themes/basic/mobile/include.jsp" />
<script type="text/javascript" src="${PATH}/js/share.js"></script>
<title>${module.name} - ${WEB_NAME}</title>
</head>
<body>
  <section id="aside" data-transition="slide" data-aside="right">
    <header data-title="${module.name}" data-back="chevron-left">
        <nav class="on-right">
            <button data-view-aside="right" data-icon="menu"></button>
        </nav>
    </header>
    <article id="listview" class="list active scroll">
      <ul>
      <li>
      <strong><a href="${PATH}/action-Module/detail?id=${module.id}">${module.name}</a></strong>
      <div class="space"></div>
      <div class="content">${module.content}</div>
      </li>
      </ul>
    </article>
    <jsp:include page="/themes/basic/mobile/footer_module.jsp" />
  </section>
  <jsp:include page="/themes/basic/mobile/include_cat.jsp" />
</body>
</html>