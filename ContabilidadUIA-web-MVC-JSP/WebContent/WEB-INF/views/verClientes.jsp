<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ page import="main.java.uia.com.contabilidad.ContabilidadUIA.*" %>


<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<title>Clientes</title>
</head>
<body>	
	<jsp:useBean id='contabilidad' class='main.java.uia.com.contabilidad.ContabilidadUIA'/>

    <table border=1>
        <thead>
            <tr>
                <th>Nombre</th>
                <th>Id</th>
                <th>Compras</th>
                <th>Cuentas</th>
                <th>Cheques</th>
                <th colspan=2>Mantenimiento</th>
            </tr>
        </thead>
        
        <tbody>          
        	<c:forEach var="cliente" items="${contabilidad.getListaProveedores()}">
                <tr>
                    <td><c:out value="${cliente.name}" /></td>
                    <td><c:out value="${cliente.id}" /></td>
                    
                    <td><a href="compras?clienteName=<c:out value="${cliente.name}"/>">Ver</a></td>
                    
                    <td><a href="cuentas?clienteName=<c:out value="${cliente.name}"/>">Ver</a></td>
                    <td><a href="cheques?clienteName=<c:out value="${cliente.name}"/>">Ver</a></td>
                    <td><a href="actualiza?clienteName=<c:out value="${cliente.name}"/>">Actualizar</a></td>
                    <td><a href="borra?clienteName=<c:out value="${cliente.name}"/>">Borrar</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="ClienteController?action=insert">Agregar Cliente</a></p>
</body>
</html>