import QtQuick 2.12
import QtQuick.Window 2.2
import QtQuick.Controls 2.15
import interact_slider 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Hello World")

    InteractSlider{
        id:interact_slider_instance
    }

    Text {
        id: slider_text
        x: 309
        y: 239
        text: qsTr("Default Value : 0")
        font.pixelSize: 20
        horizontalAlignment: Text.AlignVCenter
    }

    Slider {
        id: slider
        x: 60
        y: 140
        width: 528
        height: 40
        stepSize: 1
        to: 100
        value: 0
        onValueChanged: {
            interact_slider_instance.slider_position_slot(value)
        }
    }

    Connections{
        target:interact_slider_instance
        onSliderChanged:slider_text.text="Current Value : "+interact_slider_instance.get_slider_position()
    }
}
