as yet unclassified
addSystemToUI: aSystem

	| stateButton removeButton systemMorph addMethodButton | 
	stateButton := ECSButton new icon: (ECSIcon new changeIconName: (self stateIconForSystem: aSystem)).
	stateButton when: #clicked send: #togglePaused:button: to: self withArguments: {aSystem . stateButton}.
	
	removeButton := ECSButton new
		icon: ECSIcon iconRemove;
		when: #clicked send: #removeSystemFromUniverse: to: self with: aSystem.

	addMethodButton := ECSButton new
		icon: ECSIcon iconPlus;
		when: #clicked send: #addMethodTo: to: self with: aSystem.

	systemMorph := (ECSCollapsible new 
		header: (ECSLabel new contents: aSystem name; hResizing: #spaceFill);
		header: addMethodButton;
		header: stateButton;
		header: removeButton;
		body: (self buildSystemFunctionsAreaAndFillItFor: aSystem);
		collapse).
	
	list addItem: systemMorph.
	systemsInUI at: aSystem put: systemMorph