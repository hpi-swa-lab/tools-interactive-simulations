as yet unclassified
defaultAction

	| directory choice |
	choice := UIManager default chooseFrom: #('Locate Bundle' 'Use Placeholder Bundle').
	
	^ choice = 2
		ifTrue: [ECSAssetBrowser registerMissingAssetBundle: self bundleName]
		ifFalse: [
			directory := (self chooseFileOrFolder: self assetClass wantsFileChooser) ifNil: [^ self error: 'Missing asset bundle'].
			ECSAssetBrowser registerAssetBundle: self bundleName forDirectory: directory requestedIdentifier: self identifier assetClass: self assetClass]