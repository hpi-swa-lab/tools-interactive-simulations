as yet unclassified
defaultAction

	| directory choice |
	choice := UIManager default chooseFrom: #('Locate Bundle' 'Use Placeholder Bundle').
	
	^ choice = 2
		ifTrue: [ECSAssetBrowser registerMissingAssetBundle: self bundleName]
		ifFalse: [
			directory := (UIManager default chooseDirectory: 'Missing bundle "', self bundleName asString, '". Please find the folder for this bundle.') ifNil: [^ self error: 'Missing asset bundle'].
			ECSAssetBrowser registerAssetBundle: self bundleName forDirectory: directory]