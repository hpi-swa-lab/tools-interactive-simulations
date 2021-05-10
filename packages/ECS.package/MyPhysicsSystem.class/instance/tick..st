as yet unclassified
tick: aUniverse

	aUniverse query: #(UniverseView) do: [:view |
		aUniverse query: #(Transform MyPhysics MyPlayer) do: [:transform :physics :player |
			physics velocity: physics velocity + (0 @ 1).
			transform bounds += physics velocity.
			
			transform bounds bottom > view size y ifTrue: [
				transform bounds bottom: view size y.
				physics velocity:  0 @ 0].
			(transform bounds top < (view size y - 200)) & (physics velocity y > 0) ifTrue: [
				aUniverse query: #(MyPlatform id) do: [:platform :entityId |
					aUniverse remove: entityId]]]]