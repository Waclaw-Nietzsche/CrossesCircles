package model;

public class CrossesCircles
{
    public char gametable[][] = new char[3][3];

    // Конструктор игрового поля
    public CrossesCircles()
    {
        for (int x = 0; x < 3; x++)
        {
            for (int y = 0; y < 3; y++)
            {
                gametable[x][y] = ' ';
            }
        }
    }

    // Очистка игрового поля
    public void clear()
    {
        for (int x = 0; x < 3; x++)
        {
            for (int y = 0; y < 3; y++)
            {
                gametable[x][y] = ' ';
            }
        }
    }

    // Добавление крестика или нолика игроком
    public int add(int x, int y, int z)
    {
        if (x < 3 && y < 3)
        {
            // Проверяем, что клетка не заполнена
            if(gametable[x][y] == ' ')
            {
                // В зависимости от параметра z выбираем, крестик это или нолик
                if (z % 2 == 0)
                {
                    gametable[x][y] = '0';
                    return 1;
                }
                else
                {
                    gametable[x][y] = 'X';
                    return 1;
                }
            }
            else
            {
                return 0;
            }
        }
        else
        {
            return 0;
        }
    }

    public int[] checkGameTable()
    {
        int x, y;
        int count = 0, d = 1;
        int line[] = {1 , 2};
        char symbol;

        for(x = 0; x < 3; x++)
        {
            count = 0;
            for(y = 1; y < 3; y++)
            {
                if(gametable[x][0] == gametable[x][y])
                    count++;
            }
            if(count == 2)
            {
                symbol = gametable[x][0];
                if(symbol != ' ')
                {
                    if(x == 0)
                        line[0] = 3;
                    else if(x == 1)
                        line[0] = 7;
                    else
                        line[0] = 8;

                    if(symbol == 'X')
                    {
                        line[1] = 1;
                    }
                    else
                    {
                        line[1] = 2;
                    }
                    return line;
                }
            }
            count = 0;
            for(y = 1; y < 3; y++)
            {
                if(gametable[0][x] == gametable[y][x])
                    count++;
            }
            if(count == 2)
            {
                symbol = gametable[0][x];
                if(x == 0)
                    line[0] = 4;
                else if(x == 1)
                    line[0] = 9;
                else
                    line[0] = 10;

                if(symbol != ' ')
                {
                    if(symbol == 'X')
                    {
                        line[1] = 1;
                    }
                    else
                    {
                        line[1] = 2;
                    }
                    return line;
                }
            }
            count = 0;
            for(y = 1; y < 3; y++)
            {
                if(gametable[y][y] == gametable[0][0])
                    count++;
            }
            if(count == 2)
            {
                symbol = gametable[0][0];
                line[0] = 5;
                if(symbol != ' ')
                {
                    if(symbol == 'X')
                    {
                        line[1] = 1;
                    }
                    else
                    {
                        line[1] = 2;
                    }
                    return line;
                }
            }
            count = 0;
            d = 1;
            for(y = 1; y < 3; y++)
            {
                if(gametable[y][d] == gametable[0][2])
                    count++;
                d--;
            }
            if(count == 2)
            {
                symbol = gametable[1][1];
                line[0] = 6;
                if(symbol != ' ')
                {
                    line[1] = 2;
                    return line;
                }
            }

        }
        line[1] = 0;
        return line;
    }

}
