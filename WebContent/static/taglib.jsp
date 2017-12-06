<%
    String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + request.getContextPath();
%>
<!-- <script src="/xiaochaoo/static/activate-power-mode/activate-power-mode.js"></script> -->
<script type="text/javascript" src="<%=basePath%>/static/jquery/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="<%=basePath%>/static/layui/layui.js"></script>
<link href="<%=basePath%>/static/bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
<%-- <script type="text/javascript" src="<%=basePath%>/static/layui/layui.all.js"></script> --%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="ctxStatic" value="${pageContext.request.contextPath}/static"/>
