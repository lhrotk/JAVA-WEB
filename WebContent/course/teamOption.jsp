<%@page contentType="text/html;charset=utf-8"%>
<%@taglib uri="/struts-tags" prefix="s"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<c:forEach items="${teamList}" var="team">
	<c:if test="${team.teamID!=0}">
		<option value="${team.teamID}">team ${team.teamName}</option>
	</c:if>
	<c:if test="${team.teamID==0}">
		<option value="${team.teamID}">${team.teamName}</option>
	</c:if>
</c:forEach>