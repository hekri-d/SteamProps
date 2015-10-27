function callCppL() {

     if(txRadioButton.checked){
        fromMyClass.setState_TemperatureQuality(input1, 0.0);

         propertyDisplay1Text.text = fromMyClass.getPressure().toFixed(2);
         propertyDisplay2Text.text = fromMyClass.getInternalEnergy(setBySwitch).toFixed(2);
         propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(setBySwitch).toFixed(2)

         specificVolumeDisplayText.text = fromMyClass.getSpecificVolume().toFixed(5)
         specificDensityDisplayText.text = fromMyClass.getDensity().toFixed(5)
         heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(setBySwitch).toFixed(2)
         heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(setBySwitch).toFixed(2)
         thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity().toFixed(5)
         qualityDisplayText.text = fromMyClass.getSpecificEntropy(setBySwitch).toFixed(2)   //need to change name from quality to property3
         viscosityDisplayText.text = fromMyClass.getViscosity().toFixed(8)
    }

    else if(pxRadioButton.checked){
        fromMyClass.setState_PressureQuality(input1, 0.0);

         propertyDisplay1Text.text = fromMyClass.getSpecificEntropy(setBySwitch).toFixed(2);
         propertyDisplay2Text.text = fromMyClass.getInternalEnergy(setBySwitch).toFixed(2);
         propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(setBySwitch).toFixed(2)

         specificVolumeDisplayText.text = fromMyClass.getSpecificVolume().toFixed(5)
         specificDensityDisplayText.text = fromMyClass.getDensity().toFixed(5)
         heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(setBySwitch).toFixed(2)
         heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(setBySwitch).toFixed(2)
         thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity().toFixed(5)
         qualityDisplayText.text = fromMyClass.getTemperature().toFixed(2)
         viscosityDisplayText.text = fromMyClass.getViscosity().toFixed(8)
    }
}

