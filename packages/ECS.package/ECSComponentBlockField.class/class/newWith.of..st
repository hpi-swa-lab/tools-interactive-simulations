as yet unclassified
newWith: aField of: aClass

	| fieldName fieldValue fieldType |

	fieldName := SBTextBubble new
		contents: aField;
		width: 100;
		hResizing: #spaceFill;
		canDrag: false.
	fieldType := SBComboBox new
		values: {#Object. #ECSVector2. #Number. #Boolean};
		object: ((aClass fields includes: aField)
			ifTrue: [(aClass >> aField pragmaAt: #ecsType:) arguments first]
			ifFalse: [self halt. #Number]);
		canDrag: false.
	fieldValue := (Smalltalk at: fieldType object) editorType new
		hResizing: #spaceFill;
		hide;
		disableLayout: true.

	fieldType object = #Number ifTrue: [fieldValue contents: '0.0'].

	^ self new
		fieldName: fieldName;
		fieldValue: fieldValue;
		fieldType: fieldType;
		addMorphBack: fieldName;
		addMorphBack: fieldValue;
		addMorphBack: fieldType