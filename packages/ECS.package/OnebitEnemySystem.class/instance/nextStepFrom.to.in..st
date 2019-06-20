as yet unclassified
nextStepFrom: aPosition to: aGoalPosition in: aUniverse

	| cameFrom costSoFar frontier |
	frontier := Heap sortBlock: [:a :b | a first < b first].
	frontier add: {0. aPosition}.
	cameFrom := Dictionary new.
	costSoFar := Dictionary new.
	costSoFar at: aPosition put: 0.
	
	[frontier isEmpty not] whileTrue: [ | current |
		current := frontier removeFirst second.
		current = aGoalPosition ifTrue: [^ self cameFromListToPath: cameFrom from: aPosition to: aGoalPosition].
		
		(aUniverse storageOf: #OnebitPosition) in: aUniverse neighborsOf: current queryBlockedDo: [:next :blockCost | | newCost |
			newCost := (costSoFar at: current) + blockCost.
			((costSoFar includesKey: next) not or: [newCost < (costSoFar at: next)]) ifTrue: [ | priority |
				costSoFar at: next put: newCost.
				priority := newCost + (aGoalPosition x - next x) abs + (aGoalPosition y - next y) abs.
				frontier add: {priority. next}.
				cameFrom at: next put: current]]].
	
	^ #()