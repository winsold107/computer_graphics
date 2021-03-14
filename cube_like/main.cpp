#include <stdio.h>
#include <stdlib.h>
#include <GL/glew.h>
#include <glfw3.h>
GLFWwindow* window;
#include <glm/glm.hpp>
using namespace glm;
#include <glm/gtc/matrix_transform.hpp>
#include <common/shader.hpp>

int main( void )
{
    if( !glfwInit() )
    {
        fprintf( stderr, "Failed to initialize GLFW\n" );
        getchar();
        return -1;
    }

    glfwWindowHint(GLFW_SAMPLES, 4); // сглаживание
    glfwWindowHint(GLFW_CONTEXT_VERSION_MAJOR, 2); // версии
    glfwWindowHint(GLFW_CONTEXT_VERSION_MINOR, 1);

    window = glfwCreateWindow( 1024, 768, "okta", NULL, NULL);
    if( window == NULL ){
        fprintf( stderr, "Failed to open GLFW window. If you have an Intel GPU, they are not 3.3 compatible. Try the 2.1 version of the tutorials.\n" );
        getchar();
        glfwTerminate();
        return -1;
    }
    glfwMakeContextCurrent(window);

    if (glewInit() != GLEW_OK) {
        fprintf(stderr, "Failed to initialize GLEW\n");
        getchar();
        glfwTerminate();
        return -1;
    }

    glfwSetInputMode(window, GLFW_STICKY_KEYS, GL_TRUE);
    glClearColor(0.0f, 0.0f, 0.4f, 0.0f);

    GLuint programID_1 = LoadShaders( "vertice.vert", "fragment.frag" );
    GLuint MatrixID_1 = glGetUniformLocation(programID_1, "MVP");

    glm::mat4 Projection = glm::perspective(glm::radians(45.0f), 4.0f / 3.0f, 0.1f, 100.0f);
    glm::mat4 Model = glm::mat4(1.0f);  // Индивидуально для каждой модели

    static const GLfloat g_vertex_buffer_data[] = {
            0.0f, 1.0f, 0.0f,
            1.0f, 0.0f, 0.0f,
            0.0f,  0.0f, 1.0f,

            0.0f, 1.0f, 0.0f,
            -1.0f, 0.0f, 0.0f,
            0.0f,  0.0f, 1.0f,

            0.0f, -1.0f, 0.0f,
            1.0f, 0.0f, 0.0f,
            0.0f,  0.0f, 1.0f,

            0.0f, -1.0f, 0.0f,
            -1.0f, 0.0f, 0.0f,
            0.0f,  0.0f, 1.0f,

            0.0f, 1.0f, 0.0f,
            1.0f, 0.0f, 0.0f,
            0.0f,  0.0f, -1.0f,

            0.0f, 1.0f, 0.0f,
            -1.0f, 0.0f, 0.0f,
            0.0f,  0.0f, -1.0f,

            0.0f, -1.0f, 0.0f,
            1.0f, 0.0f, 0.0f,
            0.0f,  0.0f, -1.0f,

            0.0f, -1.0f, 0.0f,
            -1.0f, 0.0f, 0.0f,
            0.0f,  0.0f, -1.0f,
    };

    static GLfloat g_color_buffer_data[] = {
            0.1f, 0.2f, 0.3f,
            0.1f, 0.2f, 0.3f,
            0.1f, 0.2f, 0.3f,

            0.07f, 0.16f, 0.25f,
            0.07f, 0.16f, 0.25f,
            0.07f, 0.16f, 0.25f,

            0.5f, 0.6f, 0.7f,
            0.5f, 0.6f, 0.7f,
            0.5f, 0.6f, 0.7f,

            0.3f, 0.4f, 0.5f,
            0.3f, 0.4f, 0.5f,
            0.3f, 0.4f, 0.5f,

            0.1f, 0.2f, 0.3f,
            0.1f, 0.2f, 0.3f,
            0.1f, 0.2f, 0.3f,

            0.2f, 0.3f, 0.4f,
            0.2f, 0.3f, 0.4f,
            0.2f, 0.3f, 0.4f,

            0.5f, 0.6f, 0.7f,
            0.5f, 0.6f, 0.7f,
            0.5f, 0.6f, 0.7f,

            0.3f, 0.4f, 0.5f,
            0.3f, 0.4f, 0.5f,
            0.3f, 0.4f, 0.5f,
    };


    GLuint vertexbuffer;
    glGenBuffers(1, &vertexbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, vertexbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_vertex_buffer_data), g_vertex_buffer_data, GL_STATIC_DRAW);

    GLuint colorbuffer;
    glGenBuffers(1, &colorbuffer);
    glBindBuffer(GL_ARRAY_BUFFER, colorbuffer);
    glBufferData(GL_ARRAY_BUFFER, sizeof(g_color_buffer_data), g_color_buffer_data, GL_STATIC_DRAW);


    glEnable(GL_BLEND);
    glBlendFunc(GL_SRC_ALPHA, GL_ONE_MINUS_SRC_ALPHA);

    float it = 0;
    do{
        glClear(GL_COLOR_BUFFER_BIT | GL_DEPTH_BUFFER_BIT);
        glm::mat4 View = glm::lookAt(
                glm::vec3(3*sin(it), 3*sin(it), 3*cos(it)),
                glm::vec3(0,0,0), // И направлена в начало координат
                glm::vec3(0,1,0)  // "Голова" находится сверху
        );

        glm::mat4 MVP = Projection * View * Model; // Помните, что умножение матрицы производиться в обратном порядке
        it += 0.01f;

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

        glEnableVertexAttribArray(1);
        glBindBuffer(GL_ARRAY_BUFFER, colorbuffer);
        glVertexAttribPointer(
                1,
                3,
                GL_FLOAT,
                GL_FALSE,
                0,
                (void*)0
        );

        glUseProgram(programID_1);
        glUniformMatrix4fv(MatrixID_1, 1, GL_FALSE, &MVP[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 8*3); // 3 indices starting at 0 -> 1 triangle 1

        glDisableVertexAttribArray(0);
        glDisableVertexAttribArray(1);

        glfwSwapBuffers(window);
        glfwPollEvents();

    }
    while( glfwGetKey(window, GLFW_KEY_ESCAPE ) != GLFW_PRESS &&
           glfwWindowShouldClose(window) == 0 );

    glDeleteBuffers(1, &vertexbuffer);
    glDeleteProgram(programID_1);
    glfwTerminate();

    return 0;
}