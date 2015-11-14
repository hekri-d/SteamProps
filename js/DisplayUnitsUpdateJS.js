
function displayUnitsUpdateJS() {


    if(ptRadioButton.checked ){


        if (setBySwitch == true) {
            unit1Text.text = "kJ/kgK"
            unit2Text.text = "kJ/kg"
            unit3Text.text = "kJ/kg"
            unit9Text.text = "%"

            unit6Text.text = "kJ/kg"
            unit7Text.text = "kJ/kg"
        }

        else {
            unit1Text.text = "J/kgK"
            unit2Text.text = "J/kg"
            unit3Text.text = "J/kg"
            unit9Text.text = "%"

            unit6Text.text = "J/kg"
            unit7Text.text = "J/kg"

        }


    }

    else if(psRadioButton.checked){

        if (setBySwitch == true) {
            unit1Text.text = "kJ/kgK"
            unit2Text.text = "kJ/kg"
            unit3Text.text = "kJ/kg"
            unit9Text.text = "%"

            unit6Text.text = "kJ/kg"
            unit7Text.text = "kJ/kg"
        }

        else {
            unit1Text.text = "K"
            unit2Text.text = "J/kg"
            unit3Text.text = "J/kg"
            unit9Text.text = "%"

            unit6Text.text = "J/kg"
            unit7Text.text = "J/kg"
        }
    }

    else if(phRadioButton.checked){

        if (setBySwitch == true) {
            unit1Text.text = "kJ/kgK"
            unit2Text.text = "kJ/kg"
            unit3Text.text = "kJ/kg"
            unit9Text.text = "%"

            unit6Text.text = "kJ/kg"
            unit7Text.text = "kJ/kg"
        }

        else {
            unit1Text.text = "K"
            unit2Text.text = "J/kg"
            unit3Text.text = "J/kgK"
            unit9Text.text = "%"

            unit6Text.text = "J/kg"
            unit7Text.text = "J/kg"

        }
    }
    else if(puRadioButton.checked){

        if (setBySwitch == true) {
            unit1Text.text = "kJ/kgK"
            unit2Text.text = "kJ/kg"
            unit3Text.text = "kJ/kg"
            unit9Text.text = "%"

            unit6Text.text = "kJ/kg"
            unit7Text.text = "kJ/kg"
        }

        else {
            unit1Text.text = "K"
            unit2Text.text = "J/kgK"
            unit3Text.text = "J/kg"
            unit9Text.text = "%"

            unit6Text.text = "J/kg"
            unit7Text.text = "J/kg"
        }
    }

    else if(tsRadioButton.checked){

        if (setBySwitch == true) {
            unit1Text.text = "kJ/kgK"
            unit2Text.text = "kJ/kg"
            unit3Text.text = "kJ/kg"
            unit9Text.text = "%"

            unit6Text.text = "kJ/kg"
            unit7Text.text = "kJ/kg"
        }

        else {
            unit1Text.text = "kPa"
            unit2Text.text = "J/kg"
            unit3Text.text = "J/kg"
            unit9Text.text = "%"

            unit6Text.text = "J/kg"
            unit7Text.text = "J/kg"
        }
    }

    else if(txRadioButton.checked){

        if (setBySwitch == true) {
            unit1Text.text = "kPa"
            unit2Text.text = "kJ/kg"
            unit3Text.text = "kJ/kg"
            unit9Text.text = "J/kg"

            unit6Text.text = "kJ/kg"
            unit7Text.text = "kJ/kg"
        }

        else {
            unit1Text.text = "Pa"
            unit2Text.text = "J/kg"
            unit3Text.text = "J/kg"
            unit9Text.text = "J/kgK"

            unit6Text.text = "J/kg"
            unit7Text.text = "J/kg"
        }
    }
    else if(pxRadioButton.checked){


        if (setBySwitch == true) {
            unit1Text.text = "kJ/kgK"   //fix it
            unit2Text.text = "kJ/kg"
            unit3Text.text = "kJ/kg"
            unit9Text.text = "K"

            unit6Text.text = "kJ/kg"
            unit7Text.text = "kJ/kg"
        }

        else {
            unit1Text.text = "J/kgK"
            unit2Text.text = "J/kg"
            unit3Text.text = "J/kg"
            unit9Text.text = "K"

            unit6Text.text = "J/kg"
            unit7Text.text = "J/kg"

        }

    }
}




