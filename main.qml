import QtQuick 2.4
import QtQuick.Controls.Styles 1.2
import QtQuick.Controls 1.2
import QtQuick.Layouts 1.1
import QtQuick.Window 2.0
import QtQuick.Dialogs 1.2
import QtGraphicalEffects 1.0

import MySteamClass 1.0
import "js/CallCppEngineJS.js" as CallCppEngineJS
import "js/RadioButtonUpdateJS.js" as RadioButtonUpdateJS
import "js/InputUnitsUpdateJS.js" as InputUnitsUpdateJS
import "js/CallCppEngineL.js" as CallCppEngineLJS
import "js/CallCppEngineV.js" as CallCppEngineVJS
import "js/DisplayUnitsUpdateJS.js" as DisplayUnitsUpdateJS

Window {
    id: root
    visible: true

    width: Screen.width/3.2; height: Screen.height/1.8
//    width: Screen.width; height: Screen.height-topRect.height/1.6

    maximumHeight: (Screen.height/1.8)*1.5; maximumWidth: (Screen.width/3.2)*2;
    minimumHeight: Screen.height/1.8;  minimumWidth: Screen.width/3.2;

    MySteamClass {
        id: fromMyClass
    }


    signal radioButtonSignal ;                  //SIGNAL--UPDATES THE PROPERTY AND INPUT LABELS

    onRadioButtonSignal: {
        RadioButtonUpdateJS.updateRadioButtons()

    }

                  //---------------TOP RECTANGLE--------------\\

    Rectangle {id: topRect; color: "#FF8C00"; anchors.left: root.left; anchors.top: root.top;
        height: root.height*0.04 ; width: root.width;  }




                   //-------RADIOBUTTON GRADIENTS--------\\
    Gradient {
        id: gradient1
        GradientStop { position: 0.0; color: "#15B0C6" }
        GradientStop { position: 0.3; color: "#4CFFFC" }
        GradientStop { position: 0.6; color: "#4CFFFC" }
        GradientStop { position: 1.0; color: "#15B0C6" }
    }

    Gradient {
        id: gradient2
        GradientStop { position: 0.0; color: "#BEE718" }
        GradientStop { position: 1.0; color: "#BEE718" }

    }


    // property real fontSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
    property real radioButtonsWidth: root.width/6

                //-----------GROUPBOX = START---------\\
    Flickable {
        id: checkBoxesFlick
        anchors.left: parent.left
        anchors.top: topRect.bottom
        width: parent.width; height: checkBoxes.height;
        contentWidth:checkBoxes.width
        interactive: true


        GroupBox {
            id: checkBoxes
            Layout.fillWidth: true
            width: radioButtonsWidth.width*7.2
            anchors.top: parent.top
            height:topRect.height*3

            RowLayout {
                id: radioButtonsLayout
                height: checkBoxes.height
                anchors.top: parent.top
                anchors.left: parent.left
                anchors.verticalCenter: parent.verticalCenter
                spacing: -9

                              //-------EXCLUSIVE GROUP--------\\

                ExclusiveGroup { id: tabPositionGroup }



                       //-----PRESSURE - TEMPERATURE RADIOBUTTON-----\\


                RadioButton {
                    id: ptRadioButton
                    exclusiveGroup: tabPositionGroup
                    checked: true
                    width: radioButtonsLayout.width/2
                    onCheckedChanged: radioButtonSignal()
                    anchors.verticalCenter: radioButtonsLayout.verticalCenter

                    style: RadioButtonStyle {
                        indicator: RadioButtonStyleRect {
                            gradient: ptRadioButton.checked?gradient2:gradient1


                            Text {
                                id: pt
                                text: "(p,T)"
                                anchors.centerIn: parent
                                font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
                                font.bold: true
                            }
                        }
                    }
                }



                               //-----PRESSURE - INTERNAL ENERGY RADIOBUTTON-----\\


                RadioButton {
                    id: puRadioButton
                    exclusiveGroup: tabPositionGroup
                    anchors.verticalCenter: radioButtonsLayout.verticalCenter
                    onCheckedChanged: radioButtonSignal()

                    style: RadioButtonStyle {
                        indicator: RadioButtonStyleRect {
                            gradient: puRadioButton.checked?gradient2:gradient1

                            Text {
                                id: pu
                                text: "(p,u)"
                                anchors.centerIn: parent
                                font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
                                font.bold: true
                            }
                        }

                    }
                }

                                        //-----PRESSURE - ENTROPY RADIOBUTTON-----\\

                RadioButton {
                    id: psRadioButton
                    exclusiveGroup: tabPositionGroup
                    anchors.verticalCenter: radioButtonsLayout.verticalCenter
                    onCheckedChanged: radioButtonSignal()

                    style: RadioButtonStyle {
                        indicator: RadioButtonStyleRect {
                            gradient: psRadioButton.checked?gradient2:gradient1

                            Text {
                                id: ps
                                text: "(p,s)"
                                anchors.centerIn: parent
                                font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
                                font.bold: true
                            }
                        }
                    }
                }

                                    //-----PRESSURE - ENTHALPY RADIOBUTTON-----\\

                RadioButton {
                    id: phRadioButton
                    exclusiveGroup: tabPositionGroup
                    anchors.verticalCenter: radioButtonsLayout.verticalCenter
                    onCheckedChanged: radioButtonSignal()

                    style: RadioButtonStyle {
                        indicator: RadioButtonStyleRect{
                            gradient: phRadioButton.checked?gradient2:gradient1
                            Text {
                                id: ph
                                text: "(p,h)"
                                anchors.centerIn: parent
                                font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
                                font.bold: true

                            }

                        }
                    }
                }

                                    //-----TEMPERATURE - ENTROPY RADIOBUTTON-----\\

                RadioButton {
                    id: tsRadioButton
                    exclusiveGroup: tabPositionGroup
                    anchors.verticalCenter: radioButtonsLayout.verticalCenter
                    onCheckedChanged: radioButtonSignal()

                    style: RadioButtonStyle {
                        indicator: RadioButtonStyleRect {
                            gradient: tsRadioButton.checked?gradient2:gradient1

                            Text {
                                id: ts
                                text: "(T,s)"
                                anchors.centerIn: parent
                                font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
                                font.bold: true
                            }
                        }

                    }
                }


                RadioButton {
                    id: txRadioButton
                    exclusiveGroup: tabPositionGroup
                    anchors.verticalCenter: radioButtonsLayout.verticalCenter
                    onCheckedChanged: radioButtonSignal()

                    style: RadioButtonStyle {
                        indicator: RadioButtonStyleRect {
                            gradient: txRadioButton.checked?gradient2:gradient1

                            Text {
                                id: tx
                                text: "(T,x)"
                                anchors.centerIn: parent
                                font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
                                font.bold: true
                            }
                        }

                    }
                }

                RadioButton {
                    id: pxRadioButton
                    exclusiveGroup: tabPositionGroup
                    anchors.verticalCenter: radioButtonsLayout.verticalCenter
                    onCheckedChanged: radioButtonSignal()

                    style: RadioButtonStyle {
                        indicator: RadioButtonStyleRect {
                            gradient: pxRadioButton.checked?gradient2:gradient1

                            Text {
                                id: px
                                text: "(p,x)"
                                anchors.centerIn: parent
                                font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
                                font.bold: true
                            }
                        }


                    }
                }

            }


        }
                                                  //-----------GROUPBOX = END---------\\

    }



               //--------INPUTS=START------------\\


    TextField {
        id: inputProperty1
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.horizontalCenterOffset: 1.7*topRect.height
        anchors.top: checkBoxesFlick.bottom
        anchors.topMargin: topRect.height/2.3
        height: topRect.height*1.3
        width: topRect.width/3
        placeholderText: qsTr("Default is Pa")
        focus: true
        maximumLength: 11
        font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/5.5:label1Rect.height/2
        verticalAlignment: TextInput.AlignVCenter

        style: TextFieldStyle {
            background:  Rectangle {
                color:"white"
                anchors.fill: parent
                border.width: 1; border.color: "gray"
            }
        }

        validator: DoubleValidator {  }




    }

    TextField {
        id: inputProperty2
        anchors.top: inputProperty1.bottom
        anchors.topMargin: topRect.height/8
        anchors.horizontalCenter: inputProperty1.horizontalCenter
        height: topRect.height*1.3
        width: topRect.width/3
        placeholderText: qsTr("Default is K")
        maximumLength: 11
        font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/5.5:label1Rect.height/2
        verticalAlignment: TextInput.AlignVCenter

        style: TextFieldStyle {
            background:  Rectangle {
                color:"white"
                anchors.fill: parent
                border.width: 1; border.color: "gray"
            }
        }

        validator: DoubleValidator {  }

        Keys.onSpacePressed: {calculate.forceActiveFocus() }

    }



    Rectangle {
        id: label1Rect
        anchors.right: inputProperty2.left
        anchors.rightMargin: topRect.width/100
        width: topRect.width/3.2
        height: inputProperty1.height
        anchors.verticalCenter: inputProperty1.verticalCenter
        color: "#E7C718"
        radius: 4
        border.width: 1
        border.color: "gray"

        Text {
            id: inputLabel1
            text: "Pressure"
            anchors.centerIn: parent    //-----set the fontsize here
            font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/5.5:label1Rect.height/2
            horizontalAlignment: Text.AlignHCenter
            width: label1Rect.width-topRect.height/6

        }
    }


    Rectangle {
        id: label2Rect
        width: label1Rect.width
        height: inputProperty2.height
        anchors.verticalCenter: inputProperty2.verticalCenter
        anchors.horizontalCenter: label1Rect.horizontalCenter

        color: "#E7C718"
        radius: 4
        border.width: 1
        border.color: "gray"

        Text {
            id: inputLabel2
            text: "Temperature"
            anchors.centerIn: parent
            font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/5.5:label1Rect.height/2
            anchors.verticalCenter: label2Rect.verticalCenter

        }
    }



                                                   //--------INPUTS=END------------\\



           //---------INPUT UNITS == START----\\


    Rectangle {
        id: input1UnitsCheckBoxRect
        width: topRect.width/8 ; height: inputProperty1.height ;
        color: "white";
        anchors.left: inputProperty1.right
        anchors.verticalCenter: inputProperty1.verticalCenter
        anchors.leftMargin: topRect.width/90
        radius: 4
        border.width: 1
        border.color: "gray"

        CheckBox {
            id: input1UnitsCheckBox
            height: 50
            anchors.fill: parent
            visible: true
            z:-1

            onCheckedChanged: inputUnitsUpdate()
        }

        Text {
            id: input1UnitsCheckBoxText
            text: qsTr("bar")
            anchors.centerIn: parent
            font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/5.5:label1Rect.height/2
            verticalAlignment: Text.AlignVCenter
        }
    }


    Rectangle {
        id: input2UnitsCheckBoxRect
        width: topRect.width/8 ; height: inputProperty1.height ;
        color: "white";
        anchors.left: inputProperty2.right
        anchors.verticalCenter: inputProperty2.verticalCenter
        anchors.leftMargin: topRect.width/90
        radius: 4
        border.width: 1
        border.color: "gray"

        CheckBox {
            id: input2UnitsCheckBox
            height: 50
            anchors.fill: parent
            visible: true
            z:-1
            onCheckedChanged: inputUnitsUpdate()
        }

        Text {
            id: input2UnitsCheckBoxText
            text: qsTr("'C")
            anchors.centerIn: parent
            font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/5.5:label1Rect.height/2
            verticalAlignment: Text.AlignVCenter
            anchors.left: parent.right
        }
    }
                                              // ----------INPUT UNITS == END------\\



                //-------SIGNAL - UPDATES INPUT UNITS -----\\

    signal inputUnitsUpdate()

    onInputUnitsUpdate: {

        InputUnitsUpdateJS.updateInputUnits()

    }

    Text {
        id: liquidVaporNote
        text: qsTr("")
        anchors.top: label2Rect.bottom
        anchors.topMargin: topRect.height/3.8
        anchors.horizontalCenter: displays.horizontalCenter
        font.pixelSize: fontsize/1.1
        color: "black"

    }

                            //--------LABELS=START------------\\

    property double fontsize: label1Rect.width<3*label1Rect.height?label1Rect.width/5.5:label1Rect.height/2

    Column {
        id:labels
        width:  topRect.width/2.8
        spacing: topRect.height/4
        anchors.top: liquidVaporNote.bottom// label2Rect.bottom
        anchors.topMargin: topRect.height/600
        anchors.left: label1Rect.left
        anchors.leftMargin: -topRect.height*1.4



        OutputLabelsRect {
            id: outputLabel1Rect

            Text {
                id: outputLabel1
                text: "Entropy"
                anchors.centerIn: parent
                font.pixelSize: fontsize// label1Rect.width<3*label1Rect.height?label1Rect.width/5.5:label1Rect.height/2
                anchors.verticalCenter: outputLabel1Rect.verticalCenter
                verticalAlignment:  Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: label1Rect.width-topRect.height/6
            }
        }



        OutputLabelsRect {
            id: outputLabel2Rect

            Text {
                id: outputLabel2
                text:  "Int. Energy"
                anchors.centerIn: parent
                font.pixelSize: fontsize
                anchors.verticalCenter: outputLabel2Rect.verticalCenter
            }
        }

        OutputLabelsRect {
            id: outputLabel3Rect

            Text {
                id: outputLabel3
                text: "Enthalpy"
                anchors.centerIn: parent
                font.pixelSize: fontsize
                anchors.verticalCenter: outputLabel3Rect.verticalCenter
                verticalAlignment:  Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: label1Rect.width-topRect.height/6
            }
        }


        OutputLabelsRect {
            id: outputLabel4Rect

            Text {
                id: outputLabel4
                text: "Volume"
                anchors.centerIn: parent
                font.pixelSize: fontsize
                anchors.verticalCenter: outputLabel4Rect.verticalCenter
                verticalAlignment:  Text.AlignVCenter
            }
        }

        OutputLabelsRect {
            id: outputLabel5Rect

            Text {
                id: outputLabel5
                text: "Density"
                anchors.centerIn: parent
                font.pixelSize: fontsize
                anchors.verticalCenter: outputLabel5Rect.verticalCenter
                verticalAlignment:  Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: label1Rect.width-topRect.height/6
            }
        }


        OutputLabelsRect {
            id: outputLabel6Rect

            Text {
                id: outputLabel6
                text: "Heat cap. Cp"
                anchors.centerIn: parent
                font.pixelSize: fontsize
                anchors.verticalCenter: outputLabel6Rect.verticalCenter
                verticalAlignment:  Text.AlignVCenter
            }
        }

        OutputLabelsRect {
            id: outputLabel7Rect

            Text {
                id: outputLabel7
                text: "Heat cap. Cv"
                anchors.centerIn: parent
                font.pixelSize: fontsize
                anchors.verticalCenter: outputLabel7Rect.verticalCenter
                verticalAlignment:  Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: label1Rect.width-topRect.height/6
            }
        }


        OutputLabelsRect {
            id: outputLabel8Rect

            Text {
                id: outputLabel8
                text: "Ther. conduc."
                anchors.centerIn: parent
                font.pixelSize:fontsize
                verticalAlignment:  Text.AlignVCenter
            }
        }

        OutputLabelsRect {
            id: outputLabel9Rect

            Text {
                id: outputLabel9
                text: "Quality"
                anchors.centerIn: parent
                font.pixelSize: fontsize
                anchors.verticalCenter: outputLabel9Rect.verticalCenter
                verticalAlignment:  Text.AlignVCenter
                horizontalAlignment: Text.AlignHCenter
                width: label1Rect.width-topRect.height/6
            }
        }


        OutputLabelsRect {
            id: outputLabel10Rect

            Text {
                id: outputLabel10
                text: "Viscosity"
                anchors.centerIn: parent
                font.pixelSize: fontsize
                anchors.verticalCenter: outputLabel10Rect.verticalCenter
                verticalAlignment:  Text.AlignVCenter
            }
        }




    }


                                                 //--------LABELS=END------------\\


                 //-------PROPERTIES DISPLAY - START-------\\
    Column {
        id: displays
        width: topRect.width/2.7      //width of displays set here
        height: labels.height
        anchors.verticalCenter: labels.verticalCenter
        anchors.left: labels.right
        anchors.leftMargin: topRect.height/4
        visible: true
        spacing: topRect.height/4


        OutputLabelsRect {
            id: propertyDisplay1Rect;
            color: "darkorange"

            TextEdit {
                id: propertyDisplay1Text
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                selectByMouse: true
                selectionColor: "lightblue"
                clip: true

                wrapMode: TextEdit.Wrap

            }
        }

        OutputLabelsRect { id: propertyDisplay2Rect;
            color: "darkorange"
            TextEdit {
                id: propertyDisplay2Text
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
            }
        }

        OutputLabelsRect { id: propertyDisplay3Rect;
            color: "darkorange"

            TextEdit {
                id: propertyDisplay3Text
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
            }
        }


        OutputLabelsRect { id: specificVolumeDisplayRect;
            color: "darkorange"

            TextEdit {
                id: specificVolumeDisplayText
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
            }
        }

        OutputLabelsRect { id: densityDisplayRect;
            color: "darkorange"

            TextEdit {
                id: specificDensityDisplayText
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
            }
        }

        OutputLabelsRect { id: heatCapacityCpDisplayRect
            color: "darkorange"

            TextEdit {
                id: heatCapacityCpDisplayText
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
            }
        }


        OutputLabelsRect { id: heatCapacityCvDisplayRect;
            color: "darkorange"

            TextEdit {
                id: heatCapacityCvDisplayText
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
            }
        }

        OutputLabelsRect { id: thermalConductivityDisplayRect;
            color: "darkorange"

            TextEdit {
                id: thermalConductivityDisplayText
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
            }
        }

        OutputLabelsRect { id: qualityDisplayRect;
            color: "darkorange"

            TextEdit {
                id: qualityDisplayText
                text: qsTr("...")
                anchors.centerIn: parent
                font.pixelSize: fontsize
            }
        }

        OutputLabelsRect { id: viscosityDisplayRect
            color: "darkorange"

            TextEdit {
                id: viscosityDisplayText
                text: qsTr("...")
                anchors.centerIn: parent
                selectByMouse: true
                font.pixelSize: fontsize

            }
        }
    }

                                               //-------PROPERTIES DISPLAY - END-------\\

                   //--------UNITS=START-----------\\
    Column {
        id: units
        width: topRect.width/5.4
        height: labels.height
        anchors.verticalCenter: labels.verticalCenter
        anchors.left: displays.right
        anchors.leftMargin: topRect.height/4
        visible: true
        spacing: topRect.height/4

        PropertyUnitsRect {
            id: property1Units;

            TextEdit {
                id: unit1Text
                text: qsTr("J/kgK")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }

        PropertyUnitsRect {
            id:property2Units

            TextEdit {
                id: unit2Text
                text: qsTr("J/kg")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }

        PropertyUnitsRect {
            id: property3Units;

            TextEdit {
                id: unit3Text
                text: qsTr("J/kg")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }


        PropertyUnitsRect {
            id: property4Units;

            TextEdit {
                id: unit4Text
                text: qsTr("m3/kg")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }

        PropertyUnitsRect {
            id: property5Units;

            TextEdit {
                id: unit5Text
                text: qsTr("kg/m3")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }

        PropertyUnitsRect {
            id: property6Units;

            TextEdit {
                id: unit6Text
                text: qsTr("J/kgK")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }


        PropertyUnitsRect {
            id: property7Units;

            TextEdit {
                id: unit7Text
                text: qsTr("J/kgK")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }

        PropertyUnitsRect {
            id: property8Units;

            TextEdit {
                id: unit8Text
                text: qsTr("W/mK")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }

        PropertyUnitsRect {
            id: property9Units;

            TextEdit {
                id: unit9Text
                text: qsTr("%")
                anchors.centerIn: parent
                font.pixelSize: fontsize
                readOnly: true
            }
        }

        PropertyUnitsRect {
            id: property10Units;

            TextEdit {
                id: unit10Text
                textFormat: Text.RichText
                text: qsTr("Pa<>\u22c5</>s")
                anchors.centerIn: parent
                selectByMouse: true
                font.pixelSize: fontsize
                readOnly: true

            }
        }
    }

                                                                //----UNITS=END-----\\



  /*  Dialog {
        id:errorMessage
        //    text: "Inputs should not be empty"
        title: "ERROR MESSAGE"
        width: topRect.width/2; height: 5*topRect.height
        Rectangle {
            width: parent.width/2; height: parent.height/2;
            anchors.bottom: parent.bottom
            anchors.left: parent.left
            anchors.leftMargin: parent.width/4
            anchors.fill:  parent
            color: "blue"

            Text {
                id: name
                text: qsTr("Inputs should not be empty")
                font.pixelSize: label1Rect.width<3*label1Rect.height?label1Rect.width/4.7:label1Rect.height/1.7
                anchors.fill: parent
                color:"black"
            }

            MouseArea {
                anchors.fill: parent
                onClicked: errorMessage.close()
                z:1
            }
        }
    }

*/


    property real input1:  parseFloat(inputProperty1.text)
    property real input2: parseFloat(inputProperty2.text)



    Image {
        id: imgs
        source: "qrc:/images/Steam.jpg"
        anchors.fill: parent
        z:-1
    }

//    property real buttonsWidth: dialogWindow.width/4
//    property real buttonsHeight: dialogWindow.height/4

                   //------------DIALOG  -----------\\

    /*Dialog {
        id: helpDialog
        title: "Blue sky dialog"

        contentItem: Rectangle {
            id:dialogWindow
            implicitWidth: 500;
            implicitHeight: 220



            Image {
                id: img
                source: "qrc:/images/Steam.jpg"
                anchors.fill: parent
            }


            Text {
                id:title
                anchors.top: parent.top
                anchors.topMargin: 20
                text: "<b>freesteam 2.1 </b>"
                color: "navy"
                font.pixelSize: 20
                anchors.horizontalCenter: parent.horizontalCenter
            }

            Text {
                id: authors
                width: parent.width/1.1
                anchors.top: title.bottom
                anchors.topMargin: 30
                anchors.left: parent.left
                anchors.leftMargin: 20
                text: qsTr("<b><p>fresteam</b> calculates the properties of water and steam according to the IAPWS-IF97 industry-standard.<br><br>Written in C. UI created with Qt 5.4(QML). <br><br><b><i>Made by: John Pye, Hekuran Dushi.</b></i>")
                color: "black"
                font.pixelSize: 16
                wrapMode: Text.WrapAnywhere
            }

        }

    }                                    */


                                                    //------------DIALOG = END-----------\\



    Loader {
        id: settingsLoader
        width: root.width; height: root.height;
        anchors.fill: parent
        z:1

        onLoaded: {}
    }


    property bool setSwitch
    property bool setBySwitch

    signal recoverSwitch(bool previousState)

    Connections {
        target: settingsLoader.item

        onSwitchSignal: { (state == true) ? (setBySwitch=true) :(setBySwitch=false); setSwitch = setBySwitch;}

    }




    signal updateTitle;

    onUpdateTitle : {

        if(liquidRegionProperties.pressed ) {
        liquidVaporNote.text = "LIQUID"
        }

        else if(calculate.pressed && (txRadioButton.checked || pxRadioButton.checked)){
            liquidVaporNote.text = "MIXED"
        }
        else if(vaporRegionProperties.pressed){
            liquidVaporNote.text = "VAPOR"
        }
    }



                //--------BUTTONS=START---------------\\


    Button {
        id: liquidRegionProperties
        anchors.horizontalCenter: settings.horizontalCenter
        anchors.horizontalCenterOffset: -topRect.width/5.5
        anchors.top: displays.bottom
        anchors.topMargin: topRect.height/1.23

        visible: (txRadioButton.checked || pxRadioButton.checked) ? true : false


        style: ButtonStyle {
            background: Rectangle {

                implicitWidth:  control.pressed?topRect.width/10*1.1:topRect.width/10
                implicitHeight: control.pressed?topRect.height*1.2*1.1:topRect.height*1.2
                radius: 10
                color: "#ACB327"



                Image {
                    id: leftArrow
                    source: "qrc:/images/leftArrow.png"
                    anchors.fill: parent
                    mipmap: true

                }
            }

        }

        onClicked:  {
            inputUnitsUpdate()
            noteText.text = ""


            if(inputProperty1.text === "" || inputProperty2.text===""){
                noteText.text = "Inputs shouldn't be empty!"
                noteText.color = "red"
            }
            else {
            CallCppEngineLJS.callCppL()
            }

            updateTitle();


        }


    }


    Button {
        id: settings

        anchors.horizontalCenter: calculate.horizontalCenter
        anchors.horizontalCenterOffset: -topRect.width/4.6
        anchors.top: calculate.top

        style: ButtonStyle {
            background: Rectangle {

                implicitWidth:  control.pressed?topRect.width/6*1.1:topRect.width/6
                implicitHeight: control.pressed?topRect.height*1.7*1.1:topRect.height*1.7
                radius: 20



                Image {
                    id: settingsImage
                    source: "qrc:/images/settings.png"
                    anchors.fill: parent
                    mipmap: true

                }
            }

        }

        onClicked:  {
            settingsLoader.source = "SettingsWindow.qml"
        }
    }


    Button {
        id: calculate
        visible: true

        anchors.horizontalCenter: topRect.horizontalCenter
        anchors.top: displays.bottom
        anchors.topMargin: topRect.height/1.6

        style: ButtonStyle {
            background: Rectangle {
                color: "#82CC24"
                implicitWidth:  control.pressed?topRect.width/6*1.1:topRect.width/6
                implicitHeight: control.pressed?topRect.height*1.7*1.1:topRect.height*1.7
                radius: 9




                Image {
                    id: calculateImage
                    source: "images/calculate.png"
                    anchors.fill: parent
                    mipmap: true

                }
            }

        }

        onClicked: {
            inputUnitsUpdate()
            noteText.text = ""


            if(inputProperty1.text === "" || inputProperty2.text===""){
                noteText.text = "Inputs shouldn't be empty!"
                noteText.color = "red"
            }

            else {

                CallCppEngineJS.callCpp();

            }
            updateTitle();
        }

    }



    Button {
        id: quit
        anchors.horizontalCenter: calculate.horizontalCenter
        anchors.horizontalCenterOffset: topRect.width/4.6
        anchors.top: calculate.top

        style: ButtonStyle {
            background: Rectangle {
                color: "#25B7D3"
                implicitWidth:  control.pressed?topRect.width/6*1.1:topRect.width/6
                implicitHeight: control.pressed?topRect.height*1.7*1.1:topRect.height*1.7
                radius: 9

                Image {
                    id: quitImage
                    source: "images/quit.png"
                    anchors.fill: parent
                    mipmap: true

                }
            }

        }

        onClicked:  {
            Qt.quit();
        }
    }


    Button {
        id: vaporRegionProperties
        anchors.horizontalCenter: quit.horizontalCenter
        anchors.horizontalCenterOffset: topRect.width/5.5
        anchors.top: displays.bottom
        anchors.topMargin: topRect.height/1.23

        visible: (txRadioButton.checked || pxRadioButton.checked) ? true : false




        style: ButtonStyle {
            background: Rectangle {
                implicitWidth:  control.pressed?topRect.width/10*1.1:topRect.width/10
                implicitHeight: control.pressed?topRect.height*1.2*1.1:topRect.height*1.2
                radius: 10
                color: "#ACB327"

                Image {
                    id: rightArrow
                    source: "images/rightArrow.png"
                    anchors.fill: parent
                    mipmap: true

                }
            }

        }

        onClicked:  {
            inputUnitsUpdate()
            noteText.text = ""


            if(inputProperty1.text === "" || inputProperty2.text===""){
                noteText.text = "Inputs shouldn't be empty!"
                noteText.color = "red"
            }
            else {
            CallCppEngineVJS.callCppV()
            }

            updateTitle()
        }
    }




                                           //--------BUTTONS=END--------------\\




                      //---------NOTE ==START----------\\\

    Rectangle {
        id: note
        width: parent.width; height: topRect.height
        color: "darkorange"
        anchors.bottom: parent.bottom
        visible: true

        Text {
            id: noteText
            text: ""
            color: "black"
            font.bold: true
            font.italic: true
            clip: true
            anchors.centerIn: parent
        }
    }






}
