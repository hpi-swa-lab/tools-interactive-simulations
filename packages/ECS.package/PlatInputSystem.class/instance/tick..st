as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'PlatPhysics' #'PlatPlayer' )
		do: [ :physics :player |
			physics velocity: 0 , 0.
			aUniverse
				query: #( #'KeyEvent' )
				do: [ :event |
					event key = $D ifTrue: [physics velocity += (0.1 , 0)].
					event key = $A ifTrue: [physics velocity += (-0.1 , 0)]]]