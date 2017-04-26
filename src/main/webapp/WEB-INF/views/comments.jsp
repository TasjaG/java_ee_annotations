<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page session="true"%>
<html>

<div class="col-md-2" id="rightCol">
	<div class="row" id="comments" style="margin-left: 0px; width: 300px; height: 600px">
		<div class="panel panel-default sidepanel">
			<div class="panel-body">

				<c:if test="${not empty stationID}">

					<form name='loginForm'
						  action="info" method='POST'>

						<h2>${stationID}</h2>
						<h3>Comments:</h3>

						<c:if test="${not empty commentsFrom}">
							<p>${commentsFrom}</p>
						</c:if>

						<p>Leave your own comment:</p>

						<input type="text" name="text">
						<p></p>
						<input type="hidden" name="stationId"
							   value="${stationID}" />

						<input type="hidden" name="author"
							   value="" />

						<input name="submit" type="submit"
							   value="submit comment" />

						<input type="hidden" name="${_csrf.parameterName}"
							   value="${_csrf.token}" />

					</form>
				</c:if>

				<c:if test="${empty stationID}">
					<p>Click to any station to see comments</p>
				</c:if>


			</div>
		</div>
		<div class="panel panel-default sidepanel">
			<div class="panel-body"><span>Randomized advice:</span>
				<p id="advice"></p>

				<script>
                    window.onload = function() {
                        displayAdvice();
                    };

                    var adviceArray = ["Don't sit in the middle train cart, thet's where a lot of thieves gather.", "Watch your belongings when exiting on interchange stations.", "Beware the purse grabbers on end stations.", "Use bags that have zippers. Same goes for your jacket pockets.", "Don't carry important things like your mobile phone or credit card in your jeans. Same goes for the easily opened pockets of your backpack."];

                    function displayAdvice(){
                        var rand = Math.floor(Math.random() * adviceArray.length);
                        document.getElementById("advice").innerHTML = adviceArray[rand];
                    }
				</script></div>
		</div>
	</div>
</div>
</html>
