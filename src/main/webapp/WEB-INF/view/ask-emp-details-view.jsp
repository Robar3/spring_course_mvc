<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<body>

<h2>Dear Employee, please enter your details</h2>

<br>
<br>

<form:form action="showDetails" modelAttribute="employee" method="post">
    Name <form:input path="name"/>
    <form:errors path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <form:errors path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <form:errors path="salary"/>
    <br><br>
    Department <form:select path="department">

    <form:options items="${employee.departments}"/>
</form:select>
    <br><br>
    Witch car do you want?
    <form:radiobuttons path="carBrend" items="${employee.carBrands}"/>
    <br><br>

    Foring language(s)
    <form:checkboxes items="${employee.languageList}" path="languages"/>
    <br><br>

    Phone Number <form:input path="phoneNumber"/>
    <form:errors path="phoneNumber"/>
    <br><br>
    Email <form:input path="email"/>
    <form:errors path="email"/>
    <br><br>
    <input type="submit" value="ok">
</form:form>
</body>
</html>