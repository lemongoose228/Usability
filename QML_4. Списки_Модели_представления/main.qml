import Felgo
import QtQuick
import QtQuick.Window
import QtQuick.Controls
import QtCharts 2.4

App {
    width: 360
    height: 640


    ListModel{
        id:my_model
        ListElement{ message:"Hello!"; time: "20:10"}
    }
    Component{
        id:my_delegate
        MyDelegate{
            message:model.message
            time:model.time

            width:parent.width
            height: 40

        }
    }
    ListView {
        id:my_list
        anchors.fill:parent
        model:my_model
        delegate:my_delegate
    }

    Row {
        anchors.bottom: parent.bottom
        width: parent.width

        Item {
            id: inputwrapper
            anchors.bottom: parent.bottom
            width: parent.width-100
            height: 40


            TextField {
                color: "Gray"
                id: input
                anchors.fill: parent
                font.pointSize: 16
                placeholderText: "Write a message..."
            }
        }

        Button {
            text: "Send"
            onClicked: {
                my_model.append({"message": input.text, "time": Qt.formatTime(new Date(), "hh:mm")});
                input.text = "";
            }
        }
    }
}
