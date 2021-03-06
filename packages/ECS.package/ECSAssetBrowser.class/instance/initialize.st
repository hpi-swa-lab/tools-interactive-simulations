initialization
initialize

	| spacing |
	super initialize.
	
	closeOnPick := false.
	
	spacing := (TextStyle defaultFont height / 2) rounded.
	self changeListDirection: #topToBottom; changeTableLayout; layoutInset: spacing; cellGap: spacing; color: Color white.
	
	assetList := ECSRow new
		wrapDirection: #leftToRight;
		cellGap: (TextStyle defaultFont height / 4) rounded;
		color: Color white.
	
	self addMorphBack: (ECSRow new
		cellGap: spacing * 2;
		wrapDirection: #leftToRight;
		addMorphBack: (bundleButton := ECSButton new
			icon: ECSIcon iconChevron_down;
			label: '';
			when: #clicked send: #chooseAssetBundle to: self);
		addMorphBack: (ECSButton new
			icon: ECSIcon iconPlus;
			when: #clicked send: #addAssetBundle to: self);
		addMorphBack: (parameters := ECSRow new cellGap: 16)).
	self addMorphBack: (ECSScrollPane new setMorph: assetList).
	
	currentBundle := self class assetCache ifNotEmpty: [self class assetCache anyOne] ifEmpty: [].
	self updateCurrentAssetList.
	self extent: 500 @ 500