#include "FormsManager.h"

const static QString FORM_MAIN = QString("qrc:/main.qml");
const static QString FORM_PRINTER = QString("qrc:/printer.qml");
const static QString FORM_REDACTOR = QString("qrc:/redactor.qml");

////////////////////////////////////////////////////////////////////////////////

FormsManager& FormsManager::getInstance() {
    static FormsManager instance;
    return instance;
}

FormsManager& FormsManager::init(QQmlApplicationEngine &_engine) {
    this->engine = &_engine;
    return *this;
}

////////////////////////////////////////////////////////////////////////////////

void FormsManager::openMainForm() {
    this->engine->load( QUrl( FORM_MAIN ) );

    this->mainForm = new MainForm(engine->rootObjects()[0]);
    this->engine->rootContext()->setContextProperty("mainClass", mainForm);
}

void FormsManager::openRedactorForm() {
    this->engine->load( QUrl( FORM_REDACTOR ) );

    this->redactorForm = new RedactorForm(engine->rootObjects()[0]);
    this->engine->rootContext()->setContextProperty("redactorClass", redactorForm);
}

void FormsManager::openPrinterForm() {
    this->engine->load( QUrl( FORM_PRINTER ) );

    this->printerForm = new PrinterForm(engine->rootObjects()[0]);
    this->engine->rootContext()->setContextProperty("printerClass", printerForm);
}

////////////////////////////////////////////////////////////////////////////////

void FormsManager::closeMainForm() {
    try {
        delete mainForm;
        qDebug()<<"FORM MAIN deleted";
    }
    catch(...){
        qDebug()<<"EXCEPTION: Form Main DELETE FAILED";
    }
}

void FormsManager::closeRedactorForm() {
    try {
        delete redactorForm;
        qDebug()<<"FORM REDACTOR deleted";
    }
    catch(...){
        qDebug()<<"EXCEPTION: Form Redactor DELETE FAILED";
    }
}

void FormsManager::closePrinterForm() {
    try {
        delete printerForm;
        qDebug()<<"FORM PRINTER deleted";
    }
    catch(...){
        qDebug()<<"EXCEPTION: Form Printer DELETE FAILED";
    }
}
