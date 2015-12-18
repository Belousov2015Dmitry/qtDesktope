#ifndef MAINFORM_H
#define MAINFORM_H

#include <QDebug>
#include <QObject>
#include "DialogAdding.h"

class MainForm : public QObject
{
    Q_OBJECT
public:
    MainForm(QObject *QMLObject);

signals:

public slots:
    void switcherSlot();
    void addButtonSlot(/*int x*/);
    void printButtonSlot();
    void redactButtonSlot();

protected:
    QObject *qmlObject;
    DialogAdding *dialog;
};

#endif // MAINFORM_H
