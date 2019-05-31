as yet unclassified
initialLoadWithRequested: anIdentifierObject

	assets := Dictionary new.
	
	"self path fileEntries do: [:file | assets at: file name put: (ECSAsset new updatePreview: file)]"
	self path fullNamesOfAllFilesInSubtree
		select: [:name | name endsWith: '.png']
		thenDo: [:name |
			assets
				at: (name allButFirst: self path fullName size + 1)
				put: (ECSImageAsset new updateFile: (FileDirectory on: name))]