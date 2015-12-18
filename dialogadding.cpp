#include "DialogAdding.h"
#include <QVariant>

void DialogAdding::setVisible(bool flag) {
    this->visible = flag;
    this->qmlObject->setProperty("z", flag ? 100 : -100);
}

bool DialogAdding::isVisible() {
    return this->visible;
}

//Signals:

void DialogAdding::addArticle(const QString &name) {

}

void DialogAdding::addTopic(const QString &name) {

}

void DialogAdding::addCrib(const QString &crib,
             const QString &topic,
             const QString &article,
             const QString &comment,
             const QString &path) {


}
