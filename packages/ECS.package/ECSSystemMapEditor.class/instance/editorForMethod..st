as yet unclassified
editorForMethod: aMethod

	| editor |
	editor := ECSSystemMethodEditor new
		editingMethod: aMethod boundsInfo: (system class metaInfo at: #mapEditor ifAbsentPut: [Dictionary new]).
	"editor position: editor position + self position."
	editor editor onKeyStrokeSend: #checkCloseWindow: to: self.
	^ editor