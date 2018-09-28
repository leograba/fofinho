import QtQuick 2.11

ProgFieldForm {
    mouseArea1.onClicked: {
        if (mouse.button === Qt.LeftButton){
            mouseArea1.parent.color = 'red'
        }
    }
}
