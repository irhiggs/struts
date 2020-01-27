<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="user" type="org.superbiz.struts.User" scope="request"/>

<t:layout title="User Details">
<table>
    <tr>
        <td><b>ID</b></td>
        <td>${user.id }</td>
    </tr>
    <tr>
        <td><b>First Name</b></td>
        <td>${user.firstName }</td>
    </tr>
    <tr>
        <td><b>Last Name</b></td>
        <td>${user.lastName }</td>
    </tr>
</table>
</t:layout>