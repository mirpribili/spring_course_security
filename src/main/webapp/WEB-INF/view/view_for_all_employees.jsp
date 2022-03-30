<%@ taglib prefix="security" uri="http://www.springframework.org/security/tags" %>
<!DOCTYPE html>
<html>
<body>
    <h2>All Employees!</h2>
    <security:authorize access="hasRole('HR')">
    <p><input type="button" value="salary"
        onclick="window.location.href = 'hr_info'"></p>
        <p>Only for HR staff</p>
    </security:authorize>

    <security:authorize  access="hasRole('MANAGER')">
        <p><input type="button" value="Performance"
                   onclick="window.location.href = 'manager_info'"></p>
        <p>Only for Managers</p>
    </security:authorize>
</body>
</html>