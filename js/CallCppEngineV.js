function callCppV() {

    if(txRadioButton.checked){
       fromMyClass.setState_TemperatureQuality(input1, input2);

       propertyDisplay1Text.text = fromMyClass.getPressure(2).toFixed(2);
       propertyDisplay2Text.text = fromMyClass.getInternalEnergy(2).toFixed(2);
       propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(2).toFixed(2)

       specificVolumeDisplayText.text = fromMyClass.getSpecificVolume(2).toFixed(5)
       specificDensityDisplayText.text = fromMyClass.getDensity(2).toFixed(5)
       heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(2).toFixed(2)
       heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(2).toFixed(2)
       thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity(2).toFixed(5)
       qualityDisplayText.text = fromMyClass.getSpecificEntropy(2).toFixed(2)   //need to change name from quality to property3
       viscosityDisplayText.text = fromMyClass.getViscosity(2).toFixed(8)
   }

   else if(pxRadioButton.checked){
       fromMyClass.setState_PressureQuality(input1, input2);

       propertyDisplay1Text.text = fromMyClass.getTemperature(2).toFixed(2);
       propertyDisplay2Text.text = fromMyClass.getInternalEnergy(2).toFixed(2);
       propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(2).toFixed(2)

       specificVolumeDisplayText.text = fromMyClass.getSpecificVolume(2).toFixed(5)
       specificDensityDisplayText.text = fromMyClass.getDensity(2).toFixed(5)
       heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(2).toFixed(2)
       heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(2).toFixed(2)
       thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity(2).toFixed(5)
       qualityDisplayText.text = fromMyClass.getSpecificEnthalpy(2).toFixed(2)
       viscosityDisplayText.text = fromMyClass.getViscosity(2).toFixed(8)
   }
}

