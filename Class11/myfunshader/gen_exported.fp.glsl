#define hypot(x, y) sqrt(x*x+y*y)
#define xor(x, y)	((!(x&&y))&&(x||y))
#define sinh(x)		(0.5*(exp(x) - exp(-x)))
#define cosh(x)		(0.5*(exp(x) + exp(-x)))
#define tanh(x)		((sinh(x))/(cosh(x)))
#define asinh(x)	(log(x) + sqrt(x*x+1.))
#define acosh(x)	(log(x) + sqrt(x*x-1.))
#define atanh(x)	(0.5*log((1.+x)/(1.-x)))

vec2 jit_wrap1(vec2 v) {
	return mod(v, 1.);
}

vec2 jit_clamp1(vec2 v) {
	return clamp(v, 0., 1.);
}

vec2 jit_mirror1(vec2 v) {
	return 1.-abs((mod(v, 2.)-1.));
}


uniform float x;
uniform float eclipse;
uniform float y;
uniform float dry;





varying vec2 texcoord;







vec4 sample_wrap_unit0(samplerJit0 tex, vec2 tc);
vec4 sample_wrap_unit0(samplerJit0 tex, vec2 tc) {
	return textureJit0(tex, jit_wrap1(tc*flip1)*texdim1);
}



void main() {
	
	vec2 norm = texcoord;
	
	
	
	
	
	
	vec4 mul_68 = (in1 * dry);
	float swiz_69 = (norm.r);
	float mul_72 = (swiz_69 * x);
	float floor_71 = ((floor(mul_72)));
	float div_70 = (floor_71 / x);
	float swiz_62 = (norm.g);
	float mul_65 = (swiz_62 * y);
	vec2 vec_59 = (vec2(mul_72, mul_65));
	vec4 sample_60 = ((sample_wrap_unit0(tin1, vec_59)));
	float floor_64 = ((floor(mul_65)));
	float div_63 = (floor_64 / y);
	vec2 vec_66 = (vec2(div_70, div_63));
	vec4 sample_74 = ((sample_wrap_unit0(tin1, vec_66)));
	vec4 add_76 = (sample_60 + sample_74);
	vec4 mul_67 = (add_76 * eclipse);
	vec4 add_75 = (mul_68 + mul_67);
	gl_FragData[0] = add_75;
}
