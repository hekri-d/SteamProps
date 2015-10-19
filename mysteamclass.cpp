#include "mysteamclass.h"


MySteamClass::MySteamClass(QObject *parent) : QObject(parent)
{

}


void MySteamClass::setState_PressureTemperature(double pres, double temp){
    pressure = pres ;    temperature = temp;

    state = freesteam_set_pT(pres, temp);

    specificEnthalpy = freesteam_h(state);              //set the properties
    specificInternalEnergy = freesteam_u(state);
    specificVolume = freesteam_v(state);
    specificEntropy = freesteam_s(state);
    density= freesteam_rho(state);
    heatCapacity_Cp=freesteam_cp(state);
    heatCapacity_Cv= freesteam_cv(state);
    quality= freesteam_x(state);
    thermalConductivity= freesteam_k(state);
    viscosity= freesteam_mu(state);
}

void MySteamClass::setState_PressureSpecificInternalEnergy(double pres, double intEn){

    pressure = pres;  specificInternalEnergy = intEn;

    state =freesteam_set_ps(pres,intEn);

    specificEnthalpy = freesteam_h(state);              //set the properties
    temperature = freesteam_T(state);
    specificEntropy = freesteam_s(state);
    specificVolume = freesteam_v(state);
    density= freesteam_rho(state);
    heatCapacity_Cp=freesteam_cp(state);
    heatCapacity_Cv= freesteam_cv(state);
    quality= freesteam_x(state);
    thermalConductivity= freesteam_k(state);
    viscosity= freesteam_mu(state);
}

void MySteamClass::setState_PressureSpecificEntropy(double pres, double entrop){
     pressure = pres;  specificEntropy = entrop;

     state = freesteam_set_ps(pressure, specificEntropy);

     specificInternalEnergy = freesteam_u(state);
     specificEnthalpy = freesteam_h(state);
     temperature = freesteam_T(state);
     specificVolume = freesteam_v(state);
     density= freesteam_rho(state);
     heatCapacity_Cp=freesteam_cp(state);
     heatCapacity_Cv= freesteam_cv(state);
     quality= freesteam_x(state);
     thermalConductivity= freesteam_k(state);
     viscosity= freesteam_mu(state);
}



void MySteamClass::setState_PressureSpecificEnthalpy(double pres, double enthalp){
    pressure = pres; specificEnthalpy =  enthalp;

    state = freesteam_set_ph(pres, enthalp);

    temperature = freesteam_T(state);
    specificInternalEnergy = freesteam_u(state);
    specificVolume = freesteam_v(state);
    specificEntropy = freesteam_s(state);
    density= freesteam_rho(state);
    heatCapacity_Cp=freesteam_cp(state);
    heatCapacity_Cv= freesteam_cv(state);
    quality= freesteam_x(state);
    thermalConductivity= freesteam_k(state);
    viscosity= freesteam_mu(state);
}

void MySteamClass::setState_PressureSpecificVolume(double pres, double vol){
    pressure = pres;  specificVolume = vol;

    state = freesteam_set_pv(pressure,specificVolume);

    specificEnthalpy = freesteam_h(state);              //set the properties
    specificInternalEnergy = freesteam_u(state);
    temperature = freesteam_T(state);
    specificEntropy = freesteam_s(state);
    density= freesteam_rho(state);
    heatCapacity_Cp=freesteam_cp(state);
    heatCapacity_Cv= freesteam_cv(state);
    quality= freesteam_x(state);
    thermalConductivity= freesteam_k(state);
    viscosity= freesteam_mu(state);
}

void MySteamClass::setState_TemperatureSpecificEntropy(double temp, double entrop){
    temperature = temp;   specificEntropy = entrop;

    state = freesteam_set_Ts(temperature, specificEntropy);

    pressure = freesteam_p(state);
    specificEnthalpy = freesteam_h(state);              //set the properties
    specificInternalEnergy = freesteam_u(state);
    specificVolume = freesteam_v(state);
    density= freesteam_rho(state);
    heatCapacity_Cp=freesteam_cp(state);
    heatCapacity_Cv= freesteam_cv(state);
    quality= freesteam_x(state);
    thermalConductivity= freesteam_k(state);
    viscosity= freesteam_mu(state);
}

void MySteamClass::setState_TemperatureQuality(double temp, double qual){
    temperature = temp;  quality = qual;

    state = freesteam_set_Tx(temp, qual);


    pressure = freesteam_p(state);
    specificEnthalpy = freesteam_h(state);              //set the properties
    specificInternalEnergy = freesteam_u(state);
    specificVolume = freesteam_v(state);
    density= freesteam_rho(state);
    heatCapacity_Cp=freesteam_cp(state);
    heatCapacity_Cv= freesteam_cv(state);
    thermalConductivity= freesteam_k(state);
    specificEntropy = freesteam_s(state);
    viscosity= freesteam_mu(state);


    state = freesteam_set_Tx(temp, 0.0);

    pressureL = freesteam_p(state);
    specificEnthalpyL = freesteam_h(state);              //set the properties
    specificInternalEnergyL = freesteam_u(state);
    specificVolumeL = freesteam_v(state);
    densityL= freesteam_rho(state);
    heatCapacity_CpL=freesteam_cp(state);
    heatCapacity_CvL= freesteam_cv(state);
    thermalConductivityL= freesteam_k(state);
    specificEntropyL = freesteam_s(state);
    viscosityL= freesteam_mu(state);

    state = freesteam_set_Tx(temp, 1.0);

    pressureV = freesteam_p(state);
    specificEnthalpyV = freesteam_h(state);              //set the properties
    specificInternalEnergyV = freesteam_u(state);
    specificVolumeV = freesteam_v(state);
    densityV= freesteam_rho(state);
    heatCapacity_CpV=freesteam_cp(state);
    heatCapacity_CvV= freesteam_cv(state);
    thermalConductivityV= freesteam_k(state);
    specificEntropyV = freesteam_s(state);
    viscosityV= freesteam_mu(state);

}


void MySteamClass::setState_PressureQuality(double pres, double qual){
    pressure = pres;  quality = qual;

    pres = freesteam_region4_Tsat_p (pres);

    state = freesteam_set_Tx(pres, qual);


    specificEnthalpy = freesteam_h(state);              //set the properties
    specificInternalEnergy = freesteam_u(state);
    specificVolume = freesteam_v(state);
    density= freesteam_rho(state);
    heatCapacity_Cp=freesteam_cp(state);
    heatCapacity_Cv= freesteam_cv(state);
    thermalConductivity= freesteam_k(state);
    specificEntropy = freesteam_s(state);
    viscosity= freesteam_mu(state);
    temperature = freesteam_T(state);


    state = freesteam_set_Tx(pres, 0.0);

    specificEnthalpyL = freesteam_h(state);              //set the properties
    specificInternalEnergyL = freesteam_u(state);
    specificVolumeL = freesteam_v(state);
    densityL= freesteam_rho(state);
    heatCapacity_CpL=freesteam_cp(state);
    heatCapacity_CvL= freesteam_cv(state);
    thermalConductivityL= freesteam_k(state);
    specificEntropyL = freesteam_s(state);
    viscosityL= freesteam_mu(state);
    temperature = freesteam_T(state);


    state = freesteam_set_Tx(pres, 1.0);

    specificEnthalpyV = freesteam_h(state);              //set the properties
    specificInternalEnergyV = freesteam_u(state);
    specificVolumeV = freesteam_v(state);
    densityV= freesteam_rho(state);
    heatCapacity_CpV=freesteam_cp(state);
    heatCapacity_CvV= freesteam_cv(state);
    thermalConductivityV= freesteam_k(state);
    specificEntropyV = freesteam_s(state);
    viscosityV= freesteam_mu(state);
    temperature = freesteam_T(state);



}

                                             //-----------GETTERS----------\\

                                                   /* regionVariable =0 --> Liquid;
                                                      regionVariable =1 --> Mixed;
                                                      regionVariable =2 --> Vapor  */

double MySteamClass::getSpecificEnthalpy(const int regionVariable){

    switch (regionVariable) {
    case 0:
        return specificEnthalpyL;
        break;
    case 1:
        return specificEnthalpy;
        break;
    case 2:
        return specificEnthalpyV;
    }

}


 double MySteamClass::getSpecificEntropy(const int regionVariable){

     switch (regionVariable) {
     case 0:
         return specificEntropyL;
         break;
     case 1:
         return specificEntropy;
         break;
     case 2:
         return specificEntropyV;
     }

 }

 double MySteamClass::getInternalEnergy(const int regionVariable){

     switch (regionVariable) {
     case 0:
         return specificInternalEnergyL;
         break;
     case 1:
         return specificInternalEnergy;
         break;
     case 2:
         return specificInternalEnergyV;
     }
 }

 double MySteamClass::getSpecificVolume(const int regionVariable){

     switch (regionVariable) {
     case 0:
         return specificVolumeL;
         break;
     case 1:
         return specificVolume;
         break;
     case 2:
         return specificVolumeV;
     }
 }

 double MySteamClass::getHeatCapacity_Cp(const int regionVariable){

     switch (regionVariable) {
     case 0:
         return heatCapacity_CpL;
         break;
     case 1:
         return heatCapacity_Cp;
         break;
     case 2:
         return heatCapacity_CpV;
     }
 }

 double MySteamClass::getHeatCapacity_Cv(const int regionVariable){

     switch (regionVariable) {
     case 0:
         return heatCapacity_CvL;
         break;
     case 1:
         return heatCapacity_Cv;
         break;
     case 2:
         return heatCapacity_CvV;
     }
 }

 double MySteamClass::getQuality(const int regionVariable){

     switch (regionVariable) {
     case 0:
         return qualityL;
         break;
     case 1:
         return quality;
         break;
     case 2:
         return qualityV;
     }
 }

 double MySteamClass::getThermalConductivity(const int regionVariable){

     switch (regionVariable) {
     case 0:
         return thermalConductivityL;
         break;
     case 1:
         return thermalConductivity;
         break;
     case 2:
         return thermalConductivityV;
     }
 }

 double MySteamClass::getViscosity(const int regionVariable){

     switch (regionVariable) {
     case 0:
         return viscosityL;
         break;
     case 1:
         return viscosity;
         break;
     case 2:
         return viscosityV;
     }
 }
double MySteamClass::getDensity(const int regionVariable){

    switch (regionVariable) {
    case 0:
        return densityL;
        break;
    case 1:
        return density;
        break;
    case 2:
        return densityV;
    }
}
double MySteamClass::getTemperature(const int regionVariable){

    switch (regionVariable) {
    case 0:
        return temperatureL;
        break;
    case 1:
        return temperature;
        break;
    case 2:
        return temperatureV;
    }

}
double MySteamClass::getPressure(const int regionVariable){

    switch (regionVariable) {
    case 0:
        return pressureL;
        break;
    case 1:
        return pressure;
        break;
    case 2:
        return pressureV;
    }
}
