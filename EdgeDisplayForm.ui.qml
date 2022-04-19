import QtQuick 2.0
import QtQuick.Controls 2.5

Item {
    id: element
    width: 60
    property alias helpMouseArea: helpMouseArea
    property alias helpRect: helpRect
    property alias helpWhite: helpWhite
    property alias helpGray: helpGray
    property alias setRect: setRect
    property alias setWhite: setWhite
    property alias setGray: setGray
    property alias setMouseArea: setMouseArea

    Rectangle {
        id: rectangle
        width: parent.width
        color: "#2c3239"
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 0
        anchors.top: parent.top
        anchors.topMargin: 0
        anchors.horizontalCenter: parent.horizontalCenter
        border.color: "#ffffff"

        MouseArea {
            id: setMouseArea
            x: 20
            y: 381
            width: 30
            height: 30
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 70
            z: 3
            hoverEnabled: true
        }

        Rectangle {
            id: setRect
            x: 15
            y: 377
            width: 40
            height: 40
            color: "#4f4b4b"
            radius: 10
            anchors.horizontalCenterOffset: 1
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 65
            z: 0
            visible: false
        }
        Image {
            id: setWhite
            x: 20
            y: 816
            width: 50
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 0.5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 60
            z: 1
            fillMode: Image.PreserveAspectFit
            source: "image/设置白色.png"
            visible: false
        }
        Image {
            id: setGray
            x: 0
            y: 816
            width: 50
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 0.5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 60
            z: 1
            fillMode: Image.PreserveAspectFit
            source: "image/设置灰色.png"
            visible: true
        }

        Image {
            id: helpWhite
            x: 20
            y: 697
            width: 50
            height: 50
            anchors.horizontalCenter: parent.horizontalCenter
            scale: 0.5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 130
            z: 1
            source: "qrc:/image/信息白.png"
            fillMode: Image.PreserveAspectFit
            visible: false
        }

        Image {
            id: helpGray
            x: 0
            y: 697
            width: 50
            height: 50
            scale: 0.5
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 130
            anchors.horizontalCenterOffset: 0
            z: 1
            anchors.horizontalCenter: parent.horizontalCenter
            fillMode: Image.PreserveAspectFit
            source: "image/信息灰.png"
            visible: true
        }

        Rectangle {
            id: helpRect
            x: 15
            y: 285
            width: 40
            height: 40
            color: "#4f4b4b"
            radius: 10
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 135
            z: 0
            visible: false
        }

        MouseArea {
            id: helpMouseArea
            x: 20
            y: 290
            width: 30
            height: 30
            anchors.horizontalCenterOffset: 0
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 140
            z: 3
            hoverEnabled: true
        }
    }

    Image {
        id: image
        x: 0
        width: 40
        height: 40
        anchors.top: parent.top
        anchors.topMargin: 45
        anchors.horizontalCenterOffset: 0
        anchors.horizontalCenter: parent.horizontalCenter
        source: "image/连接.png"
        fillMode: Image.PreserveAspectFit
    }
}

/*##^##
Designer {
    D{i:10;anchors_y:39}
}
##^##*/

