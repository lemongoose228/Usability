import QtQuick

Item {
    id:deleg
    property string message: "?"
    property string time: "?"

    Rectangle{
        id:rect
        border.color:"darkgrey"
        radius:5
        anchors.fill:parent
        gradient:Gradient{
            GradientStop{position:0;color:"lightgray"}
            GradientStop{position:1;color:"white"}
        }
    }

    Row{
        id:row
        anchors.left:parent.left
        anchors.right: parent.right
        height:parent.height
        anchors.margins: 16
        spacing:6

        Text{text:message;anchors.verticalCenter:
            row.verticalCenter}
        Text{ text:time; anchors.verticalCenter:
            row.verticalCenter; anchors.right: parent.right}
    }
}
