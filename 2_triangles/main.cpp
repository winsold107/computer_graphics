// Include standard headers
#include <stdio.h>
#include <stdlib.h>

// Include GLEW
#include <GL/glew.h>

// Include GLFW
#include <glfw3.h>
GLFWwindow* window;

// Include GLM
#include <glm/glm.hpp>
using namespace glm;

#include <common/shader.hpp>

int main( void )
{
    // initialize GLFW
    if( !glfwInit() )
    {
        fprintf( stderr, "Failed to initialize GLFW\n" );
        getchar();
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 4); // сглаживание
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2); // версии
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);


    // Open a window and create its OpenGL context
    window = glfwCreateWindow( 1024, 768, "2 triangles", NULL, NULL);
    if( window == NULL ){
        fprintf( stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n" );
        getchar();
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    // Initialize GLEW
    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
        getchar();
        glfwTerminate();
        return -1;
    }

    // Ensure we can capture the escape key being pressed below
    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);

    // Dark blue background
    glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

    // Create and compile our GLSL program from the shaders
    GLuint programID_1 = LoadShaders( "shader.vert", "triangle1.frag" );
    GLuint programID_2 = LoadShaders( "shader.vert", "triangle2.frag" );

    // Массив 6 векторов, которые являются вершинами треугольников
    static const GLfloat g_vertex_buffer_data[] = {
            -0.8f, -0.8f, 0.0f,
            -0.8f, 0.8f, 0.0f,
            0.4f,  0.0f, 0.0f,

            0.8f, -0.8f, 0.0f,
            0.8f, 0.8f, 0.0f,
            -0.4f,  0.0f, 0.0f,
    };

    // Это будет идентификатором нашего буфера вершин
    GLuint vertexbuffer;
    // Создадим 1 буфер и поместим в переменную vertexbuffer его идентификатор
    glGenBuffers(1, &vertexbuffer);
    // Сделаем только что созданный буфер текущим
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    // Передадим информацию о вершинах в OpenGL
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);

    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    do{
        // Clear the screen
        glClear( GL_COLOR_BUFFER_BIT );

        // 1rst attribute buffer : vertices
        // Указываем, что первым буфером атрибутов будут вершины
        glEnableVertexAttribArray(0);
        glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
        glVertexAttribPointer(
                0,
                3,                  // size
                GL_FLOAT,           // type
                GL_FALSE,           // normalized?
                0,                  // stride
                (void*)0            // array buffer offset
        );

        // Draw the triangle !
        // Use our shader
        glUseProgram(programID_1);
        glDrawArrays(GL_TRIANGLES, 0, 3); // 3 indices starting at 0 -> 1 triangle 1

        glUseProgram(programID_2);
        glDrawArrays(GL_TRIANGLES, 3, 3); // 3 indices starting at 3 -> 1 triangle 2

        glDisableVertexAttribArray(0);

        // Swap buffers
        glfwSwapBuffers(window);
        glfwPollEvents();

    } // Check if the ESC key was pressed or the window was closed
    while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS &&
           glfwWindowShouldClose(window) == 0 );

    // Cleanup VBO
    glDeleteBuffers(1, &vertexbuffer);
    glDeleteProgram(programID_1);
    glDeleteProgram(programID_2);

    // Close OpenGL window and terminate GLFW
    glfwTerminate();

    return 0;
}

