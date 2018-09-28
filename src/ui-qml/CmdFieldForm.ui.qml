import QtQuick 2.11

Item {
    property int mg: 10
    width: 250
    height: 50

    Rectangle {
        id: cmdfield
        color: "#c1b9b9"
        anchors.fill: parent
        anchors.rightMargin: mg / 2
        anchors.leftMargin: mg
        anchors.topMargin: mg / 2
        anchors.bottomMargin: mg / 2
        radius: mg / 2
    }
}
