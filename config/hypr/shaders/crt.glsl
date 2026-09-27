#version 300 es
precision highp float;

in vec2 v_texcoord;
out vec4 fragColor;
uniform sampler2D tex;

void main() {
    vec2 uv = v_texcoord;

    // CRT Screen Curvature
    vec2 dc = abs(0.5 - uv);
    dc *= dc;
    uv.x -= 0.5; uv.x *= 1.0 + (dc.y * 0.08); uv.x += 0.5;
    uv.y -= 0.5; uv.y *= 1.0 + (dc.x * 0.08); uv.y += 0.5;

    // Render black borders outside display area
    if (uv.x < 0.0 || uv.x > 1.0 || uv.y < 0.0 || uv.y > 1.0) {
        fragColor = vec4(0.0, 0.0, 0.0, 1.0);
        return;
    }

    // RGB Split (Chromatic Aberration)
    float split = 0.002;
    float r = texture(tex, vec2(uv.x + split, uv.y)).r;
    float g = texture(tex, uv).g;
    float b = texture(tex, vec2(uv.x - split, uv.y)).b;
    vec3 color = vec3(r, g, b);

    // Scanlines
    float scanline = sin(uv.y * 600.0) * 0.08;
    color -= scanline;

    fragColor = vec4(color, 1.0);
}
