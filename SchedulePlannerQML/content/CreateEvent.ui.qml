/*
This is a UI file (.ui.qml) that is intended to be edited in Qt Design Studio only.
It is supposed to be strictly declarative and only uses a subset of QML. If you edit
this file manually, you might introduce QML code that is not supported by Qt Design Studio.
Check out https://doc.qt.io/qtcreator/creator-quick-ui-forms.html for details on .ui.qml files.
*/

import QtQuick 2.15
import QtQuick.Controls 2.15

Item {
    width: 500
    height: 800

    Rectangle {
        id: rectangle
        x: 0
        y: 0
        width: 500
        height: 800
        color: "#ffffff"
        border.width: 3

        Image {
            id: image
            x: 0
            y: 0
            width: 500
            height: 800
            source: "qrc:/qtquickplugin/images/template_image.png"
            fillMode: Image.PreserveAspectFit
        }
    }
}
