accessing
currentUniverseWidget

	^ currentUniverseWidget ifNil: [currentUniverseWidget := ECSUniverseButton exploreButtonFor: self]