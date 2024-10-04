<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>UseMan</title>
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body class="rubik-medium">
    <aside class="aside">
        <div class="aside-item">
            <div id="list-button" class="active">
                <svg viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M16 8C16 12.4183 12.4183 16 8 16C3.58172 16 0 12.4183 0 8C0 3.58172 3.58172 0 8 0C12.4183 0 16 3.58172 16 8ZM9.25 3.75C9.25 4.44036 8.69036 5 8 5C7.30964 5 6.75 4.44036 6.75 3.75C6.75 3.05964 7.30964 2.5 8 2.5C8.69036 2.5 9.25 3.05964 9.25 3.75ZM12 8H9.41901L11.2047 13H9.081L8 9.97321L6.91901 13H4.79528L6.581 8H4V6H12V8Z" fill="#000000"></path> </g></svg>
            </div>
            <div class="aside-title-container">
                <h4 class="aside-title">Employee list</h4>
            </div>
        </div>
        <div class="aside-item">
            <div id="add-button" class="inactive">
                <svg viewBox="0 0 16 16" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8 16C12.4183 16 16 12.4183 16 8C16 3.58172 12.4183 0 8 0C3.58172 0 0 3.58172 0 8C0 12.4183 3.58172 16 8 16ZM7 7V4H9V7H12V9H9V12H7V9H4V7H7Z" fill="#ffffff"></path> </g></svg>
            </div>
            <div class="aside-title-container">
                <h4 class="aside-title">Add a new employee</h4>
            </div>
        </div>
    </aside>
    <main class="main">
        <form action="/" method="GET">
            <div>
                <label>search</label>
                <input name="s" type="text">
            </div>
        </form>

        <div align="center">
            <h1>Employee List</h1>
            <table border="1">
                <thead>
                <tr>
                    <th>ID</th>
                    <th>Name</th>
                    <th>Email</th>
                    <th>Post</th>
                    <th>Department</th>
                    <th>Actions</th>
                </tr>
                </thead>
                <tbody>
                <c:choose>
                    <c:when test="${not empty employees}">
                        <c:forEach var="employee" items="${employees}">
                            <tr>
                                <td>${employee.id}</td>
                                <td>${employee.name}</td>
                                <td>${employee.email}</td>
                                <td>${employee.post}</td>
                                <td>
                                    <c:choose>
                                        <c:when test="${not empty employee.department}">
                                            ${employee.department.name}
                                        </c:when>
                                        <c:otherwise>
                                            No department assigned.
                                        </c:otherwise>
                                    </c:choose>
                                </td>
                                <td>
                                    <form action="edit" method="get" style="display:inline;">
                                        <input type="hidden" name="id" value="${employee.id}" />
                                        <button type="submit">Edit</button>
                                    </form>
                                    <form action="delete" method="post" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this employee?');">
                                        <input type="hidden" name="id" value="${employee.id}" />
                                        <button type="submit">Delete</button>
                                    </form>
                                </td>
                            </tr>
                        </c:forEach>
                    </c:when>
                    <c:otherwise>
                        <h3></h3>
                    </c:otherwise>
                </c:choose>
                </tbody>
            </table>
        </div>
    </main>
</body>
</html>