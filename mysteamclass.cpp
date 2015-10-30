#include "mysteamclass.h"

#include <QQmlComponent>
#include <QQmlProperty>


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

}

                                             //-----------GETTERS----------\\

                                                  

double MySteamClass::getSpecificEnthalpy(bool addKilo){

    if(addKilo == true){return specificEnthalpy/1000; }
    else { return specificEnthalpy; }
}

 double MySteamClass::getSpecificEntropy(bool addKilo){

     if(addKilo == true){ return specificEntropy/1000; }
     else { return specificEntropy; }
 }

 double MySteamClass::getInternalEnergy(bool addKilo){

     if(addKilo == true){ return specificInternalEnergy/1000;}
     else {return specificInternalEnergy; }
 }

 double MySteamClass::getSpecificVolume( /*bool addKilo*/){

//     if(addKilo == true){ return specificVolume/1000; }
     return specificVolume;
 }

 double MySteamClass::getHeatCapacity_Cp(bool addKilo){

     if(addKilo == true){ return heatCapacity_Cp/1000; }
     else {return  heatCapacity_Cp; }
 }

 double MySteamClass::getHeatCapacity_Cv(bool addKilo){

     if(addKilo == true){ return heatCapacity_Cv/1000; }
     else {return  heatCapacity_Cv; }
 }

 double MySteamClass::getQuality(){
     return quality;
 }

 double MySteamClass::getThermalConductivity(){

     return thermalConductivity;
 }

 double MySteamClass::getViscosity(){
     return viscosity;
 }

double MySteamClass::getDensity(){
    return density;
}
double MySteamClass::getTemperature(){
    return temperature;
}

double MySteamClass::getPressure(bool addKilo){

    if (addKilo == true){ return pressure/1000; }
    else { return pressure; }
}
