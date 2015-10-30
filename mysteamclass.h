#ifndef MYSTEAMCLASS_H
#define MYSTEAMCLASS_H

#include <QObject>
#include <QDebug>

#include <steam_ps.h>
#include <steam_pT.h>
#include <region4.h>
#include <steam_ph.h>
#include <steam_pv.h>
#include <steam_Ts.h>
#include <steam_Tx.h>
#include <steam.h>




class MySteamClass : public QObject
{
    Q_OBJECT
public:
    explicit MySteamClass(QObject *parent = 0);


private:
    double pressure;
    double temperature;
    double specificEntropy;
    double specificEnthalpy;
    double specificInternalEnergy;
    double specificVolume;
    double density;
    double heatCapacity_Cp;
    double heatCapacity_Cv;
    double quality;
    double thermalConductivity;
    double viscosity;

    SteamState state;

public:

    Q_INVOKABLE void setState_PressureTemperature(double pres, double temp);
    Q_INVOKABLE void setState_PressureSpecificInternalEnergy(double pres, double intEn);
    Q_INVOKABLE void setState_PressureSpecificEntropy(double pres, double entrop);
    Q_INVOKABLE void setState_PressureSpecificEnthalpy(double pres, double enthalp);
    Q_INVOKABLE void setState_PressureSpecificVolume(double pres, double enthalp);
    Q_INVOKABLE void setState_TemperatureSpecificEntropy(double temp, double entrop);
    Q_INVOKABLE void setState_TemperatureQuality(double temp, double qual);
    Q_INVOKABLE void setState_PressureQuality(double pres, double qual);

    Q_INVOKABLE double getSpecificEnthalpy(bool addKilo);
    Q_INVOKABLE double getSpecificEntropy(bool addKilo);
    Q_INVOKABLE double getInternalEnergy(bool addKilo);
    Q_INVOKABLE double getSpecificVolume();
    Q_INVOKABLE double getDensity();
    Q_INVOKABLE double getHeatCapacity_Cp(bool addKilo);
    Q_INVOKABLE double getHeatCapacity_Cv(bool addKilo);
    Q_INVOKABLE double getQuality();
    Q_INVOKABLE double getThermalConductivity();
    Q_INVOKABLE double getViscosity();
    Q_INVOKABLE double getTemperature();
    Q_INVOKABLE double getPressure(bool addKilo);


//    freesteam_se
signals:

public slots:
};

#endif // MYSTEAMCLASS_H
