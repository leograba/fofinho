import QtQuick 2.11

ProgFieldForm {
    mouseArea1.onClicked: {
        if (mouse.button === Qt.LeftButton){
            mouseArea1.parent.color = 'red'
        }
    }

    scratchpadArea.onPaint: {
        // Before context start
        scratchpadArea.renderTarget = Canvas.FramebufferObject
        scratchpadArea.renderStrategy = Canvas.Threaded

        // Get context
        var ctx = scratchpadArea.getContext("2d");

        // Draw
        ctx.fillStyle = Qt.rgba(1, 0, 0, 1);
        ctx.fillRect(0, 0, 100, 100);
    }
}
