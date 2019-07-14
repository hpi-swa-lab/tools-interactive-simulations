as yet unclassified
damageTypeFor: projectileEntity in: aUniverse against: anEntityId
	
	(aUniverse getSingle: #'OnebitFireProjectile' of: projectileEntity)
		ifNotNil: [
			aUniverse attach: #'OnebitBurning' to: anEntityId.
			^ { #'fire' . Color r: 1 g: 0.42 b: 0.0 }].
	(aUniverse getSingle: #'OnebitWaterProjectile' of: projectileEntity)
		ifNotNil: [
			aUniverse attach: #'OnebitWet' to: anEntityId.
			^ { #'water' . Color r: 0.0 g: 0.943 b: 1 }].
	(aUniverse getSingle: #'OnebitIceProjectile' of: projectileEntity)
		ifNotNil: [
			aUniverse attach: #'OnebitCold' to: anEntityId.
			^ { #'ice' . Color r: 0.846 g: 0.955 b: 0.962 }].
	(aUniverse getSingle: #'OnebitOilProjectile' of: projectileEntity)
		ifNotNil: [
			aUniverse attach: #'OnebitOily' to: anEntityId.
			^ { #'oil' . Color r: 0.246 g: 0.279 b: 0.281 }].
	^ { #'plain' . Color white }