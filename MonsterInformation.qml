import QtQuick 2.0
import QtQuick.Controls 2.0
import QtQuick.Dialogs 1.2

Dialog {
    visible: false
    width: 500
    height: 500
    title: "Monster Information"

    Image {
        anchors.fill: parent
        source: "qrc:/image.jpeg"
    }

}
