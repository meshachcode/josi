# JoSi's Roadmap

## Installation

### 1. Add josi to external-scripts.json

	[
		"josi"
	]
		
### 2. Add josi to package.json

	"dependencies": {
		"JoSi": "*",
		"josi": "*"
	}
	
NOTE: This is not a complete representation of dependencies for this file. Just an illustration of where to put the info.

***

## JoSi's Developmental Stages

## Beta

### Attentive

> I will no longer 'forget' what I know when the server restarts. 

### Informative

> I will access various data points and crunch numbers for you. 

## Mo-Beta 

### Authenticating

> I will learn to handle private and secure information, so that I may be useful in more advanced activities. 

### Multi-Tasking

> I will learn to handle multiple steps in a given activity, so that you may construct complex actions for me to complete for you. 

### Contextual

> I will be able to distinguish between multiple conversations that I have with you and your colleagues, and will maintain my place in our conversation if we are interrupted. 

## Beta Still 

### Self-Teaching

> I will leverage RSS, Crons, Ear Dropping, and other tools to learn about the best processes, latest updates, and newest team members on my own. 

### Multi-Functional

> I will continue adding specialized services for the GCC, Labs, Resources, Finance, & Sales circles as processes and documentation are improved. 

## Besta 

### Self-Replicating

> I will learn to spawn up instances of my core architecture when necessary. 

> Instructional

> I will store procedural on-boarding information to aide in the orientation of new hires. Benevolent

> I will proactively seek ways to improve upon systems and processes, by offering analysis, notifications, recommendations, and rewards.

***

# Dev Structure

### JoSi & JoSi Dir Structure

	- JoSi/
		- node_modules/
			- josi/
				- josi.coffee
				- node_modules/
					- josi-access/
					- josi-admin/
					- josi-auth/
					- josi-aware/
					- josi-memory/
					- josi-plan/
					- josi-recognition/
					- josi-routes/
					- josi-seek/
					- josi-speech/
					- josi-state/
					- josi-team/
				- package.json
				- README.md

### josi-access

[coming soon]

	npm install josi-access

This is a framework for connecting all of your robot's various API's, adapters, and environments. This is where you handle all of your per-application authentication and control. These modules depend heavily on environment variables, and will need to evolve to account for easier management over time.

	- josi-access/
		- node_modules/
			- gitJoSi/
			- node-codebase/
			- node-harvest/
			- node-xero/
		- scripts/
			- codebase.coffee
			- harvest.coffee
			- xero.coffee

### josi-admin

[coming soon]

	npm install josi-admin

All of the tools necessary for administering JoSi via the adapter interface (HipChat, IRC…) are managed in this package.

	- josi-admin/
		- node_modules/
			- josi-cron/
		- scripts/		
			- help.coffee
			- update.coffee

### josi-auth

[coming soon]

	npm install josi-auth

This is where you manage any scripts that require per-user authentication in any way. 

	- josi-auth/
		- scripts/
			- alias.coffee
			- auth.coffee
			- oauth.coffee

### josi-aware

[coming soon]

	npm install josi-aware

This is the overall event management system, where you manage all namespaced events, and handle things like server monitoring, repo sync, and emergency / warning protocols.

	- josi-aware/
		- scripts/
			?- moderator.coffee
			?- facade.coffee

### josi-memory

[coming soon]

	npm install josi-memory

This is where you organize and manage all of your robot's short and long-term memory. Whatever storage and backup plans you have for JoSi are managed here, as are any memory Models, for more complex applications.

	- josi-memory/
		- scripts/
			- 

### josi-plan

[coming soon]

	npm install josi-plan

Need a robot secretary? josi-plan is the manager for all things scheduling, planning, and decision-making.

	- josi-plan/
		- scripts/
			- workingon.coffee			

### josi-routes

[coming soon]

	npm install josi-routes

This is where all of your robot's http activity is managed. Your team can endlessly-extend http connectors to your JoSi's available processes and commands in these simple packages.

	- josi-routes/
		- scripts/
			- httpd.coffee
			- in.coffee
			- out.coffee
		- routes.coffee
		- package.json

### josi-seek

[coming soon]

	npm install josi-seek

This is how your JoSi connects to the public internet (think: **no auth**). You can configure your preferred sources, and easily test and adapt new sources as you discover them.

	- josi-seek/
		- scripts/
			- archer.coffee
			- google.coffee
			- jokes.coffee
			- pugme.coffee
			- wikipedia.coffee

### josi-speech

[coming soon]

	npm install josi-speech

Natural language is a crucial part of the value and adoption of your JoSi by your team. Manage her standard responses, diction, and language here.

	- josi-speech/
		- scripts/
			- announce.coffee
			- chat.coffee
			- cheer.coffee
			- conversation.coffee
			- error.coffee
			- polite.coffee
			- say.coffee
			- tell.coffee
			- translate.coffee

### josi-state

[coming soon]

	npm install josi-state

When your JoSi is aware of his current state, he can report on changes to that state in any way. This is the framework for handling all your JoSi's various states, and the processes you want implemented for each change.

	- josi-state/
		- scripts/
			- status.coffee

### josi-team

[coming soon]

	npm install josi-team

Everyone wants to have a little fun with a robot every now and then. josi-play is where you manage all of your team-building, social interactions.

	- josi-team/
		- scripts/
			- acheivement.coffee
			- birthday.coffee
			- congratulate.coffee
			- encourage.coffee
			- karma.coffee
			- points.coffee
