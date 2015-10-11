import QtQuick 2.5

Rectangle {
    id: switcher
    x: 0
    y: 0
    width: 335
    height: 26
    color: "#1874cd"

    property int id_SUBJECTS: 0;
    property int id_TOPICS:   1;
    property int id_CRIBS:    2;

    property int selectedId: 0;

    Text {
        id: textSubj
        x: 8
        y: 1
        width: 101
        height: 25
        color: "#ffffff"
        text: "Предметы"
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#00000000"
        font.pixelSize: 20
        style: Text.Normal
        font.italic: true
        font.underline: false
        wrapMode: Text.NoWrap
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Times New Roman"
    }

    Text {
        id: textTopics
        x: 115
        y: 1
        width: 105
        height: 25
        color: "#ffffff"
        text: "Темы"
        horizontalAlignment: Text.AlignHCenter
        styleColor: "#00000000"
        font.pixelSize: 20
        style: Text.Normal
        font.italic: true
        font.underline: false
        wrapMode: Text.NoWrap
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Times New Roman"
    }

    Text {
        id: textAbc
        x: 226
        y: 1
        width: 101
        height: 25
        color: "#ffffff"
        text: "А-Я"
        styleColor: "#00000000"
        horizontalAlignment: Text.AlignHCenter
        style: Text.Normal
        font.pixelSize: 20
        font.italic: true
        wrapMode: Text.NoWrap
        font.underline: false
        font.bold: true
        verticalAlignment: Text.AlignVCenter
        font.family: "Times New Roman"
    }

    Rectangle {
        id: rectangleSelector
        x: selectedId == id_SUBJECTS ? 34 : selectedId == id_TOPICS ? 143 : 252;
        y: -13
        width: 50
        height: 52
        color: "#1874cd"
        radius: 25
        clip: false
        z: -10
        border.width: 0

        ScaleAnimator on scale {
            id: animationScaleDown
            from: 1
            to: 0
            duration: 300
        }

        ScaleAnimator on scale {
            id: animationScaleUp
            from: 0
            to: 1
            duration: 300
        }
    }

    MouseArea {
        id: mouseAreaSubj
        x: 0
        y: 1
        width: 115
        height: 25
        hoverEnabled: false
        onClicked:
            if(selectedId != id_SUBJECTS) {
                //animationScaleDown.start();
                selectedId = id_SUBJECTS;
                animationScaleUp.start();
            }
    }

    MouseArea {
        id: mouseAreaTopics
        x: 121
        y: 1
        width: 99
        height: 25
        onClicked:
            if(selectedId != id_TOPICS) {
                //animationScaleDown.start();
                selectedId = id_TOPICS;
                animationScaleUp.start();
            }
    }

    MouseArea {
        id: mouseAreaAbc
        x: 226
        y: 1
        width: 109
        height: 25
        onClicked:
            if(selectedId != id_CRIBS) {
                //animationScaleDown.start();
                selectedId = id_CRIBS;
                animationScaleUp.start();
            }
    }

}
