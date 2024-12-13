import Felgo
import QtQuick

App {
    minimumHeight: 500
    minimumWidth: 300

    Rectangle {
        id: header
        width: parent.width
        height: parent.height * 0.15
        color: 'Gray'


        Text {
            id: header_text
            text: qsTr("Header")
            anchors.centerIn: parent
        }
    }

    Rectangle {
        id: main
        width: parent.width
        height: parent.height * 0.70
        color: 'Light gray'
        anchors.top: header.bottom
        // anchors.horizontalCenter: body.horizontalCenter

        Text {
            id: main_text
            text: qsTr("Main")
            anchors.centerIn: parent
        }
    }

    Rectangle {
        id: footer
        width: parent.width
        height: parent.height * 0.15
        color: 'Light gray'
        anchors.top: main.bottom

        // anchors.horizontalCenter: body.horizontalCenter

        Rectangle {
            id: footer1
            width: parent.width / 3
            height: parent.height

            Text {
                id: footer1_text
                text: qsTr("Footer 1")
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: footer2
            width: parent.width / 3
            height: parent.height
            anchors.left: footer1.right
            color: 'Red'

            Text {
                id: footer2_text
                text: qsTr("Footer 2")
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: footer3
            width: parent.width / 3
            height: parent.height
            anchors.left: footer2.right
            color: 'Black'

            Text {
                id: footer3_text
                text: qsTr("Footer 3")
                anchors.centerIn: parent
                color: "White"
            }
        }
    }
}
