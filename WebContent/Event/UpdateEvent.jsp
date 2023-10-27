<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Update Event</title>
 <base href="/event-planning-system/Event/">
   <link rel="stylesheet" href="CSS/add_event.css">
</head>
<body>
	
<script>
 function findSelected(value){
		let val = value.toUpperCase().trim();
	
		if(val === 'WEDDING' ){
			return 'WEDDING'
		}else if(val == "BIRTHDAY"){
			return 'BIRTHDAY'
		}
		else if(val == "CORPORATE"){
			return 'CORPORATE'
		}
		else{
			return 'OTHER'
		}
}

</script>
    	<%
    	String theme = request.getParameter("theme"); 
    	int noOfGuest = Integer.valueOf(request.getParameter("noOfGuest").trim());
    	String eventId = request.getParameter("eventId");
    	request.setAttribute("eventId", eventId);
    	%> 
   <div class="container">   	
	<form action="${pageContext.request.contextPath}/EventUpdateServlet?id=${param.eventId}"  method="post">
            <div class="form-row">
                <div class="form-col">
                    <label for="eventTitle">Event Title:</label>
                    <input type="text" id="eventTitle" name="eventTitle" required  value="${param.eventTitle}">
                </div> 
                <div class="form-col">
                    <label for="eventDate">Event Date and Time:</label>
                    <input type="datetime-local" id="eventDate" name="eventDate" required  value ="${param.date_time}">
                </div>
            </div>
            <div class="form-row">
                <div class="form-col">
                    <label for="eventLocation">Event Location:</label>
                    <input type="text" id="eventLocation" name="eventLocation" required value ="${param.location}" >
                </div>
                <div class="form-col">
                    <label for="eventGuests">Expected Number of Guests:</label>
                    <input type="number" id="eventGuests" name="eventGuests" required value= <%=noOfGuest %>>
                </div>
            </div>
            <div class="form-row">
                <div class="form-col">
                    <label for="eventBudget">Event Budget:</label>
                    <input type="number" id="eventBudget" name="eventBudget" required>
                </div>
                <div class="form-col">
  
                    <label for="eventTheme">Event Theme:</label>
                    <select id="eventTheme" name="eventTheme" ">
                        <option value="WEDDING">Wedding</option>
                        <option value="CORPORATE">Corporate</option>
                        <option value="BIRTHDAY">Birthday</option>
                        <option value="OTHER">Other</option>
                     
                    </select>
                    
                    <script>
                		let them = findSelected('<%= theme %>');
                	    let eventThemeSelect = document.getElementById('eventTheme');

                		for (let i = 0; i < eventThemeSelect.options.length; i++) {
                	        if (eventThemeSelect.options[i].value === them) {
                	            eventThemeSelect.options[i].selected = true;
                	            break;
                	        }
                		}
                	</script>
                		
                </div>
            </div>
            <label for="eventDescription"> &nbsp;&nbsp; &nbsp;Event Description:</label>
            <textarea id="eventDescription" name="eventDescription" >${param.description}</textarea>
            <input type="submit" value="Update Event">
        </form>
	</div>
</body>
</html>