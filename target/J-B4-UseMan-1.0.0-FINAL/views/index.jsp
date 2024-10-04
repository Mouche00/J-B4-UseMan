<%@ page import="java.util.Random" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>UseMan</title>
    <link href="../css/style.css" rel="stylesheet" />
</head>
<body class="rubik-medium">
    <aside class="aside">
        <div id="list-button" class="aside-item active">
            <svg viewBox="0 0 16 16" fill="" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M16 8C16 12.4183 12.4183 16 8 16C3.58172 16 0 12.4183 0 8C0 3.58172 3.58172 0 8 0C12.4183 0 16 3.58172 16 8ZM9.25 3.75C9.25 4.44036 8.69036 5 8 5C7.30964 5 6.75 4.44036 6.75 3.75C6.75 3.05964 7.30964 2.5 8 2.5C8.69036 2.5 9.25 3.05964 9.25 3.75ZM12 8H9.41901L11.2047 13H9.081L8 9.97321L6.91901 13H4.79528L6.581 8H4V6H12V8Z" fill=""></path> </g></svg>
            <h4 class="aside-title">Employee list</h4>
        </div>
        <div id="add-button" class="aside-item inactive">
            <svg viewBox="0 0 16 16" fill="" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M8 16C12.4183 16 16 12.4183 16 8C16 3.58172 12.4183 0 8 0C3.58172 0 0 3.58172 0 8C0 12.4183 3.58172 16 8 16ZM7 7V4H9V7H12V9H9V12H7V9H4V7H7Z" fill=""></path> </g></svg>
            <h4 class="aside-title">Add a new employee</h4>
        </div>
    </aside>
    <main class="main">
        <div class="statistics-container">
            <div>
                <h1>Statistics</h1>
                <div class="statistics">
                    <div class="statistics-item">
                        <svg viewBox="0 0 16 16" fill="" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M16 8C16 12.4183 12.4183 16 8 16C3.58172 16 0 12.4183 0 8C0 3.58172 3.58172 0 8 0C12.4183 0 16 3.58172 16 8ZM9.25 3.75C9.25 4.44036 8.69036 5 8 5C7.30964 5 6.75 4.44036 6.75 3.75C6.75 3.05964 7.30964 2.5 8 2.5C8.69036 2.5 9.25 3.05964 9.25 3.75ZM12 8H9.41901L11.2047 13H9.081L8 9.97321L6.91901 13H4.79528L6.581 8H4V6H12V8Z" fill=""></path> </g></svg>
                        <div class="statistics-text">
                            <h3>11</h3>
                            <h5>Employees</h5>
                        </div>
                    </div>

                    <div class="statistics-item">
                        <svg viewBox="0 0 16 16" fill="" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M14 0H2V16H6V12H10V16H14V0ZM5 3H7V5H5V3ZM7 7H5V9H7V7ZM9 3H11V5H9V3ZM11 7H9V9H11V7Z" fill=""></path> </g></svg>
                        <div class="statistics-text">
                            <h3>5</h3>
                            <h5>Departments</h5>
                        </div>
                    </div>
                </div>
            </div>

            <div class="logs-container">
                <h1>Logs</h1>
                <div class="log-container">
                    <div class="log-message">[INFO] Application started successfully.</div>
<%--                    <div class="log-message">[ERROR] Failed to connect to the database.</div>--%>
<%--                    <div class="log-message">[WARNING] Low disk space on server.</div>--%>
<%--                    <div class="log-message">[DEBUG] User ID 123 accessed the dashboard.</div>--%>
                </div>
            </div>
        </div>
        <div class="employees-container">
            <h1>Employee List</h1>
            <div class="search-container">
                <form action="" method="GET" class="search">
                    <label>
                        <svg version="1.1" id="_x32_" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" viewBox="0 0 512 512" xml:space="preserve" fill=""><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <g> <path class="st0" d="M496.872,423.839l-85.357-85.358c-4.76,7.322-9.901,14.378-15.392,21.142l-31.484-31.485 c1.357-1.771,2.7-3.556,4.014-5.371c0.885-1.225,1.756-2.45,2.596-3.689c0.148-0.192,0.28-0.398,0.414-0.59 c0.855-1.254,1.711-2.523,2.538-3.792c1.8-2.744,3.526-5.518,5.179-8.351c17.691-30.174,27.857-65.291,27.857-102.725 s-10.166-72.55-27.857-102.724c-17.692-30.145-42.893-55.346-73.037-73.038C276.168,10.166,241.052,0,203.618,0 c-37.433,0-72.55,10.166-102.724,27.858c-1.239,0.723-2.464,1.461-3.689,2.228c-1.564,0.959-3.128,1.948-4.663,2.951 c-2.729,1.785-5.429,3.63-8.07,5.548c-0.886,0.634-1.756,1.284-2.627,1.933c-0.914,0.694-1.829,1.387-2.744,2.081 c-0.841,0.664-1.697,1.328-2.538,2.006c-1.653,1.328-3.29,2.671-4.899,4.058C63.402,55.7,55.7,63.402,48.662,71.665 c-1.387,1.608-2.73,3.232-4.058,4.899c-0.678,0.841-1.343,1.697-2.006,2.538c-0.694,0.915-1.387,1.83-2.08,2.744 c-0.649,0.87-1.298,1.741-1.933,2.626c-1.918,2.641-3.762,5.341-5.548,8.071c-1.004,1.535-1.992,3.099-2.951,4.663 c-0.767,1.224-1.505,2.449-2.228,3.689C10.166,131.069,0,166.186,0,203.62s10.166,72.55,27.857,102.725 c17.692,30.144,42.893,55.346,73.037,73.037c30.174,17.692,65.291,27.858,102.724,27.858c37.434,0,72.55-10.166,102.724-27.858 c1.888-1.106,3.748-2.243,5.592-3.408c0.929-0.575,1.844-1.166,2.759-1.77c1.269-0.826,2.538-1.682,3.792-2.538 c0.192-0.133,0.398-0.266,0.59-0.413c1.239-0.841,2.464-1.712,3.689-2.597c1.815-1.313,3.6-2.656,5.371-4.013l31.483,31.483 c-6.764,5.49-13.82,10.632-21.14,15.393l85.358,85.358C433.913,506.954,447.134,512,460.354,512s26.441-5.046,36.518-15.124 C517.042,476.706,517.042,444.009,496.872,423.839z M284.682,323.283c-0.413,0.295-0.826,0.575-1.254,0.841 c-0.472,0.34-0.959,0.649-1.446,0.959c-0.442,0.295-0.886,0.575-1.328,0.856c-0.576,0.369-1.15,0.723-1.726,1.062 c-0.546,0.34-1.077,0.664-1.623,0.989c-1.166,0.694-2.332,1.357-3.512,2.021c-0.089,0.059-0.177,0.104-0.28,0.162 c-0.96,0.531-1.933,1.048-2.907,1.549c-0.384,0.222-0.768,0.428-1.166,0.62c-0.767,0.398-1.549,0.782-2.33,1.166 c-1.491,0.738-2.996,1.446-4.516,2.124c-18.016,8.086-37.979,12.586-58.975,12.586c-20.996,0-40.959-4.5-58.975-12.586 c-32.403-14.519-58.518-40.635-73.037-73.037C63.52,244.58,59.02,224.616,59.02,203.62s4.5-40.96,12.586-58.976 c2.272-5.061,4.824-9.974,7.643-14.711c0.325-0.546,0.649-1.077,0.988-1.623c0.915-1.52,1.874-3.025,2.878-4.5 c0.546-0.841,1.106-1.667,1.696-2.494c0.694-1.033,1.416-2.051,2.17-3.054c1.135-1.549,2.301-3.084,3.496-4.589 c6.832-8.572,14.622-16.363,23.195-23.195c1.505-1.195,3.04-2.361,4.589-3.497c1.004-0.753,2.022-1.476,3.054-2.169 c0.827-0.59,1.653-1.151,2.494-1.697c1.476-1.003,2.981-1.962,4.5-2.877c0.546-0.34,1.077-0.664,1.623-0.989 c4.736-2.818,9.65-5.371,14.711-7.643c18.016-8.086,37.979-12.586,58.975-12.586c20.996,0,40.96,4.5,58.975,12.586 c32.402,14.519,58.518,40.635,73.037,73.037c8.086,18.016,12.586,37.98,12.586,58.976s-4.5,40.96-12.586,58.976 c-0.679,1.52-1.386,3.025-2.124,4.515c-0.384,0.782-0.768,1.564-1.166,2.332c-0.192,0.398-0.399,0.782-0.62,1.166 c-0.502,0.974-1.018,1.948-1.549,2.907c-0.059,0.103-0.103,0.192-0.162,0.28c-0.65,1.18-1.328,2.346-2.022,3.512 c-0.325,0.546-0.649,1.077-0.988,1.623c-0.339,0.576-0.694,1.151-1.063,1.726c-0.28,0.443-0.56,0.886-0.856,1.328 c-0.31,0.487-0.62,0.974-0.959,1.446c-0.265,0.428-0.546,0.841-0.841,1.254c-0.28,0.413-0.561,0.826-0.856,1.239 c-0.148,0.251-0.325,0.502-0.516,0.738c-0.324,0.487-0.679,0.989-1.033,1.476c-2.685,3.733-5.548,7.319-8.587,10.756 c-0.545,0.635-1.106,1.254-1.667,1.874c-0.723,0.797-1.446,1.594-2.184,2.361c-0.856,0.9-1.741,1.8-2.627,2.686 c-0.884,0.885-1.785,1.77-2.685,2.626c-0.767,0.738-1.564,1.46-2.361,2.184c-0.62,0.561-1.239,1.121-1.874,1.667 c-3.437,3.04-7.023,5.902-10.756,8.588c-0.487,0.354-0.989,0.708-1.476,1.033c-0.236,0.192-0.487,0.369-0.738,0.516 C285.508,322.722,285.094,323.003,284.682,323.283z"></path> </g> </g></svg>
                    </label>
                    <input name="s" type="text" placeholder="Search for an employee" />
                </form>

                <div class="filter">
                    <h4 class="">Filter by</h4>
                    <div class="option-container">
                        <c:choose>
                            <c:when test="${not empty departments}">
                                <c:forEach var="department" items="${departments}">
                                    <button class="filter-option">${department.value.name}</button>
                                </c:forEach>
                            </c:when>
                        </c:choose>
                    </div>
                </div>
            </div>

            <div class="employees-cards">
                <div class="employee-card">
                    <%
                        Random rand = new Random();
                        int randomNumber = rand.nextInt(7) + 1; // Generates a number between 1 and 7
                    %>
                    <img src="<%= request.getContextPath() %>/images/portrait<%= randomNumber %>.png" />

                    <div class="card-info">
                        <div class="info-line">
                            <p>Cassandra Watergate</p>
                            <hr/>
                            <div class="label">
                                <svg viewBox="0 0 16 16" fill="" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M16 2H0V14H16V2ZM5 10.5C6.38071 10.5 7.5 9.38071 7.5 8C7.5 6.61929 6.38071 5.5 5 5.5C3.61929 5.5 2.5 6.61929 2.5 8C2.5 9.38071 3.61929 10.5 5 10.5ZM10 5H14V7H10V5ZM14 9H10V11H14V9Z" fill=""></path> </g></svg>
                                <p>Name</p>
                            </div>
                        </div>
                        <div class="info-line">
                            <svg viewBox="0 0 16 16" fill="" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M16 2H0V14H16V2ZM5 10.5C6.38071 10.5 7.5 9.38071 7.5 8C7.5 6.61929 6.38071 5.5 5 5.5C3.61929 5.5 2.5 6.61929 2.5 8C2.5 9.38071 3.61929 10.5 5 10.5ZM10 5H14V7H10V5ZM14 9H10V11H14V9Z" fill=""></path> </g></svg>
                            <p>06451257841</p>
                        </div>
                    </div>
                </div>
            </div>


<%--            <div align="center">--%>
<%--                <table border="1">--%>
<%--                    <thead>--%>
<%--                    <tr>--%>
<%--                        <th>ID</th>--%>
<%--                        <th>Name</th>--%>
<%--                        <th>Email</th>--%>
<%--                        <th>Post</th>--%>
<%--                        <th>Department</th>--%>
<%--                        <th>Actions</th>--%>
<%--                    </tr>--%>
<%--                    </thead>--%>
<%--                    <tbody>--%>
<%--                    <c:choose>--%>
<%--                        <c:when test="${not empty employees}">--%>
<%--                            <c:forEach var="employee" items="${employees}">--%>
<%--                                <tr>--%>
<%--                                    <td>${employee.id}</td>--%>
<%--                                    <td>${employee.name}</td>--%>
<%--                                    <td>${employee.email}</td>--%>
<%--                                    <td>${employee.post}</td>--%>
<%--                                    <td>--%>
<%--                                        <c:choose>--%>
<%--                                            <c:when test="${not empty employee.department}">--%>
<%--                                                ${employee.department.name}--%>
<%--                                            </c:when>--%>
<%--                                            <c:otherwise>--%>
<%--                                                No department assigned.--%>
<%--                                            </c:otherwise>--%>
<%--                                        </c:choose>--%>
<%--                                    </td>--%>
<%--                                    <td>--%>
<%--                                        <form action="edit" method="get" style="display:inline;">--%>
<%--                                            <input type="hidden" name="id" value="${employee.id}" />--%>
<%--                                            <button type="submit">Edit</button>--%>
<%--                                        </form>--%>
<%--                                        <form action="delete" method="post" style="display:inline;" onsubmit="return confirm('Are you sure you want to delete this employee?');">--%>
<%--                                            <input type="hidden" name="id" value="${employee.id}" />--%>
<%--                                            <button type="submit">Delete</button>--%>
<%--                                        </form>--%>
<%--                                    </td>--%>
<%--                                </tr>--%>
<%--                            </c:forEach>--%>
<%--                        </c:when>--%>
<%--                        <c:otherwise>--%>
<%--                            <h3></h3>--%>
<%--                        </c:otherwise>--%>
<%--                    </c:choose>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
<%--            </div>--%>
        </div>
    </main>
</body>
</html>