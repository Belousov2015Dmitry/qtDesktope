#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QQmlContext>

#include "FormsManager.h"

int main(int argc, char *argv[])
{
    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;

    FormsManager()
            .getInstance()
            .init(engine)
            .openMainForm();

    return app.exec();
}
