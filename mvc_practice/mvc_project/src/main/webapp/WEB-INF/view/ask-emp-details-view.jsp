<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>

<br>

<h2>Dear Employee, Please enter your details</h2>

<br>

<%--
   for MyController

   <form action="showDetails" method="get">

        <input type="text" name="employeeName"
        placeholder="Write your name"/>
        <input type="submit"/>

    </form>--%>

<%--using forms from springframeword(check Controller2)--%>

<form:form action="showDetails" modelAttribute="employee">

    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    Department <form:select path="department">
    <form:options items="${employee.departments}"/>
    </form:select>
    <br><br>
    What cat do you want?
    <br>
 <%--   BMW<form:radiobutton path="carBrand" value="BMW"/>
    Audi<form:radiobutton path="carBrand" value="Audi"/>
    MB<form:radiobutton path="carBrand" value="Mercedes-Benz"/>--%>
    <form:radiobuttons path="carBrand" items="${employee.carBrands}"/>
    <br><br>
    Foreign language(s)
    <br>
   <%-- English <form:checkbox path="languages" value="English"/>
    Chinese <form:checkbox path="languages" value="Chinese"/>
    Japanese <form:checkbox path="languages" value="Japanese"/>--%>
    <form:checkboxes path="languages" items="${employee.languageMap}"/>

    <input type="submit" value="click me">

</form:form>

</body>

</html>
<%--1.hard-coded вариант--%>

<%--2. вариант через HashMap'у--%>
