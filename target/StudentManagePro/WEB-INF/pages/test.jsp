<%@ page contentType="text/html;charset=UTF-8" language="java"
    pageEncoding="utf-8" isELIgnored="false" %>
<%-- pageEncoding="utf-8" isELIgnored="false" 这个不加入的话可能会无法使用EL表达式 --%>
<html>
<head>
    <title>Test</title>
</head>
<body>
    1001号学生的信息：${requestScope.student.id}-${requestScope.student.name}-${requestScope.student.sex}-${requestScope.student.age}
</body>
</html>
