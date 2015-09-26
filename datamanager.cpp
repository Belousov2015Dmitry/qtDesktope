#include "datamanager.h"
#include <QSqlQuery>
#include <QVariant>

const QString DataManager::TABLE_ARTICLES = QString("articles");
const QString DataManager::TABLE_TOPICS   = QString("topics");
const QString DataManager::TABLE_CRIBS    = QString("cribs");

///////////////////////////////////////////////////////////

QString quotes(const QString str) {
    return "'" + str + "'";
}

///////////////////////////////////////////////////////////

DataManager& DataManager::getInstance() {
    static DataManager instance;
    return instance;
}

DataManager::DataManager() {
    this->db = QSqlDatabase::addDatabase("SQLITE");
    this->db.setDatabaseName("data");
    this->db.open();
}

DataManager::~DataManager() {
    this->db.close();
}

///////////////ID<-->TITLE/////////////////////////////////

int DataManager::getId(const QString &table, const QString &title) {
    QSqlQuery q(this->db);
    q.prepare("SELECT :id FROM :table WHERE title = ':title'");
    q.bindValue(":table", table);
    q.bindValue(":title", title);

    if(table == this->TABLE_ARTICLES)
        q.bindValue(":id", "id_a");
    else if(table == this->TABLE_TOPICS)
        q.bindValue(":id", "id_t");
    else if(table == this->TABLE_CRIBS)
        q.bindValue(":id", "id_c");
    else
        return this->ERROR;

    q.exec();
    if(q.next())
        return q.value(0).toInt();
    return this->ERROR;
}

QString DataManager::getTitle(const QString &table, const int &id) {
    QSqlQuery q(this->db);
    q.prepare("SELECT :title FROM :table WHERE :id = " + QString(id));
    q.bindValue(":table", table);

    if(table == this->TABLE_ARTICLES)
        q.bindValue(":id", "id_a");
    else if(table == this->TABLE_TOPICS)
        q.bindValue(":id", "id_t");
    else if(table == this->TABLE_CRIBS)
        q.bindValue(":id", "id_c");
    else
        return NULL;

    q.exec();
    if(q.next())
        return q.value(0).toString();
    return NULL;
}

//////////////INSERTING/OF/RECORDS/////////////////////////

void DataManager::createTables() {
    QSqlQuery q(this->db);

    q.exec("CREATE TABLE articles ( id_a INTEGER PRIMARY KEY AUTOINCREMENT, title CHAR, tag CHAR )");
    q.exec("CREATE TABLE topics   ( id_t INTEGER PRIMARY KEY AUTOINCREMENT, title CHAR, tag CHAR )");
    q.exec("CREATE TABLE cribs     ( id_c INTEGER PRIMARY KEY AUTOINCREMENT, title CHAR, tag CHAR, comment CHAR, imgpath CHAR, id_t INTEGER NOT NULL )");

    q.exec("CREATE TABLE articles_topics ( id_a INTEGER NOT NULL, id_t INTEGER NOT NULL )");
}

char DataManager::addArticle(const QString &title, const QString &tag) {

    if(this->getId(this->TABLE_ARTICLES, title) != this->ERROR)
        return this->CODE_IS_CONTAINED;

    QSqlQuery q(this->db);
    q.exec("INSERT INTO articles (title, tag) VALUES(" + quotes(title)
                                                       + ", "
                                                       + quotes(tag) + ")");
    return this->CODE_COMPLETED;
}

char DataManager::addTopic(const QString &article, const QString &title, const QString &tag = "") {

    int id_t = this->getId(this->TABLE_TOPICS, title);
    if(id_t != this->ERROR)
        return this->CODE_IS_CONTAINED;

    int id_a = this->getId(this->TABLE_ARTICLES, article);
    if(id_a == this->ERROR) {
        this->addArticle(article);
        id_a = this->getId(this->TABLE_ARTICLES, article);
    }

    QSqlQuery q(this->db);
    q.exec("INSERT INTO topics (title, tag) VALUES(" + quotes(title)
                                                       + ", "
                                                       + quotes(tag) + ")");
    id_t = this->getId(this->TABLE_TOPICS, title);

    q.exec("INSERT INTO articles_topics (id_a, id_t) VALUES(" + QString(id_a)
                                                              + ", "
                                                              + QString(id_t) + ")");

    return this->CODE_COMPLETED;
}

char DataManager::addCrib(const QString &topic, const QString &title, const QString &tag, const QString &comment, const QString &pathToImg) {

    if(this->getId(this->TABLE_TOPICS, topic) != this->ERROR)
        return this->CODE_IS_CONTAINED;

    int id_t = this->getId(this->TABLE_TOPICS, topic);
    if(id_t == this->ERROR)
        return this->CODE_NOT_FOUND;

    QSqlQuery q(this->db);
    q.prepare("INSERT INTO cribs (title, tag, comment, imgpath, id_t) VALUES ( :title, :tag, :comment, :imgpath, :id )");
    q.bindValue(":title",   title);
    q.bindValue(":tag",     tag);
    q.bindValue(":comment", comment);
    q.bindValue(":imgpath", pathToImg);
    q.bindValue(":id",      id_t);
    q.exec();

    return this->CODE_COMPLETED;
}

//////////////GETTING/OF/SECTIONS/LISTS////////////////////

QList<TitleTag*>* DataManager::getArticlesList(const int &count) {
    QSqlQuery q(this->db);
    q.exec("SELECT title, tag FROM articles ORDER BY title LIMIT " + QString(count));

    QList<TitleTag*> *list = new QList<TitleTag*>();
    while(q.next()) {
        TitleTag *tt = new TitleTag;
        tt->title = q.value(0).toString();
        tt->tag   = q.value(1).toString();
        list->push_back(tt);
    }

    return list;
}

QList<TitleTag*>* DataManager::getTopicsList(const QString &article, const int &count) {
    QSqlQuery q(this->db);

    if(!article.isNull())
        q.exec("SELECT title, tag FROM articles_topics INNER JOIN topics "
               "ON articles_topics.id_t = topics.id_t "
               "ORDER BY title LIMIT " + QString(count));
    else
        q.exec("SELECT title, tag FROM articles_topics INNER JOIN topics "
               "ON articles_topics.id_t = topics.id_t "
               "WHERE id_a = (SELECT articles.id_a "
                             "FROM articles WHERE articles.title = " + quotes(article) + ")"
               "ORDER BY title LIMIT " + QString(count));

    QList<TitleTag*> *list = new QList<TitleTag*>();
    while(q.next()) {
        TitleTag *tt = new TitleTag;
        tt->title = q.value(0).toString();
        tt->tag   = q.value(1).toString();
        list->push_back(tt);
    }

    return list;
}

QList<Crib*>* DataManager::getCribsList(const QString &topics, const int &count) {
    QSqlQuery q(this->db);

    if(!topics.isNull())
        q.exec("SELECT title, tag, comment, imgpath "
               "FROM cribs "
               "WHERE id_t = (SELECT id_t "
                             "FROM topics "
                             "WHERE topics.title = " + quotes(topics) + ") "
               "ORDER BY title LIMIT " + QString(count));

    QList<Crib*> *list = new QList<Crib*>();
    while(q.next()) {
        Crib *cr = new Crib;
        cr->title     = q.value(0).toString();
        cr->tag       = q.value(1).toString();
        cr->comment   = q.value(2).toString();
        cr->pathToImg = q.value(3).toString();
        list->push_back(cr);
    }

    return list;
}


















