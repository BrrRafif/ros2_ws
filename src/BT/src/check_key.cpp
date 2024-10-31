#include <iostream>
#include <termios.h>
#include <fcntl.h>
#include <unistd.h>
#include <chrono>
#include <thread>

bool isKeyPressed(int key) {
    struct termios oldt, newt;
    int oldf;
    char ch;
    bool keyPressed = false;

    tcgetattr(STDIN_FILENO, &oldt);
    newt = oldt;
    newt.c_lflag &= ~(ICANON | ECHO);
    tcsetattr(STDIN_FILENO, TCSANOW, &newt);
    oldf = fcntl(STDIN_FILENO, F_GETFL, 0);
    fcntl(STDIN_FILENO, F_SETFL, oldf | O_NONBLOCK);

    ch = getchar();

    if (ch == key) {
        keyPressed = true;
    }

    tcsetattr(STDIN_FILENO, TCSANOW, &oldt);
    fcntl(STDIN_FILENO, F_SETFL, oldf);

    return keyPressed;
}

class CheckKeyPressNode {
public:
    int key;
    CheckKeyPressNode(int k) : key(k) {}

    bool execute() {
        return isKeyPressed(key);
    }
};

class OutputNode {
public:
    void execute(bool success) {
        if (success) {
            std::cout << "\nSuccess" << std::endl;
        } else {
            std::cout << "\nFailure" << std::endl;
        }
    }
};

int main() {
    int keyToCheck = 'b';
    CheckKeyPressNode checkNode(keyToCheck);
    OutputNode outputNode;

    while (true) {
        bool result = checkNode.execute();
        outputNode.execute(result);

        if (result) {
            break;
        }

        std::this_thread::sleep_for(std::chrono::milliseconds(100));
    }

    return 0;
}
