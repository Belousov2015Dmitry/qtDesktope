#ifndef FORMSMANAGER_H
#define FORMSMANAGER_H

#include <QObject>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "MainForm.h"
#include "RedactorForm.h"
#include "PrinterForm.h"

class FormsManager
{
private:

    QQmlApplicationEngine *engine;

    MainForm     *mainForm;
    RedactorForm *redactorForm;
    PrinterForm  *printerForm;

public:

    //////////////////////////////////////////////////

    static FormsManager& getInstance();
    FormsManager& init(QQmlApplicationEngine &_engine);

    ~FormsManager() {
        closeMainForm();
        closeRedactorForm();
        closePrinterForm();
    }

    //////////////////////////////////////////////////

    void openMainForm();
    void openRedactorForm();
    void openPrinterForm();

    void closeMainForm();
    void closeRedactorForm();
    void closePrinterForm();
};

#endif // FORMSMANAGER_H
