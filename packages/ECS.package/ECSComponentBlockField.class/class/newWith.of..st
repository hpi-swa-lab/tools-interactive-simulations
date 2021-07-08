as yet unclassified
newWith: aField of: aComponent

	| fieldName fieldValue fieldType |

	fieldName := SBTextBubble new
		contents: (aField);
		width: 100;
		hResizing: #spaceFill;
		canDrag: false.
	fieldType := SBComboBox new
		values: {#Object. #ECSVector2. #Number. #Boolean};
		object: (aComponent >> aField pragmaAt: #ecsType:) arguments first;
		canDrag: false.
	fieldValue := (Smalltalk at: fieldType object) editorType new
		hResizing: #spaceFill;
		hide;
		disableLayout: true.

	^ self new
		fieldName: fieldName;
		fieldValue: fieldValue;
		fieldType: fieldType;
		addMorphBack: fieldName;
		addMorphBack: fieldValue;
		addMorphBack: fieldType