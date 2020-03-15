baseline
baseline: spec
	<baseline>
	
	spec for: #common do: [
		spec
			package: 'SVG-Morphic' with: [spec repository: 'http://www.squeaksource.com/SVGMorph'];
			package: 'FFI-Pools';
			package: 'FFI-Kernel';
			package: 'OpenGL-Pools';
			package: 'OpenGL-NameManager';
			package: 'OpenGL-Core' with: [ spec requires: #('FFI-Pools' 'FFI-Kernel' 'OpenGL-Pools' 'OpenGL-NameManager') ];
			package: '3DTransform' with: [ spec requires: #('OpenGL-Core') ];
			
			package: 'ECS-Core' with: [spec requires: #('SVG-Morphic')];
			package: 'ECS-Data';
			package: 'ECS-CodeInstrumentation';
			package: 'ECS-DataFlow';
			package: 'ECS-Experiments';
			package: 'ECS-OpenGL' with: [spec requires: #('3DTransform')];
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
			group: 'full' with: #('withExamples' 'ECS-Experiments' 'ECS-OpenGL')]