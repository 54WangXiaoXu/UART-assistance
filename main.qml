import QtQuick 2.0
import QtQuick.Controls 2.5
import QtQuick.Layouts 1.3
import an.qt.mySerialPort 1.0
import QtQuick.Window 2.12


Window {
    id: window
    visible: true
    width: 1000
    height: 700
    minimumWidth: 800
    minimumHeight: 600
    title: qsTr("SerialX 串口调试助手")

    Item {
        id: element
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.right: parent.right
        anchors.rightMargin: 0
        anchors.left: parent.left
        anchors.leftMargin: 80
        FunctionWindow{ anchors.top: parent.top; anchors.topMargin: 0; anchors.bottom: parent.bottom; anchors.bottomMargin: 0 }
    }

    Item {
        id: element1
        x: 0
        width: 80
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        EdgeDisplay{ anchors.fill: parent }
    }

}

/*##^##
Designer {
    D{i:1;anchors_height:742;anchors_width:520;anchors_y:0}D{i:3;anchors_height:924;anchors_width:97;anchors_x:0;anchors_y:0}
}
##^##*/
