#include <QApplication>

#include "include/classes/GameOfLife.h"

int main (int argc, char** argv)
{
    QApplication app(argc, argv);

    GameOfLife game;
    game.CreateGame(133, 44);
	game.setWindowState(Qt::WindowMaximized);
	game.show();

    return app.exec();
}
