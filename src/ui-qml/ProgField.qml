import QtQuick 2.11

ProgFieldForm {
    mouseArea1.onClicked: {
        if (mouse.button === Qt.LeftButton){
            mouseArea1.parent.color = 'red'
        }
    }

    scratchpadArea.onPaint: {
        var spcBtThickLinesPx = 50
        var thinLinesBtThickQty = 2
        var wid = scratchpadArea.width;
        var hei = scratchpadArea.height;
        var iter;

        // Configuration
        scratchpadArea.renderTarget = Canvas.FramebufferObject
        scratchpadArea.renderStrategy = Canvas.Threaded
        scratchpadArea.antialiasing = false

        // Get context
        var ctx = scratchpadArea.getContext("2d");

        // Global style
        ctx.globalAlpha = 0.2
        ctx.fillStyle = Qt.rgba(0, 0, 0, 0);

        // Draw thick lines
        ctx.lineWidth = 2;
        ctx.beginPath();

        for(iter = 1; iter < hei / spcBtThickLinesPx; iter++){
            // horizontal lines
            ctx.moveTo(0, iter * spcBtThickLinesPx);
            ctx.lineTo(wid, iter * spcBtThickLinesPx);
        }

        for(iter = 1; iter < wid / spcBtThickLinesPx; iter++){
            // vertical lines
            ctx.moveTo(iter * spcBtThickLinesPx, 0);
            ctx.lineTo(iter * spcBtThickLinesPx, hei);
        }

        ctx.closePath();
        ctx.stroke();

        // Draw thin lines
        ctx.lineWidth = 1;
        ctx.beginPath();

        for(iter = 1; iter < thinLinesBtThickQty * hei / spcBtThickLinesPx; iter++){
            // horizontal lines
            ctx.moveTo(0, iter * spcBtThickLinesPx / thinLinesBtThickQty);
            ctx.lineTo(wid, iter * spcBtThickLinesPx / thinLinesBtThickQty);
        }

        for(iter = 1; iter < thinLinesBtThickQty * wid / spcBtThickLinesPx; iter++){
            // vertical lines
            ctx.moveTo(iter * spcBtThickLinesPx / thinLinesBtThickQty, 0);
            ctx.lineTo(iter * spcBtThickLinesPx / thinLinesBtThickQty, hei);
        }

        ctx.closePath();
        ctx.stroke();
    }
}
