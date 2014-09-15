	
#version 150

	uniform mat4 projectionMatrix;
	uniform mat4 modelViewMatrix;
	uniform mat4 textureMatrix;
	uniform mat4 modelViewProjectionMatrix;

	in vec4  position;
	in vec2  texcoord;
	in vec4  color;
	in vec3  normal;
	 
	out vec4 colorVarying;
	out vec2 texCoordVarying;
	out vec4 normalVarying;

	uniform sampler2DRect videoTex;

	void main()
	{
		colorVarying = color;
		texCoordVarying = (textureMatrix*vec4(texcoord.x,texcoord.y,0,1)).xy;
		gl_Position = modelViewProjectionMatrix * position;
	}