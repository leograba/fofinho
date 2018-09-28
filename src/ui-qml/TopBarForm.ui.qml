import QtQuick 2.11

Item {

    property int mg: 10
    height: 50

    Rectangle {
        id: topbar
        color: "#c1b9b9"
        anchors.fill: parent
        anchors.rightMargin: mg
        anchors.leftMargin: mg
        anchors.topMargin: mg
        anchors.bottomMargin: mg / 2
        radius: mg / 2
    }
}
