as yet unclassified
tick: aUniverse
	
	aUniverse
		query: #( #'OnebitTower' #'OnebitPosition' #'id' )
		do: [ :tower :towerPosition :towerEntity |
			| closestEnemy closestSquaredDistance |
			
			closestEnemy := nil.
			closestSquaredDistance := tower reach ** 2.
			aUniverse
				query: #( #'OnebitEnemyMinion' #'OnebitPosition' #'id' )
				do: [ :minion :minionPosition :minionEntity |
					| squaredDistance |
					
					squaredDistance := towerPosition squaredDistanceTo: minionPosition.
					squaredDistance < closestSquaredDistance
						ifTrue: [
							closestEnemy := minionEntity.
							closestSquaredDistance := squaredDistance]].
			closestEnemy
				ifNotNil: [
					| projectile |
					
					projectile := aUniverse spawnTemplate: #'TowerProjectile'.
					(aUniverse getSingle: #'OnebitProjectile' of: projectile)
						source: towerEntity;
						sourcePosition: towerPosition vector;
						targetPosition: ((aUniverse getSingle: #'OnebitPosition' of: closestEnemy) vector) copy]]