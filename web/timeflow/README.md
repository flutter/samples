A gentle animation that provides a calming experience to stressed developers.

Contributed as part of the Flutter Create 5K challenge by Fabian Stein.
Original source at
[github.com/Fabian-Stein/timeflow](https://github.com/Fabian-Stein/timeflow).

Timers and stopwatches aren’t the most peaceful gadgets, often reminding us of
urgent tasks, deadlines and unpleasant appointments. Not in this case, Timeflow
is the epitome of pure tranquility, ideal for mindful activities: mediation,
yoga or exercise. The slow, breath like animation is free of sudden, abrupt
jumps and builds up to a Zen finish.

## Use

Tap the screen to start/pause the timer

when paused:
  
  1. red button     reset the timer and the animation
  
  2. green button:   resume the timer
  
when finished/startscreen:

  1. blue button    choose the desired timeframe
  
  2. orange button  randomize a new triangle mesh/color scheme

## Code description

Please run dartfmt for readability.

Some of the variable names are short and I have not used comments, because of the character limit, so here is an explanation.

### globals

triangles: the list of triangles that are animated

percent: how much of the timer is completed (from 0.0 to 1.0)

cTime: the time that is already gone by since the start of the timer (paused time is excluded)

dur: how long is the timer in Milliseconds

rng: the random number generator that is used throughout the program

rebuild: is an indicator that the triangles destination points should be rebuild

### class TM
  The timer class that manages the state of the app
  
	SI cState: tracks the change of the apps state: is the timer stopped, playing or paused  
	pTime: tracks when the ticker was paused
	Ticker t: the ticker that calls the update function up every frame
	up: function that updates the current time or stops the timer, when the duration is reached
	
	press, pause, play, stop: callback functions, for the button presses
	openDialog: 	callback function, opens the numberPickerDialog, which is used to pick the timer duration
	build: returns the app, mainly the custom painter P is called

### class P
  The custom painter, which draws the triangles
  
    paint:
		d = diameter of the circle is 2/3 of the width of the screen
		1. if the triangles are not setup completely (rebuild == true) calculate the outer points of for every triangle setupdP this happens here, because the ratio of the screens has got be known 
		2. paint all triangles
	  shouldRepaint: every frame should be repainted

### class T
  The triangle class
  
	sP: the list of the starting points of the triangle (these are the points you see at the start of the animation)
	dP: the list of destination points (the outer points, where the triangles wander to first, before they circle back to the starting point)
	
	constructor: p1,p2,p3 are the starting points, c is the overall color scheme (blue, red, green etc.)
		for the triangle a random color out of the color scheme is chosen:    p.color = c[100 * (rng.nextInt(9) + 1)];
		the rest of the function determines, if the triangle is in the circle, if it is, it is added to the triangles list, otherwise it is forgotten and should be freed by the garbage collector

	setupdP: setup the destination points, choose a random x and y position on the screen

	cP: 	gives back the current points of the triangle with respect to the timerstate, some trigonometry and interpolations happen here
		this is responsible for the animations
		1. alter the alpha repetitively:
		2. alter the distance to the starting points, use a linear interpolation between the starting points sP and the destination points dP with respect to the percentage already done
		3. alter the angle with respect to the starting points
		4. alter the size of the triangles repetitively
   
### function setupT
  setup the Triangles (starting positions + color scheme)
  
	dim: dimensions of the “net”
	1. make a net of points in the following manner:
    .   .   .   .   .
      .   .   .   .
    .   .   .   .   .
      .   .   .   .
    .   .   .   .   .
      .   .   .   .
	2. alter the points a little bit by randomization, so that the net is a little more intresting
	3. connect the points to form triangles
	4. randomize a color scheme for the triangles

