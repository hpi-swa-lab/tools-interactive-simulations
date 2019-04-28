as yet unclassified
contents

	" oof "
	(target isKindOf: System) ifTrue: [^ #()].
	
	(target isKindOf: Entity)
		ifTrue: [^target components collect: [:component | ObjectExplorerWrapper with: component name: component asString model: component parent: target]].
	
	^ target explorerContents