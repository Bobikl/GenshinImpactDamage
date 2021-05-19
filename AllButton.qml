import QtQuick 2.0
import QtQuick.Layouts 1.0

Item {
    id: control
    signal pressed (var number)

    MonsterInformation {
        id: monsterInformation
    }

    ColumnLayout {
        anchors.fill: parent

        Item {
            Layout.fillHeight: true
        }

        RowLayout {
            Item {
                Layout.fillWidth: true
            }
            Rectangle {
                width: 70
                height: 50
                border.color: "black"
                border.width: 2
                radius: 4
                Text { anchors.centerIn: parent; text: "计算" }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        control.pressed(1)
                    }
                }
            }
            Item {
                width: 50
            }

            Rectangle {
                width: 70
                height: 50
                border.color: "black"
                border.width: 2
                radius: 4
                Text { anchors.centerIn: parent; text: "清除" }
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        control.pressed(2)
                    }
                }
            }
            Item {
                Layout.fillWidth: true
            }

        }

        Item {
            Layout.fillHeight: true
        }

        RowLayout {
            Item {
                Layout.fillWidth: true
            }

            Rectangle {
                width: 70
                height: 30
                border.color: "black"
                Text {anchors.centerIn: parent; text: "抗性参考";}
                MouseArea {
                    anchors.fill: parent
                    onClicked: {
                        monsterInformation.visible = true
                    }
                }
            }
        }
    }
}
