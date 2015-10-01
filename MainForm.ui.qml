import QtQuick 2.5

// import QtQuick 1.0 // to target S60 5th Edition or Maemo 5

    Rectangle {
        id: rectangle1
        width: 480
        height: 401
        radius: 2
        gradient: Gradient {
            GradientStop {
                position: 0
                color: "#6d6767"
            }

            GradientStop {
                position: 0.120
                color: "#555353"
            }

            GradientStop {
                position: 0.270
                color: "#2d2d2d"
            }

            GradientStop {
                position: 0.450
                color: "#312b2b"
            }

            GradientStop {
                position: 1
                color: "#000000"
            }
        }
        border.width: 0
        smooth: true
        border.color: "#090808"

        ListView {
            id: list_view2
            width: 273
            height: 271
            anchors.top: parent.top
            anchors.left: parent.left
            anchors.bottom: parent.bottom

            anchors.topMargin: 50
            anchors.bottomMargin: 20
            anchors.leftMargin: 20
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



            Rectangle {
                id: rectangle3
                width: 65
                height: 65
                radius: 5
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.right: parent.right
                anchors.rightMargin: 90
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 0.010
                        color: "#7e7878"
                    }

                    GradientStop {
                        position: 0.130
                        color: "#3e3939"
                    }

                    GradientStop {
                        position: 0.140
                        color: "#313131"
                    }

                    GradientStop {
                        position: 0.300
                        color: "#312c2c"
                    }

                    GradientStop {
                        position: 1
                        color: "#000000"
                    }
                }

                Text {
                    id: rectangle3_label
                    x: 50
                    y: 50
                    color: "#a6a6a6"
                    text: qsTr("+")
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                    font.family: "OCR A Extended"
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 60
                    anchors.horizontalCenter: parent.horizontalCenter
                    anchors.verticalCenter: parent.verticalCenter
                 }
            }

            Rectangle {
                id: rectangle4
                width: 65
                height: 65
                radius: 5
                anchors.bottom: parent.bottom
                anchors.bottomMargin: 20
                anchors.right: parent.right
                anchors.rightMargin: 20
                gradient: Gradient {
                    GradientStop {
                        position: 0
                        color: "#ffffff"
                    }

                    GradientStop {
                        position: 0.010
                        color: "#848181"
                    }

                    GradientStop {
                        position: 0.130
                        color: "#3e3939"
                    }

                    GradientStop {
                        position: 0.140
                        color: "#313131"
                    }

                    GradientStop {
                        position: 0.300
                        color: "#312c2c"
                    }

                    GradientStop {
                        position: 0.560
                        color: "#1a1818"
                    }

                    GradientStop {
                        position: 1
                        color: "#000000"
                    }
                }

                Image {
                    id: image1
                    x: 13
                    y: 14
                    width: 40
                    height: 37
                    source: "printer-icon.png"
                }
            }




        Rectangle {
            id: rectangle2
            width: 273
            height: 34
            anchors.top: parent.top
            anchors.topMargin: 10
            anchors.left: parent.left
            anchors.leftMargin: 20
            radius: 5
            gradient: Gradient {
                GradientStop {
                    position: 0
                    color: "#ffffff"
                }

                GradientStop {
                    position: 0.560
                    color: "#535050"
                }

                GradientStop {
                    position: 0.710
                    color: "#5a5757"
                }

                GradientStop {
                    position: 0.840
                    color: "#4d4c4c"
                }
            }


            MouseArea {
                id: mouse_area1
                x: 4
                y: 5
                width: 85
                height: 25

                Text {
                    id: text1
                    x: 5
                    y: 9
                    width: 49
                    height: 32
                    color: "#888585"
                    text: qsTr("A-Z")
                    styleColor: "#000000"
                    horizontalAlignment: Text.AlignHCenter
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: Text.AlignVCenter
                    font.bold: true
                    font.family: "OCR A Extended"
                    font.pixelSize: 16
                }
            }

            MouseArea {
                id: mouse_area2
                x: 94
                y: 5
                width: 85
                height: 25

                Text {
                    id: text2
                    x: 9
                    y: 9
                    width: 46
                    height: 31
                    color: "#7e7c7c"
                    text: qsTr("Subj")
                    anchors.verticalCenter: parent.verticalCenter
                    style: Text.Sunken
                    font.family: "OCR A Extended"
                    font.bold: true
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 17
                }
            }

            MouseArea {
                id: mouse_area3
                x: 183
                y: 5
                width: 85
                height: 25

                Text {
                    id: text3
                    x: 0
                    y: 7
                    width: 59
                    height: 36
                    color: "#827b7b"
                    text: qsTr("Year")
                    horizontalAlignment: Text.AlignHCenter
                    font.bold: true
                    styleColor: "#000000"
                    anchors.verticalCenter: parent.verticalCenter
                    font.family: "OCR A Extended"
                    verticalAlignment: Text.AlignVCenter
                    font.pixelSize: 17
                }
            }
        }

        Text {
            id: text4

            width: 59
            height: 26
            color: "#a6a4a4"
            text: qsTr("0 Items")
            anchors.right: parent.right
            anchors.rightMargin: 12
            anchors.top: parent.top
            anchors.topMargin: 12
            font.family: "OCR A Extended"
            font.bold: false
            styleColor: "#868181"
            horizontalAlignment: Text.AlignHCenter
            verticalAlignment: Text.AlignVCenter
            font.pixelSize: 13
        }

        ListView {
            id: list_view1

            width: 125
            height: 160
            anchors.top: parent.top
            anchors.topMargin: 50
            contentHeight: 149
            anchors.right: parent.right
            anchors.rightMargin: 50
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
    }


