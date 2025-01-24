shader_type canvas_item;

uniform float blur_amount: hint_range(0.0, 10) = 2;
uniform float mix_amount: hint_range(0.0, 1.0) = 0;
uniform vec4 color_over: source_color;
uniform sampler2D SCREEN_TEXTURE: hint_screen_texture, filter_linear_mipmap;

void fragment() {
	vec4 blur = textureLod(SCREEN_TEXTURE, SCREEN_UV, blur_amount);
	blur.a = 255.0;
	vec4 final = mix(blur, color_over, mix_amount);
	COLOR = final;
}
