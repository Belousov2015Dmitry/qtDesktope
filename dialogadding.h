#ifndef DIALOGADDING
#define DIALOGADDING

#include <QObject>

class DialogAdding : public QObject
{
    Q_OBJECT
public:
    DialogAdding(QObject *QmlObject) : qmlObject(QmlObject) {}

    void setVisible(bool flag);
    bool isVisible();

public slots:
    void addArticle(const QString &name);

    void addTopic(const QString &name);

    void addCrib(const QString &crib,
                 const QString &topic,
                 const QString &article,
                 const QString &comment,
                 const QString &path);

protected:
    QObject *qmlObject;

private:
    bool visible;
};



#endif // DIALOGADDING

