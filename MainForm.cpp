#include "MainForm.h"
#include "FormsManager.h"
//#include <QtDeclarative/QDeclarativeView>

MainForm::MainForm(QObject *QMLObject) {
    this->qmlObject = QMLObject;
    dialog = new DialogAdding(qmlObject->findChild<QObject*>("dialogCreator"));
}

void MainForm::switcherSlot() {

}

void MainForm::addButtonSlot(/*int x*/) {
    //qDebug()<<x<<endl;
    dialog->setVisible(!dialog->isVisible());
}

void MainForm::printButtonSlot() {
    FormsManager().getInstance().openPrinterForm();
}

void MainForm::redactButtonSlot() {
    FormsManager().getInstance().openRedactorForm();
}
