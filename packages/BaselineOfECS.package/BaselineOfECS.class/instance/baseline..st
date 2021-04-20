baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			package: 'SVG-Morphic' with: [spec repository: 'http://www.squeaksource.com/SVGMorph'];
			package: 'ECS' with: [spec requires: #('SVG-Morphic')].

		spec
			group: 'default' with: #('ECS')]
