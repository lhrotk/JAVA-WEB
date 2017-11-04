<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<button class="btn btn-primary btn-sm edit" onclick="window.location.href='${pageContext.request.contextPath}/team/editclass.action?class_id=${class_id}'">编辑</button>
<button class="btn btn-success btn-sm edit" onclick="window.location.href='${pageContext.request.contextPath}/team/checkattendance.action?class_id=${class_id}'">管理出勤</button>