as yet unclassified
initialLoadWithRequested: anIdentifierObject

	form := Form fromFileNamed: self path.
	assets := OrderedDictionary new.
	0 to: (form extent x + 1 // anIdentifierObject extent x) - 1 do: [:x |
		0 to: (form extent y + 1 // anIdentifierObject extent y) - 1 do: [:y | | identifier |
			identifier := x , y extent: anIdentifierObject extent.
			assets at: identifier put: (ECSTileMapAsset new bundle: self; identifier: identifier)]]