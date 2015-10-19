function updateInputUnits() {

    if(ptRadioButton.checked){

        if(input1UnitsCheckBox.checked ){
            input1UnitsCheckBoxRect.color = "yellow"
        }
        else {
            input1UnitsCheckBoxRect.color = "white"
        }


        if(input2UnitsCheckBox.checked){
            input2UnitsCheckBoxRect.color = "yellow"
        }
        else {
            input2UnitsCheckBoxRect.color = "white"
        }


        if(input1UnitsCheckBox.checked && input2UnitsCheckBox.checked){
            input1= parseFloat(inputProperty1.text)*100000;
            input2 = parseFloat(inputProperty2.text) + 273.16;
        }

        else if(input1UnitsCheckBox.checked && !input2UnitsCheckBox.checked){
            input1= parseFloat(inputProperty1.text)*100000;
            input2 = parseFloat(inputProperty2.text);
        }
        else if(!input1UnitsCheckBox.checked && input2UnitsCheckBox.checked){
            input1 = parseFloat(inputProperty1.text);
            input2 = parseFloat(inputProperty2.text) + 273.16;
        }

        else {
            input1 = parseFloat(inputProperty1.text);
            input2 = parseFloat(inputProperty2.text);
        }
    }




    else if(puRadioButton.checked){

        if(input1UnitsCheckBox.checked ){
            input1UnitsCheckBoxRect.color = "yellow"
        }
        else {
            input1UnitsCheckBoxRect.color = "white"
        }
        input2UnitsCheckBoxRect.color = "white"


        if(input1UnitsCheckBox.checked){
            input1 = parseFloat(inputProperty1.text)*100000;
            input2 = parseFloat(inputProperty2.text)
        }

    }



    else if(psRadioButton.checked){

        if(input1UnitsCheckBox.checked ){
            input1UnitsCheckBoxRect.color = "yellow"
        }
        else {
            input1UnitsCheckBoxRect.color = "white"
        }

        input2UnitsCheckBoxRect.color = "white"


        if(input1UnitsCheckBox.checked){
            input1 = parseFloat(inputProperty1.text)*100000;
            input2 = parseFloat(inputProperty2.text)
        }

    }



    else if(phRadioButton.checked){

        if(input1UnitsCheckBox.checked ){
            input1UnitsCheckBoxRect.color = "yellow"
        }
        else {
            input1UnitsCheckBoxRect.color = "white"
        }

        input2UnitsCheckBoxRect.color = "white"


        if(input1UnitsCheckBox.checked){
            input1 = parseFloat(inputProperty1.text)*100000;
            input2 = parseFloat(inputProperty2.text)
        }

    }



    else if(tsRadioButton.checked){
        if(input1UnitsCheckBox.checked ){
            input1UnitsCheckBoxRect.color = "yellow"
        }
        else {
            input1UnitsCheckBoxRect.color = "white"
        }

        input2UnitsCheckBoxRect.color = "white"


        if(input1UnitsCheckBox.checked){
            input1 = parseFloat(inputProperty1.text) + 273.16;
            input2 = parseFloat(inputProperty2.text)
        }

    }



    else if(txRadioButton.checked){
        if(input1UnitsCheckBox.checked ){
            input1UnitsCheckBoxRect.color = "yellow"
        }
        else {
            input1UnitsCheckBoxRect.color = "white"
        }

        input2UnitsCheckBoxRect.color = "white"


        if(input1UnitsCheckBox.checked){
            input1 = parseFloat(inputProperty1.text) + 273.16;
            input2 = parseFloat(inputProperty2.text)
        }

    }



    else if(pxRadioButton.checked){
        if(input1UnitsCheckBox.checked ){
            input1UnitsCheckBoxRect.color = "yellow"
        }
        else {
            input1UnitsCheckBoxRect.color = "white"
        }

        input2UnitsCheckBoxRect.color = "white"


        if(input1UnitsCheckBox.checked){
            input1 = parseFloat(inputProperty1.text)*100000;
            input2 = parseFloat(inputProperty2.text)
        }

    }
}

