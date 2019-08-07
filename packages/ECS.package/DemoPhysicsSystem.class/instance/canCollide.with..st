as yet unclassified
canCollide: components with: otherComponents

	^ (components third group isNil or: [components third group ~= otherComponents third group]) and:
		[(components third ignoreList includes: otherComponents fourth) not and:
		[(otherComponents third ignoreList includes: components fourth) not]]