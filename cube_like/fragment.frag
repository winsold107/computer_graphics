#version 120
varying vec3 fragmentColor;

void main()
{

    // Output color = yellow
    gl_FragColor = vec4(fragmentColor, 1);

}