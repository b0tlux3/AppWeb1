<%-- 
    Document   : index
    Created on : 08-may-2018, 22:12:45
    Author     : Admin
--%>

<%@page import="com.ws.Usuario"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Lista Usuarios - WebServices</h1>
            <%-- start web service invocation --%><hr/>
            <%java.util.List<com.ws.Usuario> listaUsuario = new ArrayList();
            %>
    
    <%-- end web service invocation --%><hr/>
        
        <table class = "table table-bordered table-striped table-hover">
            <thead>
                <tr>
                    
                    <th>Nombres</th>
                    <th>ApellidoPaterno</th>
                    <th>ApellidoMaterno</th>
                    <th>Edad</th>
                
            </tr>
                
            </thead>
            
             <%
        
    try {
	com.ws.WebService1_Service service = new com.ws.WebService1_Service();
	com.ws.WebService1 port = service.getWebService1Port();
	// TODO process result here
	listaUsuario = port.getListaUsuarios();
        
            
    } catch (Exception ex) {
	// TODO handle custom exceptions here
    }
    
     %>  
            
            
           <%
        for (int i = 0; i < listaUsuario.size(); i++) {
       %>     
       <tr>
           <td>
            <%=listaUsuario.get(i).getNombre()%>
                </td>
           <td>
            <%=listaUsuario.get(i).getApePaterno()%>
                </td>
                <td>
            <%=listaUsuario.get(i).getApeMaterno()%>
                </td>
                <td>
            <%=listaUsuario.get(i).getEdad()%>
                </td>
                
		</tr>                
        <%       
        }
        %>
                
        </table>
        
        
        
        
    </body>
</html>
