package model;

public class CrossesCircles
{
    public char gametable[][] = new char[3][3];

    // Конструктор игрового поля
    CrossesCircles()
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

    // Добавление крестика или нолика компьютером
    public int addAI(int x, int y)
    {
        if (x < 3 && y < 3)
        {
            if (gametable[x][y] == ' ')
            {
                gametable[x][y] = 'X';
                return 1;
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


}
