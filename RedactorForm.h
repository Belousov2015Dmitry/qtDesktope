#ifndef REDACTORFORM_H
#define REDACTORFORM_H

#include <QObject>
#include <QDebug>

class RedactorForm : public QObject
{
    Q_OBJECT
public:
    RedactorForm(QObject *QMLObject) : qmlObject(QMLObject) {}

signals:

public slots:

protected:
    QObject *qmlObject;
};

#endif // REDACTORFORM_H
