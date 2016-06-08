<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<c:set var="theLocale"
value="${not empty param.theLocale ? param.theLocale : pageContext.request.locale}"
scope="session" />

<fmt:setLocale value="${theLocale}"/>
<fmt:setBundle basename="container.mylabels"/>
<html>

<body>

<a href="i18n-test.jsp?theLocale=en_US">English (US)</a>
 |
<a href="i18n-test.jsp?theLocale=es_ES">Spanish (ES)</a>
 |
<a href="i18n-test.jsp?theLocale=de_DE">German (DE)</a>
 <hr>

<fmt:message key="label.greeting"/> <br/><br/>

<fmt:message key="label.firstname"/> <i>Anand</i><br/><br/>

<fmt:message key="label.lastname"/> <i>Shastri</i> <br/><br/>

<fmt:message key="label.welcome"/> <br/><br/>

<hr/>
Selected locale: ${theLocale}
</body>
</html>