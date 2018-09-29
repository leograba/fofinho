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

        MouseArea {
            // Enable to drag the scratchpad area
            anchors.fill: parent

            drag.target: scratchpadArea
            cursorShape: Qt.PointingHandCursor
            acceptedButtons: Qt.MiddleButton
        }

        Rectangle {
            // dummy rectangle to clip the "scratchpad area"
            //out of the round corners of "scratchpad"
            color: "#c1b9b9"
            anchors.fill: parent
            anchors.rightMargin: mg / 2
            anchors.leftMargin: mg / 2
            anchors.topMargin: mg / 2
            anchors.bottomMargin: mg / 2
            clip: true

            Rectangle {
                // Scratchpad area
                id: scratchpadArea
                width: parent.width * 2
                height: parent.height * 2
                color: 'transparent'

                Rectangle {
                    id: rectangle1
                    x: 35
                    y: 36
                    width: 200
                    height: 47
                    color: "#204a87"

                    MouseArea {
                        id: mouseArea1
                        anchors.fill: rectangle1
                        cursorShape: Qt.ClosedHandCursor
                        propagateComposedEvents: true

                        drag.target: parent
                        drag.axis: Drag.XAndYAxis
                        drag.minimumX: 0
                        drag.maximumX: scratchpadArea.width - width
                        drag.minimumY: 0
                        drag.maximumY: scratchpadArea.height - height
                    }
                }
            }
        }
    }
}

/*##^## Designer {
    D{i:0;autoSize:true;height:480;width:640}
}
 ##^##*/
