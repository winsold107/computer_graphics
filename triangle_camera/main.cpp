#include <stdio.h>
#include <stdlib.h>
#include <GL/glew.h>
#include <glfw3.h>
GLFWwindow* window;
#include <glm/glm.hpp>
#include <cmath>
using namespace glm;
#include <glm/gtc/matrix_transform.hpp>
#include <glm/gtx/transform.hpp>
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
    window = glfwCreateWindow( 1024, 768, "camera for triangles", NULL, NULL);
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

    GLuint MatrixID_1 = glGetUniformLocation(programID_1, "MVP");
    GLuint MatrixID_2 = glGetUniformLocation(programID_2, "MVP");

    // Проекционная матрица : 45&deg; поле обзора, 4:3 соотношение сторон, диапазон : 0.1 юнит <-> 100 юнитов
    glm::mat4 Projection = glm::perspective(glm::radians(45.0f), 4.0f / 3.0f, 0.1f, 100.0f);

    // Матрица модели : единичная матрица (Модель находится в начале координат)
    glm::mat4 Model = glm::mat4(1.0f);  // Индивидуально для каждой модели

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

    float it = 0;
    do{
        // Clear the screen
        glClear( GL_COLOR_BUFFER_BIT );

        // Или, для ортокамеры
        glm::mat4 View = glm::lookAt(
                glm::vec3(cos(it*10), sin(it*10), it), // Камера движение
                glm::vec3(0,0,0), // И направлена в начало координат
                glm::vec3(0,1,0)  // "Голова" находится сверху
        );

        // Итоговая матрица ModelViewProjection, которая является результатом перемножения наших трех матриц
        glm::mat4 MVP = Projection * View * Model; // Помните, что умножение матрицы производиться в обратном порядке
        it += 0.01f;

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
        glUniformMatrix4fv(MatrixID_1, 1, GL_FALSE, &MVP[0][0]);
        glDrawArrays(GL_TRIANGLES, 0, 3); // 3 indices starting at 0 -> 1 triangle 1

        glUseProgram(programID_2);
        // Передать наши трансформации в текущий шейдер
        // Это делается в основном цикле, поскольку каждая модель будет иметь другую MVP-матрицу (как минимум часть M)
        glUniformMatrix4fv(MatrixID_2, 1, GL_FALSE, &MVP[0][0]);
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