//
// Simple passthrough fragment shader
//
varying vec2 v_vTexcoord;
varying vec4 v_vColour;

uniform float u_param;

void main()
{
	vec4 base_col =  v_vColour * texture2D( gm_BaseTexture, v_vTexcoord );
	vec4 cmain = base_col;
	cmain.rgb = 1.0 - base_col.rgb;
	
    gl_FragColor = cmain;
}
