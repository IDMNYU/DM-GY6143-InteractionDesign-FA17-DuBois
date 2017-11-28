




varying vec2 texcoord;





void main() {
	
	
	texcoord = vec2(gl_MultiTexCoord0.x, 1.-gl_MultiTexCoord0.y);
	
	
	
	
	gl_Position = ftransform();
}
