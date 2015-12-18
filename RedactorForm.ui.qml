import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Dialogs 1.2

Rectangle {
    id: redForm
    height: 505
    width: 305
    color: "#443b3232"

    Rectangle {
        id: redactorForm
        color: "#ffffff"
        anchors.rightMargin: 3
        anchors.bottomMargin: 3
        anchors.leftMargin: 1
        anchors.topMargin: 1
        anchors.fill: parent

        Image {
            id: imgCrib
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 5
            anchors.top: parent.top
            anchors.topMargin: 80
            rotation: 0
            source: "images/1.png"
        }

        Rectangle {
            id: rowShadow
            height:60
            color: "#d0cfcf"
            anchors.top: parent.top
            anchors.topMargin: 12
            anchors.left: parent.left
            anchors.leftMargin: 12
            anchors.right: parent.right
            anchors.rightMargin: 8

            Rectangle {
                id: rowShadow2
                height:60
                color: "#ffffff"
                anchors.top: parent.top
                anchors.topMargin: 1
                anchors.left: parent.left
                anchors.leftMargin: 1
                anchors.right: parent.right
                anchors.rightMargin: 3
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 3


                Row {
                    id: rowBtn
                    anchors.verticalCenter: parent.verticalCenter


                Rectangle {
                    id: btnShadow
                    width: 52
                    height: 52
                    color: "#2b3c3cda"
                    radius: 28
                    opacity: 1
                    border.width: 0

                    anchors.left: rowBtn.left
                    anchors.leftMargin: 13
                    anchors.verticalCenter: rowBtn.verticalCenter

                    BlackWhiteButton {
                    id: bwButton
                    width: 55
                    height: 55
                    color: "#44e1e4e7"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                        anchors.right: parent.right
                    anchors.rightMargin: 3
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 3
                    //  onSignalRatate: {
                    //    redactorClass.BlackWhiteButtonSlot();
                    //}
                }
            }

            Rectangle {
                id: btnShadow2
                width: 52
                height: 52
                color: "#2b3c3cda"
                radius: 28
                border.width: 0
                anchors.left: btnShadow.right
                anchors.leftMargin: 13
                anchors.verticalCenter: parent.verticalCenter

                RotationButton {
                    id: rotButton
                    width: 55
                    height: 55
                    color: "#44e1e4e7"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 3
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 3
                   // onSignalRatate:imgCrib.rotation = 90
                     // redactorClass.RotationButtonSlot();
                }
            }

            Rectangle {
                id: btnShadow3
                width: 52
                height: 52
                color: "#2b3c3cda"
                radius: 28
                border.width: 0
                anchors.left: btnShadow2.right
                anchors.leftMargin: 13
                anchors.verticalCenter: parent.verticalCenter

                CropButton {
                    id: crpButton
                    width: 55
                    height: 55
                    color: "#44e1e4e7"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 3
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 3
                      //onSignalRatate: {
                       // redactorClass.CropButtonSlot();
                      //}
                }
            }

            Rectangle {
                id: btnShadow4
                width: 52
                height: 52
                color: "#2b3c3cda"
                radius: 28
                border.width: 0
                anchors.left: btnShadow3.right
                anchors.leftMargin: 13
                anchors.verticalCenter: parent.verticalCenter

                SaveButton {
                    id: svButton
                    width: 55
                    height: 55
                    color: "#44e1e4e7"
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    anchors.right: parent.right
                    anchors.rightMargin: 3
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottom: parent.bottom
                    anchors.bottomMargin: 3
                      //onSignalRatate: {
                       // redactorClass.SaveButtonSlot();
                      //}
                }
            }


        }
        }

    }
    }
}

