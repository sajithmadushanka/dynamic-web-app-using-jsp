<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add Event</title>
    <base href="/event-planning-system/Event/">
    <link rel="stylesheet" href="CSS/add_event.css">
</head>
<body>
    <div class="container">
        <h2>Add Event</h2>
       <form action="${pageContext.request.contextPath}/EventServlet"  method="post">
            <div class="form-row">
                <div class="form-col">
                    <label for="eventTitle">Event Title:</label>
                    <input type="text" id="eventTitle" name="eventTitle" required>
                </div> 
                <div class="form-col">
                    <label for="eventDate">Event Date and Time:</label>
                    <input type="datetime-local" id="eventDate" name="eventDate" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-col">
                    <label for="eventLocation">Event Location:</label>
                    <input type="text" id="eventLocation" name="eventLocation" required>
                </div>
                <div class="form-col">
                    <label for="eventGuests">Expected Number of Guests:</label>
                    <input type="number" id="eventGuests" name="eventGuests" required>
                </div>
            </div>
            <div class="form-row">
                <div class="form-col">
                    <label for="eventBudget">Event Budget:</label>
                    <input type="number" id="eventBudget" name="eventBudget" required>
                </div>
                <div class="form-col">
                    <label for="eventTheme">Event Theme:</label>
                    <select id="eventTheme" name="eventTheme">
                        <option value="wedding">Wedding</option>
                        <option value="corporate">Corporate</option>
                        <option value="birthday">Birthday</option>
                        <option value="other">Other</option>
                     
                    </select>
                </div>
            </div>
            <label for="eventDescription"> &nbsp;&nbsp; &nbsp;Event Description:</label>
            <textarea id="eventDescription" name="eventDescription" ></textarea>
            <input type="submit" value="Add Event">
        </form>
    </div>
</body>
</html>
