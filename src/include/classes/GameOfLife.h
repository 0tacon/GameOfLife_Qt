#include <cstdint>
#include <cstdio>
#include <cstdlib>
#include <iostream>
#include <thread>
#include <chrono>
#include <vector>
#include <utility>
#include <algorithm>
#include <ctime>
#include <QApplication>
#include <QWidget>
#include <QPushButton>
#include <QTextEdit>
#include <QTimer>

#ifndef _GAMEOFLIFE_
#define _GAMEOFLIFE_

class GameOfLife : public QWidget
{
    Q_OBJECT

public:
    GameOfLife(QWidget *parent = 0);

    void CreateGame(uint8_t side_length_x, uint8_t side_length_y);
    void CreateGame(uint8_t side_length_x, uint8_t side_length_y, std::vector<std::pair<uint8_t, uint8_t> > initial_state);

    void PrintGame();

    std::string FormatGameString();

    bool IterateCell(bool cell, uint8_t row, uint8_t col);

    void StopTimer();

private slots:
    void Iterate();
    void StartTimer();

private:
    QTextEdit *GameDisplay;
    QTimer *GameTimer;
    QPushButton *Begin;

    std::vector<std::vector<bool> > Board, PrevGen;
    uint8_t dim_x, dim_y;
    bool evolution;
    uint64_t born_cells, dead_cells, generations, first_gen, last_gen;
};

#endif
