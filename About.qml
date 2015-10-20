import QtQuick 2.0

Rectangle {
    id: aboutRect
    color: "darkgray"

    Text {
        id: aboutTitle
        text: qsTr("About <b>SteamProps</b>")
        anchors.top: parent.top
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.topMargin: parent.height*0.07
        font.pixelSize: parent.height/25
        textFormat: Text.RichText
    }


    TextEdit {
        id: aboutText
        text: qsTr("\n\n   SteamProps is an app that can be used to calculate and display steam properties of water/steam at different thermodynamic states.\n \n Based on the library freesteam 2.1. \n \n Version: 0.9 \n \n License: GPL \n \n Made by: Hekri - hekri.d@gmail.com. \n ")

        anchors.top: aboutTitle.bottom
        anchors.topMargin: parent.height*0.01
        anchors.horizontalCenter: parent.horizontalCenter
        color: "black"
        font.pixelSize: parent.height/32
        width: parent.width - parent.width *0.1
        wrapMode: Text.Wrap
    }


    Text {
        id: projectLink
        anchors.top: aboutText.bottom
        anchors.topMargin: parent.height*0.01
        textFormat: Text.RichText
        text: "See the <a href=\"https://github.com/\">SteamProps Project website</a>."
        onLinkActivated: Qt.openUrlExternally(link)
        anchors.left: aboutText.left
    }

    Text {
        id: projectLink2
        anchors.top: projectLink.bottom
        anchors.topMargin: parent.height*0.02
        textFormat: Text.RichText
        text: "And the <a href=\"http://freesteam.sourceforge.net/\">freesteam Project website</a>."
        onLinkActivated: Qt.openUrlExternally(link)
        anchors.left: aboutText.left
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
                settingsLoader.source = "SettingsWindow.qml"
            }
        }

    }
}

