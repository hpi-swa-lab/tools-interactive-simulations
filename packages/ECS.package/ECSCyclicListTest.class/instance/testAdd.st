as yet unclassified
testAdd

	| list |
	list := CyclicList new size: 4.
	self assert: (list contents hasEqualElements: {0. 0. 0. 0}).
	
	list add: 5.
	self assert: (list contents hasEqualElements: {0. 0. 0. 5}).
	
	list add: 8.
	self assert: (list contents hasEqualElements: {0. 0. 5. 8}).
	
	list add: 3.
	self assert: (list contents hasEqualElements: {0. 5. 8. 3}).
	
	list add: 9.
	self assert: (list contents hasEqualElements: {5. 8. 3. 9}).
	
	list add: 12.
	self assert: (list contents hasEqualElements: {8. 3. 9. 12}).