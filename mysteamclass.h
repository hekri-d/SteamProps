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

    double pressureV;
    double temperatureV;
    double specificEntropyV;
    double specificEnthalpyV;
    double specificInternalEnergyV;
    double specificVolumeV;
    double densityV;
    double heatCapacity_CpV;
    double heatCapacity_CvV;
    double qualityV;
    double thermalConductivityV;
    double viscosityV;

    double pressureL;
    double temperatureL;
    double specificEntropyL;
    double specificEnthalpyL;
    double specificInternalEnergyL;
    double specificVolumeL;
    double densityL;
    double heatCapacity_CpL;
    double heatCapacity_CvL;
    double qualityL;
    double thermalConductivityL;
    double viscosityL;

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

    Q_INVOKABLE double getSpecificEnthalpy(const int regionVariable);
    Q_INVOKABLE double getSpecificEntropy(const int regionVariable);
    Q_INVOKABLE double getInternalEnergy(const int regionVariable);
    Q_INVOKABLE double getSpecificVolume(const int regionVariable);
    Q_INVOKABLE double getDensity(const int regionVariable);
    Q_INVOKABLE double getHeatCapacity_Cp(const int regionVariable);
    Q_INVOKABLE double getHeatCapacity_Cv(const int regionVariable);
    Q_INVOKABLE double getQuality(const int regionVariable);
    Q_INVOKABLE double getThermalConductivity(const int regionVariable);
    Q_INVOKABLE double getViscosity(const int regionVariable);
    Q_INVOKABLE double getTemperature(const int regionVariable);
    Q_INVOKABLE double getPressure(const int regionVariable);


//    freesteam_se
signals:

public slots:
};

#endif // MYSTEAMCLASS_H
