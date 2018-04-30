// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, or any plugin's
// vendor/assets/javascripts directory can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file. JavaScript code in this file should be added after the last require_* statement.
//
// Read Sprockets README (https://github.com/rails/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require rails-ujs
//= require activestorage
//= require turbolinks
//= require_tree .

var hologram = {
  //dashboard.moves makes the pop-up visible
newShip : function() {
  document.getElementById("newShip_div").style.visibility = "visible";
  document.getElementById("newShip_pic").style.visibility = "visible";

  document.getElementById("newTrip_div").style.visibility = "hidden";
  document.getElementById("newTrip_pic").style.visibility = "hidden";

  document.getElementById("viewShips_div").style.visibility = "hidden";
  document.getElementById("viewShip_pic").style.visibility = "hidden";

  document.getElementById("viewTrips_div").style.visibility = "hidden";
  document.getElementById("viewTrip_pic").style.visibility = "hidden";

}, newTrip : function() {
  document.getElementById("newTrip_div").style.visibility = "visible";
  document.getElementById("newTrip_pic").style.visibility = "visible";

  document.getElementById("newShip_div").style.visibility = "hidden";
  document.getElementById("newShip_pic").style.visibility = "hidden";

  document.getElementById("viewShips_div").style.visibility = "hidden";
  document.getElementById("viewShip_pic").style.visibility = "hidden";

  document.getElementById("viewTrips_div").style.visibility = "hidden";
  document.getElementById("viewTrip_pic").style.visibility = "hidden";

}, viewShip : function() {
  document.getElementById("viewShips_div").style.visibility = "visible";
  document.getElementById("viewShip_pic").style.visibility = "visible";

  document.getElementById("newShip_div").style.visibility = "hidden";
  document.getElementById("newShip_pic").style.visibility = "hidden";

  document.getElementById("newTrip_div").style.visibility = "hidden";
  document.getElementById("newTrip_pic").style.visibility = "hidden";

  document.getElementById("viewTrips_div").style.visibility = "hidden";
  document.getElementById("viewTrip_pic").style.visibility = "hidden";

}, viewTrip : function() {
  document.getElementById("viewTrips_div").style.visibility = "visible";
  document.getElementById("viewTrip_pic").style.visibility = "visible";

  document.getElementById("newShip_div").style.visibility = "hidden";
  document.getElementById("newShip_pic").style.visibility = "hidden";

  document.getElementById("newTrip_div").style.visibility = "hidden";
  document.getElementById("newTrip_pic").style.visibility = "hidden";

  document.getElementById("viewShips_div").style.visibility = "hidden";
  document.getElementById("viewShip_pic").style.visibility = "hidden";
}
};

var imageRepository = new function() {
	// Define images
	this.background = new Image();
	// Set images src
	this.background.src = "/assets/bg.png";
}

function Drawable() {
	this.init = function(x, y) {
		// Default variables
		this.x = x;
		this.y = y;
	}
	this.speed = 0;
	this.canvasWidth = 0;
	this.canvasHeight = 0;
	// Define abstract function to be implemented in child objects
	this.draw = function() {
	};
}

function Background() {
	this.speed = 1; // Redefine speed of the background for panning
	// Implement abstract function
	this.draw = function() {
		// Pan background
		this.y += this.speed;
		this.context.drawImage(imageRepository.background, this.x, this.y);
		// Draw another image at the top edge of the first image
		this.context.drawImage(imageRepository.background, this.x, this.y - this.canvasHeight);
		// If the image scrolled off the screen, reset
		if (this.y >= this.canvasHeight)
			this.y = 0;
	};
}
// Set Background to inherit properties from Drawable
Background.prototype = new Drawable();

function Game() {
	/*
	 * Gets canvas information and context and sets up all game
	 * objects.
	 * Returns true if the canvas is supported and false if it
	 * is not. This is to stop the animation script from constantly
	 * running on older browsers.
	 */
	this.init = function() {
		// Get the canvas element
		this.bgCanvas = document.getElementById('background');
		// Test to see if canvas is supported
		if (this.bgCanvas.getContext) {
			this.bgContext = this.bgCanvas.getContext('2d');
			// Initialize objects to contain their context and canvas
			// information
			Background.prototype.context = this.bgContext;
			Background.prototype.canvasWidth = this.bgCanvas.width;
			Background.prototype.canvasHeight = this.bgCanvas.height;
			// Initialize the background object
			this.background = new Background();
			this.background.init(0,0); // Set draw point to 0,0
			return true;
		} else {
			return false;
		}
	};

  // Start the animation loop
	this.start = function() {
		animate();
	};
}

function animate() {
	requestAnimFrame( animate );
	game.background.draw();
}
/**
 * requestAnim shim layer by Paul Irish
 * Finds the first API that works to optimize the animation loop,
 * otherwise defaults to setTimeout().
 */
window.requestAnimFrame = (function(){
	return  window.requestAnimationFrame   ||
			window.webkitRequestAnimationFrame ||
			window.mozRequestAnimationFrame    ||
			window.oRequestAnimationFrame      ||
			window.msRequestAnimationFrame     ||
			function(/* function */ callback, /* DOMElement */ element){
				window.setTimeout(callback, 1000 / 60);
			};
})();

var game = new Game();
function init() {
	if(game.init())
		game.start();
}
