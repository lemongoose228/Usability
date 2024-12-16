import Felgo
import QtQuick
import QtQuick.Layouts

App {
    id: app
    width: 640
    height: 480
    visible: true

    property int myMargin:10
    minimumWidth:cl.implicitWidth+2*myMargin

    ColumnLayout{
        id: cl
        anchors.fill:parent

        Rectangle {
            id: header
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.maximumHeight: app.height * 0.15
            color: Qt.rgba(0.5, 0.5, 0.5, 0.7)

            Text {
                id: header_text
                text: 'Header'
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: main
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.maximumHeight: app.height * 0.70

            color: Qt.rgba(0.7, 0.7, 0.7, 0.7)

            Text {
                id: main_text
                text: qsTr("Content")
                anchors.centerIn: parent
            }
        }

        Rectangle {
            id: footer
            Layout.fillWidth: true
            Layout.fillHeight: true
            Layout.maximumHeight: app.height * 0.15

            RowLayout {
                anchors.fill:parent

                Rectangle {
                    id: footer1
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: Qt.rgba(0.4, 0.4, 0.4, 0.7)
                    Text {
                        id: footer1_text
                        text: qsTr("1")
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    id: footer2
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: Qt.rgba(0.4, 0.4, 0.4, 0.7)

                    Text {
                        id: footer2_text
                        text: qsTr("2")
                        anchors.centerIn: parent
                    }
                }

                Rectangle {
                    id: footer3
                    Layout.fillWidth: true
                    Layout.fillHeight: true
                    color: Qt.rgba(0.4, 0.4, 0.4, 0.7)

                    Text {
                        id: footer3_text
                        text: qsTr("3")
                        anchors.centerIn: parent
                    }
                }
            }
        }

    }
}
