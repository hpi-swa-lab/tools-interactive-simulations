as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'PlatPhysics' #'OnebitPosition' )
		do: [ :physics :position |
			physics velocity += (0 , 0.1).
			position vector: physics velocity + position vector.
			(aUniverse storageOf: #'OnebitPosition')
				in: aUniverse
				around: position vector
				query: #( #'PlatColliding' #'OnebitPosition' )
				do: [ :colliding :collidingPosition |
					(collidingPosition x ~= position x and: [collidingPosition y = position y])
						ifTrue: [
							physics velocity x: 0.
							position x: (position x) rounded].
					(collidingPosition y ~= position y and: [collidingPosition x = position x])
						ifTrue: [
							physics velocity y: 0.
							position y: (position y) rounded]]]