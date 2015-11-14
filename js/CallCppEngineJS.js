function callCpp() {

    if(ptRadioButton.checked){
        fromMyClass.setState_PressureTemperature(input1, input2);

        propertyDisplay1Text.text = fromMyClass.getSpecificEntropy(setBySwitch).toFixed(2)
        propertyDisplay2Text.text = fromMyClass.getInternalEnergy(setBySwitch).toFixed(2)
        propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(setBySwitch).toFixed(2)

        specificVolumeDisplayText.text = fromMyClass.getSpecificVolume().toFixed(5)
        specificDensityDisplayText.text = fromMyClass.getDensity().toFixed(5)
        heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(setBySwitch).toFixed(2)
        heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(setBySwitch).toFixed(2)
        thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity().toFixed(5)
        qualityDisplayText.text = fromMyClass.getQuality().toFixed(0)
        viscosityDisplayText.text = fromMyClass.getViscosity().toFixed(8)

    }
    else if(puRadioButton.checked){
        fromMyClass.setState_PressureSpecificInternalEnergy(input1, input2);

        propertyDisplay1Text.text = fromMyClass.getTemperature().toFixed(2)
        propertyDisplay2Text.text = fromMyClass.getSpecificEntropy(setBySwitch).toFixed(2)
        propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(setBySwitch).toFixed(2)

        specificVolumeDisplayText.text = fromMyClass.getSpecificVolume().toFixed(5)
        specificDensityDisplayText.text = fromMyClass.getDensity().toFixed(5)
        heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(setBySwitch).toFixed(2)
        heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(setBySwitch).toFixed(2)
        thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity().toFixed(5)
        qualityDisplayText.text = fromMyClass.getQuality().toFixed(0)
        viscosityDisplayText.text = fromMyClass.getViscosity().toFixed(8)

    }

    else if(psRadioButton.checked){
        fromMyClass.setState_PressureSpecificEntropy(input1, input2);

        propertyDisplay1Text.text = fromMyClass.getTemperature().toFixed(2);
        propertyDisplay2Text.text = fromMyClass.getInternalEnergy(setBySwitch).toFixed(2);
        propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(setBySwitch).toFixed(2)

        specificVolumeDisplayText.text = fromMyClass.getSpecificVolume().toFixed(5)
        specificDensityDisplayText.text = fromMyClass.getDensity().toFixed(5)
        heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(setBySwitch).toFixed(2)
        heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(setBySwitch).toFixed(2)
        thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity().toFixed(5)
        qualityDisplayText.text = fromMyClass.getQuality().toFixed(0)
        viscosityDisplayText.text = fromMyClass.getViscosity().toFixed(8)
    }

    else if(tsRadioButton.checked){
        fromMyClass.setState_TemperatureSpecificEntropy(input1, input2);

        propertyDisplay1Text.text = fromMyClass.getPressure(setBySwitch).toFixed(2);
        propertyDisplay2Text.text = fromMyClass.getInternalEnergy(setBySwitch).toFixed(2);
        propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(setBySwitch).toFixed(2)

        specificVolumeDisplayText.text = fromMyClass.getSpecificVolume().toFixed(5)
        specificDensityDisplayText.text = fromMyClass.getDensity().toFixed(5)
        heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(setBySwitch).toFixed(2)
        heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(setBySwitch).toFixed(2)
        thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity().toFixed(5)
        qualityDisplayText.text = fromMyClass.getQuality().toFixed(0)
        viscosityDisplayText.text = fromMyClass.getViscosity().toFixed(8)
    }

    else if(phRadioButton.checked){
        fromMyClass.setState_PressureSpecificEnthalpy(input1, input2);

        propertyDisplay1Text.text = fromMyClass.getTemperature().toFixed(2);
        propertyDisplay2Text.text = fromMyClass.getInternalEnergy(setBySwitch).toFixed(2);
        propertyDisplay3Text.text = fromMyClass.getSpecificEnthalpy(setBySwitch).toFixed(2)

        specificVolumeDisplayText.text = fromMyClass.getSpecificVolume().toFixed(5)
        specificDensityDisplayText.text = fromMyClass.getDensity().toFixed(5)
        heatCapacityCpDisplayText.text = fromMyClass.getHeatCapacity_Cp(setBySwitch).toFixed(2)
        heatCapacityCvDisplayText.text = fromMyClass.getHeatCapacity_Cv(setBySwitch).toFixed(2)
        thermalConductivityDisplayText.text = fromMyClass.getThermalConductivity().toFixed(5)
        qualityDisplayText.text = fromMyClass.getQuality().toFixed(0)
        viscosityDisplayText.text = fromMyClass.getViscosity().toFixed(8)
    }

    else if(txRadioButton.checked){
        fromMyClass.setState_TemperatureQuality(input1, input2);

        propertyDisplay1Text.text = fromMyClass.getPressure(setBySwitch).toFixed(2);
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
        fromMyClass.setState_PressureQuality(input1, input2);

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

