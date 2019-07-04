accessing
dataFlowDestinations

	^ Array streamContents: [:stream |
		systemsInUI keysAndValuesDo: [:system :morph | | dest |
			(self queriesInSystemCode: system) do: [:queryComponents |
				dest := ECSDataFlowDestination new
					components: queryComponents;
					universe: self universe;
					system: system;
					morph: morph.
				pipeline when: #systemPreTick send: #connectToUniverseQueriedFor: to: dest.
				pipeline when: #systemPostTick send: #disconnectFromUniverseAndReportNumberFor: to: dest.
				stream nextPut: dest]]]