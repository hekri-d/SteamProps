import QtQuick 2.0
import QtQuick.Controls 1.2
import QtQuick.Controls.Styles 1.2

    Rectangle {
        id: settingsWindow
        anchors.fill: parent
        color: "darkgray"

        Rectangle {
            id: titleRect
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            width: parent.width
            height: parent.height/10
            color: "black"

            Text {
                id: title
                text: qsTr("OPTIONS")
                font.pixelSize: backButton.height/2
                color: "steelblue"
                font.bold: true
                anchors.centerIn: parent

            }

        }


        Rectangle {
            id:label
            width: parent.width/1.3
            height: parent.height/12
            color: "black"
            anchors.top: titleRect.bottom
            anchors.topMargin: 10
            anchors.left: titleRect.left

            Text {
                id: addKiloPrefixText
                text: qsTr("ADD KILO PREFIX TO UNITS")
                font.pixelSize: backButton.height/3
                anchors.centerIn: parent
                color: "steelblue"
            }
        }

        signal switchSignal (bool state);

        Switch {
            id: unitsPrefixSwitch
            anchors.left: label.right
            anchors.leftMargin: 10
            anchors.top: label.top
            onClicked: unitsPrefixSwitch.checked ? switchSignal(true) :switchSignal(false)
            checked: root.setSwitch



            style: SwitchStyle {
                groove: Rectangle {
                        implicitWidth: label.width/4
                        implicitHeight: label.height
                        border.width: 1
                        color:  "black"



                        Text {
                            id: onn
                            text: unitsPrefixSwitch.checked?"ON":""
                            color: "white"
                            font.bold: true
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.left: parent.left
                            font.pixelSize: backButton.height/3

                        }

                        Text {
                            id: off
                            text: unitsPrefixSwitch.checked?"":"OFF"
                            color: "white"
                            font.bold: true
                            anchors.verticalCenter: parent.verticalCenter
                            anchors.right: parent.right
                            font.pixelSize: backButton.height/3

                        }
                }
            }
         }

        Text {
            id: todoText
            text: qsTr(" \n SOME MORE OPTIONS COMMING SOON")
            anchors.centerIn: parent
            color: "black"
            font.pixelSize: backButton.height/3
        }

        Rectangle {
            anchors.bottom: backButton.top
            anchors.bottomMargin: height*0.1
            width: parent.width
            height: parent.height/10
            color: "black"

            Text {
                id: aboutText
                text: qsTr("ABOUT")
                font.pixelSize: parent.height/2.2
                anchors.centerIn: parent
//                font.bold: true
                color: "steelblue"
            }

            MouseArea {
                id: aboutButton
                anchors.fill: parent

                onClicked: {
                    settingsLoader.source = "About.qml"
                }
            }
        }


        Rectangle {
            id: backButton
            anchors.bottom: parent.bottom
            width: parent.width
            height: parent.height/10
            color: "black"

            Text {
                id: backText
                text: qsTr("BACK")
                color: "steelblue"
                font.pixelSize: parent.height/2
                anchors.centerIn: parent
            }


            MouseArea {
                anchors.fill: parent

                onClicked: {
                    settingsLoader.source = ""
                }
            }

        }

    }




