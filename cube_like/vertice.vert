#version 120
// Input vertex data, different for all executions of this shader.
attribute vec3 vertexPosition_modelspace;
attribute vec3 vertexColor;

// Значения, которые остаются постоянными для всей сетки.
varying vec3 fragmentColor;
uniform mat4 MVP;

void main(){
    // Выходная позиция нашей вершины: MVP * position
    gl_Position = MVP * vec4(vertexPosition_modelspace, 1.0);

    // The color of each vertex will be interpolated
    // to produce the color of each fragment
    fragmentColor = vertexColor;
}