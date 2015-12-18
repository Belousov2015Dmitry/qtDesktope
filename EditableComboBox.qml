import QtQuick 2.5
import QtQuick.Controls 1.4
import QtQuick.Controls.Styles 1.4
import QtQuick.Controls.Private 1.0

Rectangle
{
    width: 200
    height: 50
    color: "#22000000"

    ComboBox {
        id: _combobox
        width: parent.width - 4
        height: parent.height - 4
        selectByMouse: true

        style: ComboBoxStyle {
            background: Rectangle {
                color: "#fff"
                border.color: "#1874cd"
            }

            property Component __dropDownStyle: MenuStyle {
                __menuItemType: "comboboxitem"

                frame: Rectangle {
                    border.width: 2
                    border.color: "#1874cd"
                    color: "#22000000"

                    Rectangle {
                        width: parent.width - 8
                        height: parent.height - 8
                    }
                }

                itemDelegate.background: Rectangle {
                    color: styleData.selected ? "#87CEFA" : "#fff"
                }               
            }
        }//end-style

        model: ["1","2","3","4","5"]
    }//end-ComboBox
}
