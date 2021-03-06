<%@ page import="com.formation.tpbootstrap.beans.*, java.util.List" language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
		<title>Référencement</title>
		<jsp:include page="./inc/_css.jsp"></jsp:include>
	</head>
	<body>
		<jsp:include page="./inc/_header.jsp"></jsp:include>
		
		<table class="table table-hover">
			<thead>
				<tr>
					<th>Nom</th>
					<th>Quantité</th>
					<th>Prix</th>
					<th>Description</th>
				</tr>
			</thead>
			
			<tbody>
				<%if (request.getAttribute("listeBillets") != null) {
			    	List listeBillets = (List)request.getAttribute("listeBillets");
			    	for (int i = 0; i < listeBillets.size(); i++) {
			    		Produit produit = (Produit)listeBillets.get(i);
				%>
					<tr data-href="/tpbootstrap/produit?id=<%=produit.getId() %>">
			        	<td>
			        		<A HREF="/tpbootstrap/produit?id=<%=produit.getId() %>"><%=produit.getTitre() %></A>
			        	</td>
			        	<td>
			        		<%=produit.getQuantite() %>
			        	</td>
			        	<td>
			        		<%=produit.getPrix() %> euros
			        	</td>
			        	<td>
			        		<%=produit.getDescription() %>
			        	</td>
			        </tr>
				<%	}
			    }%>
			</tbody>
		</table>
		
		<jsp:include page="./inc/_footer.jsp"></jsp:include>
	</body>
</html>