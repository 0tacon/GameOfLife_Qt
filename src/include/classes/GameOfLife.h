/*

Copyright 2014 Daniel Forde

This file is part of GameOfLife.

GameOfLife is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

GameOfLife is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with GameOfLife.  If not, see <http://www.gnu.org/licenses/>.

*/

#include <cstdint>
#include <thread>
#include <chrono>
#include <vector>
#include <utility>
#include <algorithm>
#include <ctime>
#include <QtGui>
#include <QTextEdit>
#include <QTimer>
#include <QToolBar>
#include <QAction>

#ifndef _GAMEOFLIFE_
#define _GAMEOFLIFE_

class GameOfLife : public QMainWindow
{
    Q_OBJECT

public:
    GameOfLife();

    void CreateGame(uint8_t side_length_x, uint8_t side_length_y);
    void CreateGame(uint8_t side_length_x, uint8_t side_length_y, std::vector<std::pair<uint8_t, uint8_t> > initial_state);

    void PrintGame();

    std::string FormatGameString();

    bool IterateCell(bool cell, uint8_t row, uint8_t col);

    void StopTimer();

	void UpdateGameDisplay();

	void DisplayGameStats();

private slots:
    void Iterate();
    void StartTimer();

private:
    QTextEdit *GameDisplay;
    QTimer *GameTimer;
	QToolBar *ToolBar;
	QAction *Begin;

    std::vector<std::vector<bool> > Board, PrevGen;
    uint8_t dim_x, dim_y;
    bool evolution;
    uint64_t born_cells, dead_cells, generations, first_gen, last_gen;
};

#endif
