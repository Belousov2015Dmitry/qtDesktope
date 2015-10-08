import QtQuick 2.5
import QtQuick.Window 2.2

ViewForm {
    visible: true

    width: 300
    height: 450

    minimumHeight: 450
    minimumWidth: 300

    ViewForm {
        anchors.fill: parent
    }
}

