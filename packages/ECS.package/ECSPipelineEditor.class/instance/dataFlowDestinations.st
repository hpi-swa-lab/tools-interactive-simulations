accessing
dataFlowDestinations

	^ Array streamContents: [:stream |
		systemsInUI keysAndValuesDo: [:system :morph |
			stream nextPut: (ECSDataFlowDestination new components: #(AnnoTile); morph: morph)]]