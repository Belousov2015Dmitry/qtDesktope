import QtQuick 2.5

Rectangle {
    id: addButton
    x: 0
    y: 0
    width: 50
    height: 50
    color: "#1874cd"
    radius: 25
    anchors.right: parent.right
    anchors.bottom: parent.bottom
    border.color: "#00000000"
    anchors.bottomMargin: 917
    anchors.rightMargin: 250

    Text {
        id: rectangle3_label
        x: 50
        y: 50
        height: 30
        color: "#ffffff"
        text: qsTr("+")
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
        RotationAnimator on rotation {
            id: rotationAnimation
            from: 0
            to: 180
            duration: 300
        }
    }

    MouseArea {
        id: mouseAreaAdd
        anchors.fill: parent
        onClicked: rotationAnimation.start();
    }


}
