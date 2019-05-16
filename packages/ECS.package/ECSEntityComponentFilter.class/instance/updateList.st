as yet unclassified
updateList

	| items |
	self flag: #todo. "Should we always evaluate the query, or only when it is changed? Could there be queries that depend on external factors like time or the universe?"
	items := self universe queryList: self evaluateQuery.
	
	self flag: #todo. "We need to display more than just 'Entity X"
	"listMorph 
		itemCount: items size
		itemHeight: 32 
		builder: [:index | ECSLabel new contents: 'Entity ', index asString]"
	list removeAllMorphs.
	items doWithIndex: [:components :index |
		list addMorphBack: (ECSCollapsible new
			header: (ECSLabel new contents: 'Entity ', index asString);
			body: (ECSColumn new addAllMorphs: (components collect: [:component | self buildComponentControls: component])))]