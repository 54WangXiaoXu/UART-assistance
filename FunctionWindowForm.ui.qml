import QtQuick 2.4
import QtQuick.Controls 2.5

Item {
    id: element4
    width: 931
    height: 480

    Item {
        id: element5
        anchors.fill: parent

        Column {
            id: column
            y: 30
            width: 120
            height: 300
            transformOrigin: Item.Center
            anchors.left: parent.left
            anchors.leftMargin: 15
            anchors.verticalCenter: parent.verticalCenter
            spacing: 25

            Text {
                text: qsTr("串口")
                anchors.left: parent.left
                anchors.leftMargin: 32
                verticalAlignment: Text.AlignTop
                horizontalAlignment: Text.AlignLeft
                font.bold: true
                font.pixelSize: 25
            }

            Text {
                id: element
                text: qsTr("波特率")
                anchors.left: parent.left
                anchors.leftMargin: 32
                font.bold: true
                font.pixelSize: 25
            }

            Text {
                id: element1
                text: qsTr("数据位")
                anchors.left: parent.left
                anchors.leftMargin: 32
                font.bold: true
                font.pixelSize: 25
            }

            Text {
                id: element2
                text: qsTr("校验位")
                anchors.left: parent.left
                anchors.leftMargin: 32
                font.bold: true
                font.pixelSize: 25
            }

            Text {
                id: element3
                text: qsTr("停止位")
                anchors.left: parent.left
                anchors.leftMargin: 32
                font.bold: true
                font.pixelSize: 25
            }

            Button {
                id: button
                width: 80
                height: 50
                text: qsTr("打开串口")
                anchors.left: parent.left
                anchors.leftMargin: 25
                display: AbstractButton.TextOnly
                font.bold: true
                font.pointSize: 12
            }
        }

        Column {
            id: column1
            y: 72
            width: 160
            height: 325
            anchors.left: column.right
            anchors.leftMargin: 10
            anchors.verticalCenter: parent.verticalCenter
            spacing: 12

            ComboBox {
                id: comboBox
            }

            ComboBox {
                id: comboBox4
            }

            ComboBox {
                id: comboBox3
            }

            ComboBox {
                id: comboBox2
            }

            ComboBox {
                id: comboBox1
            }
        }

        Rectangle {
            id: rectangle
            width: 2
            radius: 0
            gradient: Gradient {
                GradientStop {
                    position: 0.124
                    color: "#ded9d9"
                }

                GradientStop {
                    position: 0.236
                    color: "#ded9d9"
                }

                GradientStop {
                    position: 0.475
                    color: "#000000"
                }
            }
            border.width: 0
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 300
            border.color: "#f3f2f2"
            z: -1
        }

        Item {
            id: element6
            y: 32
            height: 440
            anchors.left: parent.left
            anchors.leftMargin: 310
            anchors.verticalCenter: parent.verticalCenter
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 20
            anchors.right: parent.right
            anchors.rightMargin: 8

            Rectangle {
                id: rectangle1
                color: "#ffffff"
                radius: 2
                border.width: 2
                border.color: "#230f0f"
                anchors.fill: parent

                ScrollView {
                    id: scrollView
                    x: 10
                    y: 10
                    anchors.top: parent.top
                    anchors.topMargin: 10
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 10
                    anchors.left: parent.left
                    anchors.leftMargin: 10
                    anchors.right: parent.right
                    anchors.rightMargin: 10
                    clip: true

                    TextArea {
                        id: textArea
                        x: 0
                        y: 15
                        width: 524
                        height: 417
                        text: "11111\n\n\n\n\n2\n\n\n\n\n\n2\n\n\n\n\n3\n"
                        placeholderText: qsTr("Text Area")
                    }
                }
            }
        }
    }
}

/*##^##
Designer {
    D{i:2;anchors_x:33}D{i:9;anchors_height:309;anchors_x:673;anchors_y:72}D{i:15;anchors_height:435;anchors_x:15;anchors_y:25}
D{i:23;anchors_height:359;anchors_width:375;anchors_x:0;anchors_y:0}D{i:22;anchors_height:416;anchors_width:519;anchors_x:22;anchors_y:39}
D{i:21;anchors_height:200;anchors_width:200}D{i:20;anchors_width:200;anchors_x:360}
D{i:1;anchors_height:200;anchors_width:200;anchors_x:24;anchors_y:170}
}
##^##*/

