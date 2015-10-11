#ifndef PRINTERFORM_H
#define PRINTERFORM_H

#include <QObject>
#include <QDebug>

class PrinterForm : public QObject
{
    Q_OBJECT
public:
    PrinterForm(QObject *QMLObject) : qmlObject(QMLObject) {}

signals:

public slots:

protected:
    QObject *qmlObject;
};

#endif // PRINTERFORM_H
