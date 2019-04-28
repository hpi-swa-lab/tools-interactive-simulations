as yet unclassified
buildWith: builder

	| treeSpec windowSpec oglSpec |
	windowSpec := builder pluggableWindowSpec new
		model: self;
		children: OrderedCollection new;
		label: #label;
		extent: self initialExtent;
		yourself.
	
	treeSpec := builder pluggableTreeSpec new
		model: self;
		nodeClass: ObjectExplorerWrapper;
		getSelected: #currentSelection;
		setSelected: #currentSelection:;
		setSelectedParent: #currentParent:;
		keyPress: #explorerKey:from:event:;
		autoDeselect: false;
		roots: #getList;
		columns: {
			[:listMorph | (listMorph filteredItems collect: [:item | item preferredWidthOfColumn: 1]) max].
			nil "take all the space"};
		frame: (0.7 @ 0 corner: 1 @ 1);
		yourself.
	
	oglSpec := OpenGLSpec new
		model: self;
		frame: (0 @ 0 corner: 0.7 @ 1).
	
	windowSpec children add: treeSpec; add: oglSpec.
	^ builder build: windowSpec