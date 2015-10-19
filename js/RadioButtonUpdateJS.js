
function updateRadioButtons() {

    if(ptRadioButton.checked){
        inputLabel1.text = "Pressure"
        inputLabel2.text = "Temperature"

        outputLabel1.text = "Entropy"
        outputLabel2.text = "In. Energy"
        outputLabel3.text = "Enthalpy"
        outputLabel9.text = "Quality"

        unit1Text.text = "J/kgK"
        unit2Text.text = "J/kg"
        unit3Text.text = "J/kg"
        unit9Text.text = "%"


        inputProperty1.placeholderText = "Default is Pa"
        inputProperty2.placeholderText = "Default is K"

        input1UnitsCheckBoxText.text = "bar"
        input2UnitsCheckBoxText.text = "'C"

        noteText.text = ""

        liquidVaporNote.text = ""


    }

    else if(psRadioButton.checked){
        inputLabel1.text = "Pressure"
        inputLabel2.text = "Entropy"

        outputLabel1.text = "Temperature"
        outputLabel2.text = "Int. Energy"
        outputLabel3.text = "Enthalpy"
        outputLabel9.text = "Quality"

        unit1Text.text = "K"
        unit2Text.text = "J/kg"
        unit3Text.text = "J/kg"
        unit9Text.text = "%"

        inputProperty1.placeholderText = "Default is Pa"
        inputProperty2.placeholderText = "Default is J/kgK"
                                                                //UNITS
        input1UnitsCheckBoxText.text = "bar"
        input2UnitsCheckBoxText.text = "J/kgK"

        input2UnitsCheckBoxRect.color = "white"

        noteText.text = ""

        liquidVaporNote.text = ""

    }

    else if(phRadioButton.checked){
        inputLabel1.text = "Pressure"
        inputLabel2.text = "Enthalpy"

        outputLabel1.text = "Temperature"
        outputLabel2.text = "Int. Energy"
        outputLabel3.text = "Entropy"
        outputLabel9.text = "Quality"

        unit1Text.text = "K"
        unit2Text.text = "J/kg"
        unit3Text.text = "J/kgK"
        unit9Text.text = "%"

        inputProperty1.placeholderText = "Default is Pa"
        inputProperty2.placeholderText = "Default is J/kg"

        input1UnitsCheckBoxText.text = "bar"
        input2UnitsCheckBoxText.text = "J/kg"

        input2UnitsCheckBoxRect.color = "white"

        noteText.text = ""

        liquidVaporNote.text = ""


    }
    else if(puRadioButton.checked){
        inputLabel1.text = "Pressure"
        inputLabel2.text = "Int. Energy"

        outputLabel1.text = "Temperature"
        outputLabel2.text = "Entropy"
        outputLabel3.text = "Enthalpy"
        outputLabel9.text = "Quality"

        unit1Text.text = "K"
        unit2Text.text = "J/kgK"
        unit3Text.text = "J/kg"
        unit9Text.text = "%"

        inputProperty1.placeholderText = "Default is Pa"
        inputProperty2.placeholderText = "Default is J/kg"

        input1UnitsCheckBoxText.text = "bar"
        input2UnitsCheckBoxText.text = "J/kg"

        input2UnitsCheckBoxRect.color = "white"

        noteText.text = ""

        liquidVaporNote.text = ""
    }

    else if(tsRadioButton.checked){
        inputLabel1.text = "Temperature"
        inputLabel2.text = "Entropy"

        outputLabel1.text = "Pressure"
        outputLabel2.text = "Int. Energy"
        outputLabel3.text = "Enthalpy"
        outputLabel9.text = "Quality"

        unit1Text.text = "Pa"
        unit2Text.text = "J/kg"
        unit3Text.text = "J/kg"
        unit9Text.text = "%"

        inputProperty1.placeholderText = "Default is K"
        inputProperty2.placeholderText = "Default is J/kgK"

        input1UnitsCheckBoxText.text = "'C"
        input2UnitsCheckBoxText.text = "J/kgK"

        input2UnitsCheckBoxRect.color = "white"

        noteText.text = ""

        liquidVaporNote.text = ""

    }

    else if(txRadioButton.checked){
        inputLabel1.text = "Temperature"
        inputLabel2.text = "Quality"

        outputLabel1.text = "Pressure"
        outputLabel2.text = "Int. Energy"
        outputLabel3.text = "Enthalpy"
        outputLabel9.text = "Entropy"

        unit1Text.text = "Pa"
        unit2Text.text = "J/kg"
        unit3Text.text = "J/kg"
        unit9Text.text = "J/kgK"

        inputProperty1.placeholderText = "Default is K"
        inputProperty2.placeholderText = "%"

        input1UnitsCheckBoxText.text = "'C"
        input2UnitsCheckBoxText.text = "%"

        input2UnitsCheckBoxRect.color = "white"

        noteText.text = "Use Arrow Buttons for Liquid/Vapor region Properties!"
        noteText.font.pixelSize = 13
        noteText.color = "black"

    }
    else if(pxRadioButton.checked){
        inputLabel1.text = "Pressure"
        inputLabel2.text = "Quality"

        outputLabel1.text = "Entropy"
        outputLabel2.text = "In. Energy"
        outputLabel3.text = "Enthalpy"
        outputLabel9.text = "Temperature"

        unit1Text.text = "J/kgK"
        unit2Text.text = "J/kg"
        unit3Text.text = "J/kg"
        unit9Text.text = "K"

        inputProperty1.placeholderText = "Default is Pa"
        inputProperty2.placeholderText = "%"

        input1UnitsCheckBoxText.text = "bar"
        input2UnitsCheckBoxText.text = "%"

        input2UnitsCheckBoxRect.color = "white"

        noteText.text = "Use Arrow Buttons for Liquid/Vapor region Properties!"
        noteText.font.pixelSize = 13
        noteText.color = "black"

    }
}

