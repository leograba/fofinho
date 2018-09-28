import QtQuick 2.11
import QtQuick.Window 2.11

import "src/ui-qml"

Window {
    visible: true

    minimumWidth: 640
    minimumHeight: 480

    visibility: "Maximized"

    title: qsTr("Fofinho")

    TopBar{
        id: topbar
        width: parent.width
        anchors.top: parent.top
    }

    ActionField{
        id:actfield

        anchors.left: parent.left
        anchors.bottom: parent.bottom
    }

    CmdField{

        anchors.left: parent.left
        anchors.top: topbar.bottom
        anchors.bottom: actfield.top
    }

    ProgField{

        anchors.top: topbar.bottom
        anchors.left: actfield.right
        anchors.right: parent.right
        anchors.bottom: parent.bottom
    }

}
