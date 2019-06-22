instance creation
openFor: aSystem with: aTool

	| widget |
	widget := self basicNew.
	^ widget
		system: aSystem;
		parentTool: aTool;
		initialize