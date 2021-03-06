as yet unclassified
visitMessageNode: aNode 

	(aNode receiver name = 'aUniverse' and: [aNode selector key = #spawnNewWith:do:]) ifTrue: [
		aNode arguments first key do: [:class | accesses add: (ECSComponentAccess new
			componentClass: class;
			accessType: #(spawn);
			sourceRange: (self sourceRangeFor: aNode))]].
	
	(aNode receiver name = 'aUniverse' and: [aNode selector key = #remove:]) ifTrue: [
		accesses add: (ECSComponentAccess new
			componentClass: nil;
			accessType: #(remove);
			sourceRange: (self sourceRangeFor: aNode))].
	
	(aNode receiver name = 'aUniverse' and: [aNode selector key = #attach:to:] and: [aNode arguments first isKindOf: LeafNode]) ifTrue: [
		accesses add: (ECSComponentAccess new
			componentClass: aNode arguments first key;
			accessType: #(attach);
			sourceRange: (self sourceRangeFor: aNode))].
		
	(aNode receiver name = 'aUniverse' and: [aNode selector key = #queryList:]) ifTrue: [
		(ECSFindQueryVisitor listElements: aNode arguments first) do: [:comp |
			accesses add: (ECSComponentAccess new
				componentClass: comp;
				accessType: #(read write);
				sourceRange: (self sourceRangeFor: aNode))]].
	
	(aNode receiver name = 'aUniverse' and: [#(#query:do: #query:filter:do:) includes: aNode selector key])
		ifTrue: [
			(ECSFindQueryVisitor listElements: aNode arguments first)
				with: aNode arguments second arguments
				do: [:class :binding | | accessVisitor |
					accessVisitor := ECSFindWriteNodeVisitor new
						bindingName: binding key;
						methodClass: method methodClass.
					aNode arguments second accept: accessVisitor.
					aNode arguments size > 2 ifTrue: [aNode arguments third accept: accessVisitor].
					accesses add: (ECSComponentAccess new
						componentClass: class;
						accessType: accessVisitor result;
						sourceRange: (self sourceRangeFor: aNode))]].
	
	super visitMessageNode: aNode