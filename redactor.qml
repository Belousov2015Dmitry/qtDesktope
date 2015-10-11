import QtQuick 2.5
import QtQuick.Window 2.2

Window {
    visible: true

    width: 900
    height: 600

    minimumHeight: 600
    minimumWidth: 900

    title: "Редактор"

    RedactorForm {
        anchors.fill: parent
    }
}
