accessing
menu

	^ MenuMorph new
		add: 'remove' target: codeEditor selector: #removeWatch: argument: self id;		
		yourself