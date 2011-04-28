Feature: After the user logs in and is greeted
		 Display the user with a list of games
		 Prompt the user for a number of a game
		 If game is Global Thermonuclear War refuse to play and quit
		 If game is Global Thermonuclear War print BOOM! and quit

Scenario: Display list of games and select 1
		  Given the application is running
		  And I see "What is your name?"
		  When I type "Kevin" and press Enter
		  And I see "Hello, Kevin!"
		  And I see "[1] Twister\n[2] Hearts\n[3] Checkers\n[4] Trouble\n[5] Global Thermonuclear War"
		  When I type "1" and press Enter
		  Then I should see "Wrong game choice"
		  And the program should exit with status 0