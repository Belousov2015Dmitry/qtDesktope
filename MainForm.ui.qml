import QtQuick 2.5

Rectangle {
    id: mainForm
    width: 900
    height: 600
    color: "#ffffff"
    radius: 0
    scale: 1
    border.width: 0
    smooth: true
    border.color: "#090808"

    property bool locked: false

    Column {
        id: columnMain
        z: 1
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: columnBasket.left
        anchors.rightMargin: 6
        spacing: 10

        ListView {
            id: mainListView
            z: -2
            anchors.right: parent.right
            anchors.rightMargin: 10
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: rowBtn.bottom

            anchors.topMargin: 5
            contentHeight: 149

            delegate: Item {
                x: 5
                height: 40
                Row {
                    id: row2
                    spacing: 10
                    Rectangle {
                        width: 40
                        height: 40

                        //color: colorCode
                    }

                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                }
            }
            model: ListModel {
                ListElement {
                    name: "Math Analys"
                    //colorCode: "grey"


                }

                ListElement {
                    name: "Algebra"
                    //colorCode: "red"
                }

                ListElement {
                    name: "Geometry"
                    //colorCode: "blue"
                }

                ListElement {
                    name: "C++"
                    //colorCode: "green"
                }
            }
        }

        Row {
            id: rowBtn
            height: 60
            z: 100
            anchors.top: parent.top
            anchors.topMargin: 0
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: mainListView.right
            anchors.rightMargin: 0

            Switcher {
                id: switcher1
                width: 335
                height: 26
                color: "#1874cd"
                anchors.left: parent.left
                anchors.leftMargin: 10
                anchors.top: parent.top
                anchors.topMargin: 20
                transformOrigin: Item.Center
                id_TOPICS: 2
                id_CRIBS: 1
                id_SUBJECTS: 0
                selectedId: 0
            }

            Flow {
                id: flowAddBtn
                width: 40
                height: 40
                z: 100
                anchors.right: parent.right
                anchors.rightMargin: 5
                anchors.top: parent.top
                anchors.topMargin: 12

                AddButton {
                    id: addButton
                    x: 0
                    y: 0
                    radius: 20
                    z: 100
                    anchors.rightMargin: 0
                    anchors.left: parent.left
                    anchors.leftMargin: 0
                    anchors.bottomMargin: 0
                    anchors.top: parent.top
                    anchors.topMargin: 0
                    isActive: false

                    // @disable-check M223
                    onSignalRatate: {
                        // @disable-check M222
                        mainClass.addButtonSlot(100500);

//                        // @disable-check M223
//                        if(addButton.isActive) {
//                            dialogCreator.z = 100;

//                        }
//                        // @disable-check M223
//                        else {
//                            dialogCreator.z = -100;
//                        }
                    }
                }
            }
        }
    }

    Column {
        id: columnBasket
        x: 506
        width: 364
        z: 1
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10


        ListView {
            id: selectedListView
            z: -2
            anchors.bottom: parent.bottom
            anchors.bottomMargin: 10

            anchors.left: parent.left
            anchors.leftMargin: 10
            anchors.top: rowBtn2.bottom
            anchors.topMargin: 5
            contentHeight: 149
            anchors.right: parent.right
            anchors.rightMargin: 10
            delegate: Item {
                x: 5
                height: 40
                Row {
                    id: row1
                    spacing: 10
                    Rectangle {
                        width: 40
                        height: 40

                        //color: colorCode
                    }

                    Text {
                        text: name
                        anchors.verticalCenter: parent.verticalCenter
                        font.bold: true
                    }
                }
            }
            model: ListModel {
                ListElement {
                    name: "Math Analys"
                    //colorCode: "grey"


                }

                ListElement {
                    name: "Algebra"
                    //colorCode: "red"
                }

                ListElement {
                    name: "Geometry"
                    //colorCode: "blue"
                }

                ListElement {
                    name: "C++"
                    //colorCode: "green"
                }
            }
        }

        Row {
            id: rowBtn2
            height: 50
            anchors.left: parent.left
            anchors.leftMargin: 0
            anchors.right: parent.right
            anchors.rightMargin: 0
            spacing: 0
            anchors.top: parent.top
            anchors.topMargin: 0
            layoutDirection: Qt.LeftToRight

            Text {
                id: text4

                width: 59
                height: 26
                color: "#1874cd"
                text: qsTr("Выбрано: 0")
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 10
                font.underline: false
                font.italic: true
                textFormat: Text.RichText
                anchors.right: parent.right
                anchors.rightMargin: 20
                font.family: "Times New Roman"
                font.bold: true
                styleColor: "#1874cd"
                horizontalAlignment: Text.AlignHCenter
                verticalAlignment: Text.AlignVCenter
                font.pixelSize: 15
            }

            Image {
                id: imagePrint
                width: 40
                height: 40
                source: "images/printButton.png"
                anchors.left: parent.left
                anchors.leftMargin: 8
                anchors.verticalCenterOffset: 6
                anchors.verticalCenter: parent.verticalCenter
                //source: "/Images/images/printButton.png"


                MouseArea {
                    id: mouseAreaPrint
                    hoverEnabled: true
                    anchors.fill: parent
                    // @disable-check M222
                    onClicked: mainClass.printButtonSlot();
                }
            }

            Image {
                id: imageRed
                width: 40
                height: 40
                anchors.left: parent.left
                anchors.leftMargin: 56
                anchors.verticalCenterOffset: 6
                anchors.verticalCenter: parent.verticalCenter
                asynchronous: true
                source: "images/redactButton.png"

                MouseArea {
                    id: mouseAreaRedact
                    hoverEnabled: true
                    anchors.fill: parent
                    // @disable-check M222
                    onClicked: mainClass.redactButtonSlot();
                }
            }
        }
    }

    Rectangle {
        id: rectangleBorderMain
        color: "#00000000"
        anchors.right: columnMain.right
        anchors.rightMargin: 5
        anchors.left: columnMain.left
        anchors.leftMargin: 5
        anchors.bottom: columnMain.bottom
        anchors.bottomMargin: 5
        anchors.top: columnMain.top
        anchors.topMargin: 65
        z: 0
        border.width: 3
        border.color: "#1874cd"
    }

    Rectangle {
        id: rectangleBorderBasket
        x: 0
        y: -8
        color: "#00000000"
        border.width: 3
        anchors.right: columnBasket.right
        z: 2
        border.color: "#1874cd"
        anchors.bottom: columnBasket.bottom
        anchors.left: columnBasket.left
        anchors.leftMargin: 5
        anchors.top: columnBasket.top
        anchors.bottomMargin: 5
        anchors.rightMargin: 5
        anchors.topMargin: 65
    }

    DialogAdding {
        id: dialogCreator
        x: 200
        y: 100
        anchors.bottomMargin: 100
        anchors.topMargin: 100
        anchors.rightMargin: 200
        anchors.leftMargin: 200
        anchors.fill: parent
        z: 100
    }
}
