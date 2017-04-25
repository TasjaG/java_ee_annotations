window.onload = function() {
  displayAdvice();
};

var adviceArray = ["Don't sit in the middle train cart, thet's where a lot of thieves gather.", "Watch your belongings when exiting on interchange stations.", "Beware the purse grabbers on end stations.", "Use bags that have zippers. Same goes for your jacket pockets.", "Don't carry important things like your mobile phone or credit card in your jeans. Same goes for the easily opened pockets of your backpack."];   

function displayAdvice(){
    var rand = Math.floor(Math.random() * adviceArray.length);
    document.getElementById("advice").innerHTML = adviceArray[rand];
}