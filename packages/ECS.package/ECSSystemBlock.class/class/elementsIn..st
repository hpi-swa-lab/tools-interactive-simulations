as yet unclassified
elementsIn: aUniverse

	^ (self gamePipelineIn: aUniverse) systems select: [:system | system class ~= ECSBlocksTimeSystem]