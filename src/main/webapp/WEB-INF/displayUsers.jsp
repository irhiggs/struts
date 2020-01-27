<%@ taglib prefix="t" tagdir="/WEB-INF/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:useBean id="users" type="java.util.List<org.superbiz.struts.User>" scope="request"/>

<t:layout title="All Users">
    <table>
        <thead>
        <tr>
            <th>ID</th>
            <th>First Name</th>
            <th>Last Name</th>
            <th>Delete?</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach items="${users}" var="u">
            <tr>
                <td>${u.id}</td>
                <td>${u.firstName}</td>
                <td>${u.lastName}</td>
                <td>
                    <t:form action="deleteUser">
                        <input type="hidden" name="id" value="${u.id}" />
                        <a href="#" onclick="this.closest('form').submit();return false;">Delete</a>
                    </t:form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
</t:layout>