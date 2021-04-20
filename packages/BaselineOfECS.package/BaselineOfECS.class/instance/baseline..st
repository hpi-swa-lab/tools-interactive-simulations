baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			package: 'SVG-Morphic' with: [spec repository: 'http://www.squeaksource.com/SVGMorph'];
			
			package: 'ECS-Core' with: [spec requires: #('SVG-Morphic')];
			package: 'ECS-Data';
			package: 'ECS-CodeInstrumentation';
			package: 'ECS-DataFlow';
			package: 'ECS-Experiments';
			package: 'ECS-Plumbing';
			package: 'ECS-Test';
			package: 'ECS-Tools';
			package: 'ECS-Watch';
			package: 'ECS-UI';
			package: 'ECS-Game-Demo';
			package: 'ECS-Game-SomeGame';
			package: 'ECS-Game-Jetpack';
			package: 'ECS-Game-Anno';
			package: 'ECS-Game-Onebit';
			package: 'ECS-Game-Platformer'.
		
		spec
			group: 'default' with: #('ECS-Core' 'ECS-Data' 'ECS-CodeInstrumentation' 'ECS-DataFlow' 'ECS-Plumbing' 'ECS-Test' 'ECS-Tools' 'ECS-Watch' 'ECS-UI');
			group: 'withExamples' with: #('default' 'ECS-Game-Platformer' 'ECS-Game-SomeGame' 'ECS-Game-Jetpack' 'ECS-Game-Anno' 'ECS-Game-Onebit' 'ECS-Game-Demo');
			group: 'full' with: #('withExamples' 'ECS-Experiments')]