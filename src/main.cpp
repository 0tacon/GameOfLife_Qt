/*

Copyright 2014 Daniel Forde

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <http://www.gnu.org/licenses/>.

*/

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
