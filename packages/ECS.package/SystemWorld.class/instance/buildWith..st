toolbuilder
buildWith: builder

	| treeSpec windowSpec oglSpec buttonPanel buttonHeight |
	windowSpec := builder pluggableWindowSpec new
		model: self;
		children: OrderedCollection new;
		label: #label;
		extent: self initialExtent;
		yourself.
	
	buttonHeight := Preferences standardSystemFont height * 2.
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
		frame: (LayoutFrame fractions: (0.7 @ 0 corner: 1 @ 1) offsets: (0 @ 0 extent: 0 @ buttonHeight negated));
		yourself.
	
	buttonPanel := builder pluggablePanelSpec new
		model: self;
		layout: #horizontal;
		children: {
			builder pluggableButtonSpec new
				model: self;
				label: #pauseButtonLabel;
				state: #isPaused;
				changeLabelWhen: #isPaused;
				action: #togglePaused
		};
		frame: (LayoutFrame fractions: (0.7 @ 1 corner: 1 @ 1) offsets: (0 @ buttonHeight negated extent: 0 @ buttonHeight))
		yourself.
	
	oglSpec := OpenGLSpec new
		model: self;
		frame: (0 @ 0 corner: 0.7 @ 1).
	
	windowSpec children add: treeSpec; add: oglSpec; add: buttonPanel.
	^ builder build: windowSpec