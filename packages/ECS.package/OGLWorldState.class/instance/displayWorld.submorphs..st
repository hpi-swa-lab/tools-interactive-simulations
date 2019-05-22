as yet unclassified
displayWorld: aWorld submorphs: submorphs

	| canvas deferredUpdateMode |
	canvas := self assuredCanvas.
	(canvas isKindOf: OGLCanvas) ifFalse: [
		FileStream stdout nextPut: $<; nextPutAll: 'shortcut'; cr.
		^ super displayWorld: aWorld submorphs: submorphs].
	
	self checkIfUpdateNeeded ifFalse: [^ self].
	
	deferredUpdateMode := self doDeferredUpdatingFor: aWorld.
	
	canvas
		frameDo: [submorphs reverseDo: [:m | canvas fullDraw: m]]
		worldOrigin: 0 @ 0.
	
	Display forceToScreen: viewBox.
	Display deferUpdates: false; forceDisplayUpdate