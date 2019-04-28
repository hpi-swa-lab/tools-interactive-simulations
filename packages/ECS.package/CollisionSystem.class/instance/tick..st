as yet unclassified
tick: aWorld

	aWorld resource: ScreenSize do: [:screenSize | | colliders |
		colliders := aWorld queryList: {Transform. Rendered. Physics. Colliding. #id}.
		colliders do: [:components | | position size rect |
			position := components first position.
			size := components second size.
			rect := position extent: size.
			
			rect bottom >= screenSize size y ifTrue: [
				components first position: position x @ (screenSize size y - size y).
				components third velocity: components third velocity x @ 0]].
		
		1 to: colliders size do: [:i |
			i + 1 to: colliders size do: [:j | | firstRect secondRect |

				(((colliders at: i) fourth ignoreList includes: (colliders at: j) fifth) or: [(colliders at: j) fourth ignoreList includes: (colliders at: i) fifth]) ifFalse: [
					firstRect := (colliders at: i) first position extent: (colliders at: i) second size.
					secondRect := (colliders at: j) first position extent: (colliders at: j) second size.
					(firstRect intersects: secondRect) ifTrue: [ | side |
						side := secondRect sideNearestTo: firstRect center.
						side = #top ifTrue: [(colliders at:  i) first position: firstRect left @ (secondRect top - firstRect height)].
						side = #left ifTrue: [(colliders at:  i) first position: (secondRect left - firstRect width) @ firstRect top].
						side = #bottom ifTrue: [(colliders at:  i) first position: firstRect left @ secondRect bottom].
						side = #right ifTrue: [(colliders at:  i) first position: secondRect right @ firstRect top]]]]]]