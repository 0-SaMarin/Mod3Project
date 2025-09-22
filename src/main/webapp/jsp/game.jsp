<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>



<html>
<head>
   <title>JSTL c:if with session</title>
   <link rel="stylesheet" type="text/css" href="/Mod3Project/css/styles.css">
   <link rel="stylesheet" type="text/css" href="/Mod3Project/css/gameStyles.css">
</head>

<body>
    <% String choice = request.getParameter("choice"); %>

   <!-- store into session -->
   <c:set var="runnerName" scope="session" value="${param.username}" />

   <h1><c:out value="Welcome ${sessionScope.runnerName}" /></h1>

   <p>
    When you look around you find a huge maze, you cant climb it. The rest of the field is walled of, the only way to find out where you are and how to get out, is going inside the maze.
   </p>

   <h2>Are you going inside?</h2>

   <div class="button-group">
      <button onclick="window.location.href='game.jsp?choice=enter&camino=0'">Enter</button>
      <button onclick="window.location.href='game.jsp?choice=stay'">Stay</button>
   </div>

   <c:choose>
           <c:when test="${param.choice == 'stay'}">
              <h2>
                 You decide to stay outside. And while you were looking for food you found a chicken,
                 how ironic.
              </h2>
              <div class="button-group">
                 <button onclick="window.location.href='game.jsp'">Start Again</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'enter' and param.camino == '0'}">
              <h2>
                 You are really brave. There are three paths in front of you. Which one will you pick?
              </h2>
              <div class="button-group">
                 <button onclick="window.location.href='game.jsp?choice=left&camino=1'">Left</button>
                 <button onclick="window.location.href='game.jsp?choice=straight&camino=2'">Straight</button>
                 <button onclick="window.location.href='game.jsp?choice=right&camino=3'">Right</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'left' and param.camino == '1'}">
              <h2>
                 After you entered through this tunnel, you find that you can turn right or keep going
                 straight. What will you choose?
              </h2>
              <div class="button-group">
                 <button onclick="window.location.href='game.jsp?choice=straight&camino=1.1'">Straight</button>
                 <button onclick="window.location.href='game.jsp?choice=right&camino=1.2'">Right</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'straight' and param.camino == '2'}">
              <h2>
                 You walk straight ahead, but soon you hit a dead end. You return to the last crossroads.
              </h2>
              <div class="button-group">
                 <button onclick="window.location.href='game.jsp?choice=left&camino=1'">Left</button>
                 <button onclick="window.location.href='game.jsp?choice=straight&camino=2'">Straight</button>
                 <button onclick="window.location.href='game.jsp?choice=right&camino=3'">Right</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'right' and param.camino == '3'}">
              <h2>
                 You walk for a very long time. But after resting some time you find a survivor.
              </h2>
              <h3>
                 Survivor: Hey!!! its so good seeing another survivor, ill take you to our base.
              </h3>
              <h2>You decide to go with him.</h2>
              <div class="button-group">
                 <button onclick="window.location.href='game.jsp?choice=go&camino=3.1'">Go</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'straight' and param.camino == '1.1'}">
              <h2>
                 You find a huge monster, you can&apos;t even describe how it looks.
              </h2>
              <h3>
                 While you were looking for options you see that you can run right or...
                 you can attempt to fight the monster since you found a knife on a nearby skeleton.
              </h3>
              <div class="button-group">
                 <button onclick="window.location.href='game.jsp?choice=fight&camino=1.4'">Fight</button>
                 <button onclick="window.location.href='game.jsp?choice=right&camino=1.5'">Right</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'go' and param.camino == '3.1'}">
              <h2>
                 After walking with the other survivor you arrive at their base.
              </h2>
              <h3>
                 After some rest and planning all of the survivors decide to try to escape.
              </h3>
              <h2>You decide to go with them.</h2>
              <div class="button-group">
                 <button onclick="window.location.href='game.jsp?choice=go&camino=3.2'">Go</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'go' and param.camino == '3.2'}">
              <h1>Congratulations!!!!</h1>
              <h2>
                 You and the survivors managed to escape the maze together!
              </h2>
              <div class="button-group">
                 <button onclick="window.location.href='/Mod3Project/index.jsp'">Start Again</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'fight' and param.camino == '1.4'}">
              <h2>
                 After fighting bravely you manage to take the monster out, but in the process you end up hurt.
              </h2>
              <h3>You can only move forwards now.</h3>
              <h2>You have to keep moving.</h2>
              <div class="button-group">
                 <button onclick="window.location.href='game.jsp?choice=go&camino=1.6'">Go</button>
              </div>
           </c:when>

           <c:when test="${param.choice == 'right' and param.camino == '1.5'}">
              <h1>You ran to the right</h1>
              <h2>
                 After running for some time you fall into some traps, and sadly die.
              </h2>
              <h1>Game Over</h1>
              <div class="button-group">
                 <button onclick="window.location.href='/Mod3Project/index.jsp'">Start Again</button>
              </div>
           </c:when>
   </c:choose>

</body>
</html>