shader
createDefaultShader

	| fragmentShader vertexShader |
	vertexShader := self vertexShader: '#version 300 es
	layout (location = 0) in vec2 position;
	
	void main() {
	    gl_Position = vec4(position.x, position.y, 0.0, 1.0);
	}'.
	
	fragmentShader := self fragmentShader: '#version 300 es
	precision mediump float;
	
	out vec4 color;
	void main() {
		color = vec4(1.0, 0.0, 1.0, 1.0);
	}'.
	
	^ self createProgramVertex: vertexShader fragment: fragmentShader.