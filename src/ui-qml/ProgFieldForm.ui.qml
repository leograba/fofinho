import QtQuick 2.11

Item {
    property int mg: 10
    property alias mouseArea1: mouseArea1

    Rectangle {
        id: scratchpad
        color: "#c1b9b9"
        anchors.fill: parent
        anchors.rightMargin: mg
        anchors.leftMargin: mg / 2
        anchors.topMargin: mg / 2
        anchors.bottomMargin: mg
        radius: mg / 2

        Rectangle {
            id: rectangle1
            x: 35
            y: 36
            width: 200
            height: 47
            color: "#204a87"

            MouseArea {
                id: mouseArea1
                anchors.fill: parent

                drag.target: parent
                drag.axis: Drag.XAndYAxis
                drag.minimumX: 0
                drag.maximumX: scratchpad.width - width
                drag.minimumY: 0
                drag.maximumY: scratchpad.height - height
            }
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
