#include <QApplication>
#include <QWidget>

#include "include/classes/GameOfLife.h"

int main (int argc, char** argv)
{
    QApplication app(argc, argv);

    GameOfLife game;
    game.CreateGame(130, 45);
    game.show();

    return app.exec();
}
