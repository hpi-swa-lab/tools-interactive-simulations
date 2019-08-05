as yet unclassified
damageTypeFor: projectileEntity in: aUniverse
	
	(aUniverse getSingle: #'OnebitFireProjectile' of: projectileEntity) ifNotNil: [^ #'fire']