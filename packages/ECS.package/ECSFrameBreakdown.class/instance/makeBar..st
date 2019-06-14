as yet unclassified
makeBar: aString

	^ ECSColoredBar new 
		changeProportionalLayout;
		hResizing: #spaceFill;
		title: aString;
		yourself