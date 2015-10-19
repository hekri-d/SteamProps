#include <QGuiApplication>
#include <QQmlApplicationEngine>
#include <QtQml>
#include "mysteamclass.h"

#include <QDebug>

#include <steam_ps.h>
#include <steam_pT.h>
#include <region4.h>
#include <steam_ph.h>
#include <steam_pv.h>
#include <steam_Ts.h>
#include <steam_Tx.h>
#include <steam.h>


using namespace std;

int main(int argc, char *argv[])
{
    qmlRegisterType<MySteamClass>("MySteamClass",1,0,"MySteamClass");

    QGuiApplication app(argc, argv);

    QQmlApplicationEngine engine;
    engine.load(QUrl(QStringLiteral("qrc:/main.qml")));

    SteamState statez = freesteam_set_Tx(372,1.0);

    double statezz = freesteam_h(statez);

    MySteamClass entropi;


//    qDebug()<<"Fuck you : "<<statezz<<endl;
//    qDebug()<<"Fuck you again: "<<entropi.getSpecificEnthalpy() <<endl;

    return app.exec();
}
