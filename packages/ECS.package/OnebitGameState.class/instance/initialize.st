as yet unclassified
initialize

	super initialize.

	state := #unset.
	movingTimeout := 0.
	selectedPlace := #unset.
	score := 0.
	selectedTower := 0.
	coins := 0.
	ticksTillSpawn := 0.
	spawnTimeout := 0.
	turnCount := 0