<%@ page isELIgnored="false" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>

<html>
<head>
   <title>Maze Game</title>
   <link rel="stylesheet" type="text/css" href="/Mod3Project/css/styles.css">
   <link rel="stylesheet" type="text/css" href="/Mod3Project/css/gameStyles.css">
</head>
<body>

   <h1>Welcome, <c:out value="${sessionScope.runnerName}" /></h1>

   <p>
      When you look around you find a huge maze. You can’t climb it. The rest of the field is walled off,
      the only way to find out where you are and how to get out is going inside the maze.
   </p>

   <h2>Are you going inside?</h2>

   <div class="button-group">
      <button onclick="window.location.href='/Mod3Project/game?choice=enter&camino=0'">Enter</button>
      <button onclick="window.location.href='/Mod3Project/game?choice=stay'">Stay</button>
   </div>

   <c:choose>
       <c:when test="${choice == 'stay'}">
           <h2>You decide to stay outside. While looking for food you found a chicken. How ironic.</h2>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/index.jsp'">Start Again</button>
           </div>
       </c:when>

       <c:when test="${choice == 'enter' and camino == '0'}">
           <h2>You are really brave. There are three paths in front of you. Which one will you pick?</h2>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/game?choice=left&camino=1'">Left</button>
               <button onclick="window.location.href='/Mod3Project/game?choice=straight&camino=2'">Straight</button>
               <button onclick="window.location.href='/Mod3Project/game?choice=right&camino=3'">Right</button>
           </div>
       </c:when>

       <c:when test="${choice == 'left' and camino == '1'}">
           <h2>After you entered through this tunnel, you find that you can turn right or keep going straight. What will you choose?</h2>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/game?choice=straight&camino=1.1'">Straight</button>
               <button onclick="window.location.href='/Mod3Project/game?choice=right&camino=1.2'">Right</button>
           </div>
       </c:when>

       <c:when test="${choice == 'straight' and camino == '2'}">
           <h2>You walk straight ahead, but soon you hit a dead end. You return to the last crossroads.</h2>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/game?choice=left&camino=1'">Left</button>
               <button onclick="window.location.href='/Mod3Project/game?choice=straight&camino=2'">Straight</button>
               <button onclick="window.location.href='/Mod3Project/game?choice=right&camino=3'">Right</button>
           </div>
       </c:when>

       <c:when test="${choice == 'right' and camino == '3'}">
           <h2>You walk for a very long time. But after resting you find a survivor.</h2>
           <h3>Survivor: Hey! It’s so good seeing another survivor, I’ll take you to our base.</h3>
           <h2>You decide to go with him.</h2>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/game?choice=go&camino=3.1'">Go</button>
           </div>
       </c:when>

       <c:when test="${choice == 'straight' and camino == '1.1'}">
           <h2>You find a huge monster, you can’t even describe how it looks.</h2>
           <h3>You see you can run right, or fight the monster with a knife from a skeleton.</h3>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/game?choice=fight&camino=1.4'">Fight</button>
               <button onclick="window.location.href='/Mod3Project/game?choice=right&camino=1.5'">Right</button>
           </div>
       </c:when>

       <c:when test="${choice == 'go' and camino == '3.1'}">
           <h2>After walking with the survivor you arrive at their base.</h2>
           <h3>After some rest, all survivors decide to try to escape together.</h3>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/game?choice=go&camino=3.2'">Go</button>
           </div>
       </c:when>

       <c:when test="${choice == 'go' and camino == '3.2'}">
           <h1>Congratulations!!!!</h1>
           <h2>You and the survivors managed to escape the maze together!</h2>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/index.jsp'">Start Again</button>
           </div>
       </c:when>

       <c:when test="${choice == 'fight' and camino == '1.4'}">
           <h2>You bravely fight and kill the monster, but you end up hurt.</h2>
           <h3>You can only move forwards now.</h3>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/game?choice=go&camino=1.6'">Go</button>
           </div>
       </c:when>

       <c:when test="${choice == 'right' and camino == '1.5'}">
           <h1>You ran to the right</h1>
           <h2>You fall into traps and sadly die.</h2>
           <h1>Game Over</h1>
           <div class="button-group">
               <button onclick="window.location.href='/Mod3Project/index.jsp'">Start Again</button>
           </div>
       </c:when>
   </c:choose>

</body>
</html>