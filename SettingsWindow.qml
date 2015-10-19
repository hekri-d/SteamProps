import QtQuick 2.0
import QtQuick.Controls 1.2


Item {

    Rectangle {
        id: settingsWindow
        anchors.fill: parent
        color: "darkgray"

        Text {
            id: todoText
            text: qsTr("\t \t TO DO! \n \n SOME SETTINGS COMMING SOON")
            anchors.centerIn: parent
            color: "black"
            font.pixelSize: 23
        }

        Rectangle {
            anchors.bottom: parent.bottom
            width: parent.width
            height: parent.height/8
            color: "black"

            Text {
                id: backText
                text: qsTr("BACK")
                color: "white"
                font.pixelSize: 43
                anchors.centerIn: parent
            }


            MouseArea {
                anchors.fill: parent

                onClicked: {
                    settingsPageLoader.source = ""
                }
            }

        }

    }



}
