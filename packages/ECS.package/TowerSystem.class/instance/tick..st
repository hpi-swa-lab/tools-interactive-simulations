as yet unclassified
tick: aUniverse

	aUniverse query: #(OnebitTower OnebitPosition) do: [:tower :towerPosition | | closestEnemy closestSquaredDistance |
		closestEnemy := nil.
		closestSquaredDistance := tower reach ** 2.
		aUniverse query: #(OnebitEnemyMinion OnebitPosition id) do: [:minion :minionPosition :minionEntity | | squaredDistance |
			squaredDistance := towerPosition squaredDistanceTo: minionPosition.
			squaredDistance < closestSquaredDistance ifTrue: [
				closestEnemy := minionEntity.
				closestSquaredDistance := squaredDistance]].
		
		closestEnemy ifNotNil: [ | projectile |
			projectile := (aUniverse instanceTemplate: #TowerProjectile).
			(aUniverse getSingle: #OnebitProjectile of: projectile)
				sourcePosition: towerPosition vector;
				targetPosition: (aUniverse getSingle: #OnebitPosition of: closestEnemy) vector copy]]