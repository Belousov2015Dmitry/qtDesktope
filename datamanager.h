#ifndef DATAMANAGER
#define DATAMANAGER

#include <QSqlDatabase>
#include <QList>

typedef struct{
    QString title;
    QString tag;
} TitleTag;

typedef struct{
    QString title;
    QString tag;
    QString comment;
    QString pathToImg;
} Crib;

class DataManager
{
public:

    const static QString TABLE_ARTICLES;
    const static QString TABLE_TOPICS;
    const static QString TABLE_CRIBS;

    const static char CODE_COMPLETED    = '0';
    const static char CODE_IS_CONTAINED = '1';
    const static char CODE_NOT_FOUND    = '2';

    const static int  ERROR = -1;

    static DataManager &getInstance();

    void createTables();
    //SET:
    char addArticle(const QString &title, const QString &tag = "");
    char addTopic(const QString &article, const QString &title, const QString &tag);
    char addCrib(const QString &topic, const QString &title, const QString &tag, const QString &comment, const QString &pathToImg);

    //GET:
    QList<TitleTag*>* getArticlesList(const int &count = 50);
    QList<TitleTag*>* getTopicsList(const QString &article = NULL, const int &count = 50);
    QList<Crib*>*     getCribsList(const QString &topics = NULL, const int &count = 50);

private:

    QSqlDatabase db;

    DataManager();
    ~DataManager();

    int getId(const QString &table, const QString &title);
    QString getTitle(const QString &table, const int &id);
};

#endif // DATAMANAGER

