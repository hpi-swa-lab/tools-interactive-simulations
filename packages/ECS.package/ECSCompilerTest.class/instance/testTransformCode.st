as yet unclassified
testTransformCode

	| compiler |
	compiler := ECSCompiler new.
	
	self assert: 'abc 123'
		equals: (compiler transformCode: 'abc 123' class: Object selector: #blah).
	
	self assert: 'abc (ECSLogger at: #''Object>>blah>>1'' put: (123)) def'
		equals: (compiler transformCode: 'abc "<"123">" def' class: Object selector: #blah).
	
	self assert: 'abc (ECSLogger at: #''Object>>blah>>1'' put: (123)) def (ECSLogger at: #''Object>>blah>>2'' put: (456))'
		equals: (compiler transformCode: 'abc "<"123">" def "<"456">"' class: Object selector: #blah)