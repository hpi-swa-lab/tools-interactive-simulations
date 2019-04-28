as yet unclassified
resolveCollision: anEntity with: anotherEntity

	| firstRect secondRect velocityDelta collider collidee |
	firstRect := anEntity first position extent: anEntity second size.
	secondRect := anotherEntity first position extent: anotherEntity second size.
	
	velocityDelta := anEntity third velocity - anotherEntity third velocity.
	
	velocityDelta x abs > velocityDelta y abs
		ifTrue: [" | newVelX |
			newVelX := (anEntity third velocity x + anotherEntity third velocity y).
			anEntity third velocity: newVelX @ anEntity third velocity y.
			anotherEntity third velocity: newVelX @ anotherEntity third velocity y"
			collider := anEntity third velocity x abs > anotherEntity third velocity x abs ifTrue: [anEntity] ifFalse: [anotherEntity].
			collidee := collider == anEntity ifTrue: [anotherEntity] ifFalse: [anEntity].
			collider first position: (collider third velocity x > 0
				ifTrue: [(collidee first position x - collider second size x) @ collider first position y]
				ifFalse: [(collidee first position x + collidee second size x) @ collider first position y]).
			collider third velocity: 0 @ collider third velocity y]
		ifFalse: [" | newVelY |
			newVelY := (anEntity third velocity y + anotherEntity third velocity y).
			anEntity third velocity: anEntity third velocity x @ newVelY.
			anotherEntity third velocity: anotherEntity third velocity x @ newVelY".
			collider := anEntity third velocity y abs > anotherEntity third velocity y abs ifTrue: [anEntity] ifFalse: [anotherEntity].
			collidee := collider == anEntity ifTrue: [anotherEntity] ifFalse: [anEntity].
			collider first position: (collider third velocity y > 0
				ifTrue: [collider first position x @ (collidee first position y - collider second size y)]
				ifFalse: [collider first position x @ (collidee first position y + collidee second size y)]).
			collider third velocity: collider third velocity x @ 0]