import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2

Rectangle
{
    id: shadow
    width: 500
    height: 400
    color: "#44000000"

    Rectangle {
        id: rectangle2
        color: "#ffffff"
        anchors.rightMargin: 3
        anchors.leftMargin: 1
        anchors.bottomMargin: 3
        anchors.topMargin: 1
        anchors.fill: parent

        Rectangle {
            id: imgBorder
            x: 258
            y: 8
            color: "#ffffff"
            border.width: 2
            border.color: "#1874cd"
            anchors.right: parent.right
            anchors.rightMargin: 8
            anchors.left: parent.horizontalCenter
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 8

            Image {
                id: imgCrib
                anchors.right: parent.right
                anchors.rightMargin: 2
                anchors.left: parent.left
                anchors.leftMargin: 2
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 2
                anchors.top: parent.top
                anchors.topMargin: 2
                source: "qrc:/qtquickplugin/images/template_image.png"
            }
        }

        Column {
            id: column1
            x: 8
            y: 8
            anchors.right: parent.horizontalCenter
            anchors.rightMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 8
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 8
            anchors.top: parent.top
            anchors.topMargin: 8

            Text {
                id: articleLabel
                color: "#626262"
                text: qsTr("Предмет:")
                font.pixelSize: 20
            }

            EditableComboBox {
                id: articleBox
                height: 30
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 70
                anchors.top: articleLabel.bottom
                anchors.topMargin: 8
            }

            Text {
                id: topicLabel
                color: "#626262"
                text: qsTr("Предмет:")
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: articleBox.bottom
                anchors.topMargin: 8
                font.pixelSize: 20
            }

            EditableComboBox {
                id: topicBox
                height: 30
                anchors.right: parent.right
                anchors.rightMargin: 70
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: topicLabel.bottom
                anchors.topMargin: 8
            }

            Text {
                id: titleLable
                color: "#626262"
                text: qsTr("Имя:")
                anchors.leftMargin: 0
                anchors.left: parent.left
                anchors.topMargin: 8
                font.pixelSize: 20
                anchors.top: topicBox.bottom
            }

            Rectangle {
                id: titleBorder
                height: 26
                color: "#ffffff"
                border.color: "#1874cd"
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.right: parent.right
                anchors.rightMargin: 70
                anchors.top: titleLable.bottom
                anchors.topMargin: 8

                TextEdit {
                    id: titleBox
                    text: qsTr("")
                    textFormat: Text.PlainText
                    horizontalAlignment: Text.AlignLeft
                    anchors.right: parent.right
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    font.pixelSize: 15
                }
            }

            Text {
                id: commentLabel
                color: "#626262"
                text: qsTr("Описание:")
                anchors.leftMargin: 0
                anchors.left: parent.left
                anchors.topMargin: 8
                font.pixelSize: 20
                anchors.top: titleBorder.bottom
            }

            Rectangle {
                id: areaBorder
                width: 220
                height: 130
                color: "#ffffff"
                radius: 0
                border.width: 1
                border.color: "#1874cd"
                anchors.right: parent.right
                anchors.rightMargin: 8
                anchors.left: parent.left
                anchors.leftMargin: 0
                anchors.top: commentLabel.bottom
                anchors.bottomMargin: 8

                TextArea {
                    id: teatArea
                    height: 130
                    anchors.left: parent.left
                    anchors.leftMargin: 1
                    anchors.right: parent.right
                    anchors.rightMargin: 1
                    anchors.top: commebtLabel.bottom
                    anchors.bottomMargin: 1
                }
            }


        }

    }

    Rectangle {
        id: btnShadow
        x: 195
        y: 20
        width: 54
        height: 54
        color: "#44000000"
        radius: 27

        AddButton {
            id: createButton
            radius: 25
            anchors.rightMargin: 3
            anchors.bottomMargin: 3
            anchors.top: parent.top
            anchors.topMargin: 1
            anchors.left: parent.left
            anchors.leftMargin: 1

            onSignalRatate: {

            }
        }
    }

}
