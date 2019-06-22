as yet unclassified
tick: aUniverse

	aUniverse query: #(UniverseView) filter: [:view | view isCurrent] do: [:view | view isCurrent ifTrue: [
		aUniverse query: #(DeltaTime) do: [:deltaTime |
			aUniverse canvas
				drawString: deltaTime fpsAverage asInteger asString
				at: 0 @ 0
				font: nil 
				color: Color white";
				drawString: ((World instVarNamed: #worldState) instVarNamed: #interCycleDelay) delayDuration asString
				at: 90 @ 0
				font: nil
				color: Color white"]]]