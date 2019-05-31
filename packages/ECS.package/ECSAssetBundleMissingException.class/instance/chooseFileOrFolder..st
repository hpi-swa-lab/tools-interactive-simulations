as yet unclassified
chooseFileOrFolder: aBoolean

	^ aBoolean
		ifTrue: [UIManager default chooseFileMatching: '*' label: 'Missing bundle "', self bundleName asString, '". Please find the file for this bundle.']
		ifFalse: [UIManager default chooseDirectory: 'Missing bundle "', self bundleName asString, '". Please find the folder for this bundle.']