as yet unclassified
explorerContents

	^ self components collect: [:c | ObjectExplorerWrapper with: c name: c className model: c]