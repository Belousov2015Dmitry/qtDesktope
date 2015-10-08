import QtQuick 2.4

Rectangle {
    id: viewForm
    width: 300
    height: 450
    color: "#ffffff"
    radius: 0
    scale: 1
    border.width: 0
    smooth: true
    border.color: "#090808"

    Column {
        id: columnView
        anchors.left: parent.left
        anchors.leftMargin: 10
        anchors.top: parent.top
        anchors.topMargin: 10
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 10
        anchors.right: parent.right
        anchors.rightMargin: 10
        spacing: 10

    }

    Rectangle {
        id: rectangleBorderView
        width: 100
        height: 100
        color: "#00000000"
        anchors.right: columnView.right
        anchors.rightMargin: 5
        anchors.left: columnView.left
        anchors.leftMargin: 5
        anchors.bottom: columnView.bottom
        anchors.bottomMargin: 5
        anchors.top: columnView.top
        anchors.topMargin: 65
        z: 0
        border.width: 3
        border.color: "#1874cd"
    }


}

