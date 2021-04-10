#version 330 core

in vec2 UV;

out vec3 color;

uniform sampler2D TextureSampler;

void main(){
    color = texture(TextureSampler, UV).rgb;
}