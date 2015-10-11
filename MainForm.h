#ifndef MAINFORM_H
#define MAINFORM_H

#include <QDebug>
#include <QObject>

class MainForm : public QObject
{
    Q_OBJECT
public:
    MainForm(QObject *QMLObject) : qmlObject(QMLObject) {}

signals:

public slots:
    void switcherSlot();
    void addButtonSlot();
    void printButtonSlot();

protected:
    QObject *qmlObject;
};

#endif // MAINFORM_H
