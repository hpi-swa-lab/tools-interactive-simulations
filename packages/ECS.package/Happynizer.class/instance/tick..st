as yet unclassified
tick: aUniverse

	| distance |

	aUniverse query: {#Transform. #id. #Rendered. #Happy} do: [:transform :id :rendered :happy |
		rendered form: (ECSImageAsset of: #'platformer_base' at: 'HUD/hud_p3.png' sized: 25 @ 25).
		aUniverse query: {#Transform. #id. #Rendered. #Happy optional} do: [:anotherTransform :anotherId :anotherRendered :anotherHappy |
			id ~= anotherId ifTrue: [
				distance := transform bounds center squaredDistanceTo: anotherTransform bounds center.
				distance := distance sqrt.
				anotherHappy isNil and: [distance < 15] ifTrue: [
					aUniverse attach: #Happy to: anotherId persisted: true. 
					anotherRendered form: (ECSImageAsset of: #'platformer_base' at: 'HUD/hud_p3.png' sized: 25 @ 25)]]]]