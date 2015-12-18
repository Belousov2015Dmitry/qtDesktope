import QtQuick 2.5

Rectangle {
    id: croppingButton
    radius: 25
    color: "#555f6a"

    property bool isActive: false

    signal signalRatate()

        MouseArea {
            id: mouseAreaAdd
            width: 56
            height: 56
            anchors.fill: parent

            onClicked: {
                rotationAnimation.start();
                isActive = !isActive;

            }
        }


    Component.onCompleted: {
        mouseAreaAdd.clicked.connect(signalRatate)
    }

    Image {
        id: cropImg
        width: 50
        height: 50
        source: "images/cropButton.png"
    }

}