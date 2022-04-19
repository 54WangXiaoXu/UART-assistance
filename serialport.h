#ifndef SERIALPORT_H
#define SERIALPORT_H

#include <QObject>
#include <QSerialPort>

class SerialPort : public QObject
{
    Q_OBJECT
public:
    explicit SerialPort(QObject *parent = nullptr);
    ~SerialPort();

    Q_INVOKABLE bool serialConnect(QString port,QString baudrate,QString databits,QString parity,QString stopbits);
    Q_INVOKABLE QString serialRead();
    Q_INVOKABLE bool serialWrite(QString sendStr);

signals:

public slots:

private:
    QSerialPort *m_serial;
};

#endif // SERIALPORT_H
