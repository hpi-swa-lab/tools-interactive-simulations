stepping and presenter
step

	| elementIds |	

	self type = ECSEntityBlock
		ifTrue: [
			elementIds := self type elementsIn: self universe.
			elementIds size < self elements size ifTrue: [
				self elements valuesDo: [:element | 
					self universe removeActionsWithReceiver: element.
					element deleteBlock].
				self elements: Dictionary new].
			self initializeElements]