<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Event</title>
    <link rel="stylesheet" href="/event-planning-system/Event/CSS/event.css">
</head>
<body>
	<h1>Events</h1>
<div class="table-card">
	<table>
		<tr>
			<th>Title </th>
			<th>Date and Time </th>
			<th> Location</th>
			<th>No of guest</th>
			<th>theme</th>
			<th>description </th>
			
		</tr>
		<tr>
			 <c:forEach var="event" items="${eventList}">
            <tr>
                <td>${event.title}</td>
                <td>${event.dateAndTime}</td>
                <td>${event.location}</td>
                <td>${event.noOfGuest}</td>
                <td>${event.theme}</td>
                <td>${event.description}</td>
                <td>
                	<div class="box">
                		<a href ="Event/UpdateEvent.jsp?eventId=${event.eventId}
                	&eventTitle=${event.title}
                	&date_time=${event.dateAndTime}
                	&location=${event.location}
                	&noOfGuest=${event.noOfGuest}
                	&theme=${event.theme}
                	&description=${event.description}">Edit</a>
                	</div>
                </td>
                <td><button onclick="deleteEvent('${event.eventId}')">delete</button></td>
            </tr>
            	
        </c:forEach>
		</tr>
	</table>
</div>
	<script>
		function deleteEvent(id){
			let comReuslt = confirm("are you sure ?")
			
			if(comReuslt){
				console.log(id);
				 window.location.href = "EventDeleteServlet?id="+id;
			}
			console.log("clicked");
			
			
		}
	</script>
</body>
</html>