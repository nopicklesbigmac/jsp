/**
 * 
 */
 function set_interval(){
		obj = setInterval(timer,1000)
	}
	function timer(){
		var today = new Date();
		document.getElementById("current").innerHTML = today.toLocaleTimeString();
	}