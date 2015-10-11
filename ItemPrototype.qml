import QtQuick 2.5

Item
{
    id: item1
    property int itemWidth: 200
    property int itemHeight: 50

    property int offsetLeft: 20

    property color themeColor: "#87CEFA"
    property color tagColor: "#ffffff"


    Rectangle {
        x: 5
        y: 0
        width: 10
        height: 10
        radius: 5
        color: themeColor
    }

    Rectangle {
        id: itemPrototype
        x: 0
        y: 21
        width: itemWidth
        height: 40
        color: themeColor

        Rectangle {
            id: colorTag
            y: 13
            width: 14
            height: 14
            color: tagColor
            radius: 7
            anchors.verticalCenter: parent.verticalCenter
            anchors.left: parent.left
            anchors.leftMargin: 8
            clip: false

            MouseArea {
                anchors.fill: parent
                onClicked: {}
            }
        }

        Text {
            id: textTitle
            color: "#ffffff"
            text: qsTr("Text")
            anchors.bottom: colorTag.bottom
            anchors.bottomMargin: -5
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            anchors.left: colorTag.right
            anchors.leftMargin: 8
            textFormat: Text.AutoText
            font.family: "Times New Roman"
            style: Text.Raised
            font.strikeout: false
            font.underline: false
            font.italic: false
            font.bold: true
            verticalAlignment: Text.AlignVCenter
            horizontalAlignment: Text.AlignLeft
            font.pixelSize: 25
        }
    }

    Rectangle {
        id: removeButton
        y: 56
        width: 50
        height: 50
        radius: 25
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#ffffff"
            }

            GradientStop {
                position: 0.498
                color: "#ff0000"
            }


            GradientStop {
                position: 0.993
                color: "#ff0000"
            }


        }
        anchors.left: itemPrototype.right
        anchors.leftMargin: -10
        anchors.verticalCenter: itemPrototype.verticalCenter
        scale: 0.4
        border.color: "#00000000"

        property bool isActive: false;

        Text {
            x: 50
            y: 50
            height: 30
            color: "#ffffff"
            text: qsTr("+")
            rotation: 45
            font.family: "OCR A Extended"
            anchors.verticalCenter: parent.verticalCenter
            anchors.horizontalCenter: parent.horizontalCenter
            font.bold: true
            horizontalAlignment: Text.AlignHCenter
            anchors.horizontalCenterOffset: 0
            font.pixelSize: 60
            verticalAlignment: Text.AlignVCenter
            anchors.verticalCenterOffset: 0
            anchors.centerIn: parent
            Rotation.angle: 45
        }

        MouseArea {
            id: mouseAreaRemove
            anchors.fill: parent
            z: 3
            rotation: 0
            onClicked: { }
        }


    }
}
