import QtQuick 2.5

Rectangle {
    id: rotateButton
    radius: 25
    color: "#555f6a"

    property bool isActive: false

    signal signalRatate()
    onSignalRatate:  {
     console.log(" clicked" )
     }
   // onSignalRatate: {
   //
   // }
        MouseArea {
            id: mouseAreaAdd
            width: 56
            height: 56
            anchors.fill: parent

            onClicked: {

                rotationAnimation.start();
                isActive = !isActive;
                //signalRatate();

            }
        }


    Component.onCompleted: {
        mouseAreaAdd.clicked.connect(signalRatate)
    }

    Image {
        id: rotateImg
        width: 50
        height: 50
        source: "images/revButton.png"
    }

}
