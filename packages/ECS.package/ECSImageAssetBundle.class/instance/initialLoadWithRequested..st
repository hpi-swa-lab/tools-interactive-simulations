as yet unclassified
initialLoadWithRequested: anIdentifierObject

	assets := Dictionary new.
	
	"self path fileEntries do: [:file | assets at: file name put: (ECSAsset new updatePreview: file)]"
	self path fullNamesOfAllFilesInSubtree
		select: [:name | name endsWith: '.png']
		thenDo: [:name | | identifier |
			identifier := (name allButFirst: self path fullName size + 1) copyReplaceAll: '\' with: '/'.
			assets
				at: identifier
				put: (ECSImageAsset new bundle: self; identifier: identifier; updateFile: (FileDirectory on: name))]