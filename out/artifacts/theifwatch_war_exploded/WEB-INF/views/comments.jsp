<div class="col-md-2" id="rightCol">
	<div class="row" id="comments" style="margin-left: 0px; width: 300px; height: 600px">
		<div class="panel panel-default sidepanel">
			<div class="panel-body">
				<!-- <ul class="list-group">
					<li class="list-group-item">
						<h4>Nickname</h4>
						<p>Some comment</p>
					</li>
					<li class="list-group-item">
						<h4>Nickname</h4>
						<p>Some comment</p>
					</li>
					<li class="list-group-item">
						<h4>Nickname</h4>
						<p>Some comment</p>
					</li>
				</ul> -->
				<p>Click to any station to see comments</p>
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
