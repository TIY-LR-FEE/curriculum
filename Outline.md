* CSS Centering
* CSS fonts
* setInterval, setTimeout & Callbacks
* Dates
* jQuery Overview
* Tables
* CLI Intro?


# Introduction to Gulp
1. Convert node-sass usage into sass task
2. Tasks for static content (html, images)

http://pcottle.github.io/learnGitBranching/

* Node Servers
	1. Basic server
		* Example Code:
			```javascript
				var http = require('http');

				var app = (req, res) => {
					res.end('Hello Node.js');
				};

				var server = http.createServer(app);
				server.listen(3000);
			```
			* There is no browser, so things work differently. console.log logs to the terminal running our server
	2. Counting visitors
		* Node is a long running task. We can use variables in memory to carry information between requests.
		* Example Code:
			```javascript
				var http = require('http');

				var visitor;

				var app = (req, res) => {
					visitor++;

					res.end(`
						<h1>Hello Node.js!</h1>
						<h2>You are visitor number ${visitor}</h2>
					`);
				};

				var server = http.createServer(app);

				server.listen(3000, () => {
					console.log(`Server Started`);
					visitor = 0;
				});
			```
		* Actually increments twice! WTF?
		* The user is making multiple requests to the server.
		* console.log(`visit: ${req.url}`) in app call to prove


----------




* Comments in JavaScript and Sass




* "use strict";


* Regular Expressions



* ES2015
	1. Reconfiguring Codepen
	2. let/const
	3. Arrow Functions
	4. Destructuring

* Standalone ES2015
	1. Transpilation Concept Review
	2. Babel (and presets)
	3. babel-node

* ES2015 Modules
	1. Concepts for import/export
	2. Browserify and Babelify
	3. Gulp task

* ES2015 Classes
	1. Syntax, difference to Prototype
	2. extends
	3. Constructors, super

* Promises



* Node Basics
	1. Creating a server
	2. Creating a proxy
