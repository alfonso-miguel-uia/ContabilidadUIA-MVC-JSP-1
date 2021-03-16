<%@ page language='java' contentType='text/html; charset=UTF-8'
	pageEncoding='UTF-8'%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>	
<%@ page import="main.java.uia.com.contabilidad.ContabilidadUIA.*" %>
<%@ page import="main.java.uia.com.presentacion.*" %>
<%@ page import="java.util.ArrayList" %>



<!DOCTYPE html PUBLIC '-//W3C//DTD HTML 4.01 Transitional//EN' 'http://www.w3.org/TR/html4/loose.dtd'>
<html>
<head>
<meta http-equiv='Content-Type' content='text/html; charset=UTF-8'>
<title>Cuentas</title>
</head>
<body>	

<%
    Object valueCliente = request.getAttribute("cliente");
	Object listaCompras = request.getAttribute("listaCompras");
	Object listaCuentas = request.getAttribute("listaCuentas");
%>
	<jsp:useBean id='contabilidad' class='main.java.uia.com.contabilidad.ContabilidadUIA'/>
    
    <c:set var="message" value='${requestScope["cliente"]}' />
    
    <table border=1>
        <thead>
            <tr>
                <th>Nombre</th>
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
                    <td>                     
	                    <c:choose>
                    <c:when test="${cliente.name == message}">
		                    <table border=1>
					        <tbody>
							        	<c:forEach var="compra" items="${listaCompras}">
						                <tr>
						                    <td><c:out value="${compra.name}" /></td>
						                    <td><c:out value="${compra.id}" /></td>
						                </tr>
						            	</c:forEach>
		                    </tbody>
		    				</table>
	    				</c:when>    				
	                    </c:choose>
                    </td>                    
                    <td>                            
	                    <c:choose>
	                    <c:when test="${cliente.name == message}">
		                    <table border=1>
					        <tbody>
							        	<c:forEach var="cuenta" items="${listaCuentas}">
						                <tr>
						                    <td><c:out value="${cuenta.name}" /></td>
						                    <td><c:out value="${cuenta.id}" /></td>
						                </tr>
						            	</c:forEach>
		                    </tbody>
		    				</table>
	    				</c:when>    				
	                    </c:choose>
                    </td>
                    <td><a href="cheques&clienteName=<c:out value="${cliente.name}"/>">Ver</a></td>
                    <td><a href="Actualiza&clienteName=<c:out value="${cliente.name}"/>">Actualizar</a></td>
                    <td><a href="borra&clienteName=<c:out value="${cliente.name}"/>">Borrar</a></td>
                </tr>
            </c:forEach>
        </tbody>
    </table>
    <p><a href="ClienteController?action=insert">Agregar Cliente</a></p>
	</body>
    </table>
    <p><a href="CuentaController?action=insert">Agregar Cuenta</a></p>
</body>
</html>