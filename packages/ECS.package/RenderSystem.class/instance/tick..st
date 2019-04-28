as yet unclassified
tick: aWorld

	| offset font |
	self setUpViewport.
	
	aWorld query: {Transform. Rendered} do: [:components | | color bounds |
		bounds := components first bounds.
		color := components second color.
		
		ogl
			glBegin: GLQuads;
			glColor3f: color red with: color green with: color blue;
			glVertex2f: bounds left with: bounds top;
			glVertex2f: bounds right with: bounds top;
			glVertex2f: bounds right with: bounds bottom;
			glVertex2f: bounds left with: bounds bottom;
			glEnd].
	
	font := StrikeFont familyName: 'Atlanta' pointSize: 11.
	offset := font height.
	
	aWorld query: {#id} do: [:components |
		ogl glColor3f: 1.0 with: 1.0 with: 1.0.
		ogl drawString: components first asString at: 0 @ offset @ 0 font: font color: Color white.
		offset := offset + font height].
	
	aWorld resource: DeltaTime do: [:deltaTime |
		ogl drawString: deltaTime fps asInteger asString at: 0 @ font height @ 0 font: font color: Color white].
	
	self tearDownViewport