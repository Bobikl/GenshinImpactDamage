#ifndef CALCULATION_H
#define CALCULATION_H

#include <iostream>
#include <QObject>
using namespace std;

class calculation : public QObject
{
    Q_OBJECT
public:
    calculation();
    Q_INVOKABLE QString getNumber(string a, QString b, QString c, QString d, QString e);
    Q_INVOKABLE QString returnNumber();
};

#endif // CALCULATION_H
