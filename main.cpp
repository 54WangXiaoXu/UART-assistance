#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include "serialport.h"
#include "QQuickWindow"

int main(int argc, char *argv[])
{
    QCoreApplication::setAttribute(Qt::AA_EnableHighDpiScaling);

    QGuiApplication app(argc, argv);

    app.setWindowIcon(QIcon(":/icon/030319363179_0叉叉.ico"));

    QQmlApplicationEngine engine;

    qmlRegisterType<SerialPort>("an.qt.mySerialPort",1,0,"SerialPort");
    const QUrl url(QStringLiteral("qrc:/main.qml"));
    QObject::connect(&engine, &QQmlApplicationEngine::objectCreated,
                     &app, [url](QObject *obj, const QUrl &objUrl) {
        if (!obj && url == objUrl)
            QCoreApplication::exit(-1);
    }, Qt::QueuedConnection);
    engine.load(url);

    return app.exec();
}
