#include "GameOfLife.h"

GameOfLife::GameOfLife(QWidget *parent) : QWidget(parent)
{
    GameDisplay = new QTextEdit();
    GameDisplay->show();

    Begin = new QPushButton("Begin", this);
    connect(Begin, SIGNAL(clicked()), this, SLOT(StartTimer()));

    GameTimer = new QTimer(this);
    connect(GameTimer, SIGNAL(timeout()), this, SLOT(Iterate()));
}

void GameOfLife::CreateGame(uint8_t side_length_x, uint8_t side_length_y)
{
    dim_x = side_length_x;
    dim_y = side_length_y;
    born_cells = 0;
    dead_cells = 0;
    generations = 0;

    evolution = true;

    uint16_t random_num;

    std::srand(std::time(0));

    std::vector<bool> vect(dim_x);

    for (uint8_t i = 0; i < dim_y; i++)
    {
        for (uint8_t j = 0; j < dim_x; j++)
        {
            random_num = std::rand();

            if (random_num%2 == 0)
            {
                vect[j] = true;
                born_cells++;
            }
            else
                vect[j] = false;
        }

        Board.push_back(vect);
    }

    PrevGen = Board;

    first_gen = born_cells;

    std::string str = FormatGameString();
    GameDisplay->setHtml(str.c_str());
}

void GameOfLife::CreateGame(uint8_t side_length_x, uint8_t side_length_y, std::vector<std::pair<uint8_t, uint8_t> > initial_state)
{
    dim_x = side_length_x;
    dim_y = side_length_y;
    born_cells = 0;
    dead_cells = 0;
    generations = 0;

    evolution = true;

    std::vector<bool> vect(dim_x);

    std::fill(vect.begin(), vect.end(), false);

    for (uint8_t i = 0; i < dim_y; i++)
        Board.push_back(vect);

    for (std::vector<std::pair<uint8_t, uint8_t> >::iterator val = initial_state.begin(); val != initial_state.end(); val++)
        if (val->first < dim_y && val->second < dim_x)
        {
            Board[val->first][val->second] = true;
            born_cells++;
        }

    PrevGen = Board;

    first_gen = born_cells;

    std::string str = FormatGameString();
    GameDisplay->setHtml(str.c_str());
}

void GameOfLife::Iterate()
{
    std::vector<std::vector<bool> > NextGen = Board;

    for (uint8_t a = 0; a < dim_y; a++)
    {
        for (uint8_t b = 0; b < dim_x; b++)
        {
            NextGen[a][b] = IterateCell(Board[a][b], a, b);
        }
    }

    if (PrevGen != NextGen)
        evolution = true;
    else
        evolution = false;

    PrevGen = Board;
    Board = NextGen;

    generations++;

    std::string str = FormatGameString();
    GameDisplay->setHtml(str.c_str());

    if (!evolution)
        StopTimer();
}

bool GameOfLife::IterateCell (bool cell, uint8_t row, uint8_t col)
{
    uint8_t neighbours = 0;

    std::vector<uint8_t> cols, rows;

    if (col > 0 && col < dim_x -1)
    {
        cols.push_back(col - 1);
        cols.push_back(col);
        cols.push_back(col + 1);
    }
    else if (col == 0)
    {
        cols.push_back(col);
        cols.push_back(col + 1);
        cols.push_back(dim_x - 1);
    }
    else if (col == dim_x - 1)
    {
        cols.push_back(col);
        cols.push_back(col - 1);
        cols.push_back(0);
    }

    if (row > 0 && row < dim_y -1)
    {
        rows.push_back(row - 1);
        rows.push_back(row);
        rows.push_back(row + 1);
    }
    else if (row == 0)
    {
        rows.push_back(row);
        rows.push_back(row + 1);
        rows.push_back(dim_y - 1);
    }
    else if (row == dim_y - 1)
    {
        rows.push_back(row);
        rows.push_back(row - 1);
        rows.push_back(0);
    }

    for (std::vector<uint8_t>::iterator a = rows.begin(); a != rows.end(); a++)
        for (std::vector<uint8_t>::iterator b = cols.begin(); b != cols.end(); b++)
            if ((*a != row || *b != col) && Board[*a][*b])
                neighbours++;

    if (neighbours == 3 || (cell && neighbours == 2))
    {
        if (!cell)
            born_cells++;

        return true;
    }
    else if (cell)
        dead_cells++;

    return false;
}

std::string GameOfLife::FormatGameString ()
{
    std::string str = "";

    for (std::vector<std::vector<bool> >::iterator a = Board.begin(); a != Board.end(); a++)
    {
        for (std::vector<bool>::iterator b = a->begin(); b != a->end(); b++)
        {
            if (*b)
                str += "#";
            else
                str += "<font color=\"white\">#</font>";
        }

        str += "<br>";
    }

    return str;
}

void GameOfLife::StartTimer()
{
    if (!GameTimer->isActive()) GameTimer->start(100);
}

void GameOfLife::StopTimer()
{
    if (GameTimer->isActive()) GameTimer->stop();

    last_gen = born_cells - dead_cells;

    std::string str =   "The game of life has reached a stable equilibrium. " +
                        std::to_string(last_gen) +
                        " cells remain alive, the first generation contained " +
                        std::to_string(first_gen) +
                        " live cells, " +
                        std::to_string(generations) +
                        " generations came and went, " +
                        std::to_string(born_cells) +
                        " cells were born and " +
                        std::to_string(dead_cells) +
                        " cells died.<br>";

    GameDisplay->append(str.c_str());
}
