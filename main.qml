import QtQuick 2.12
import QtQuick.Window 2.12
import QtQuick.Controls 2.15
import interact_slider 1.0

Window {
    width: 640
    height: 480
    visible: true
    title: qsTr("Slider and text using slots and signals")

    InteractSlider{
        id:interact_slider_instance
    }

    Text {
        id: slider_text
        x: 228
        y: 266
        width: 203
        height: 25
        text: qsTr("Default Position : 1")
        font.pixelSize: 12
    }

    Slider {
        id: slider
        x: 49
        y: 163
        width: 544
        height: 49
        from: 1
        value: 1
        to: 1000
        onValueChanged: {
            interact_slider_instance.slider_changed_slot(value)
        }
    }

    Connections{
        target: interact_slider_instance
        onSliderChanged : slider_text.text = "Current Position: "+ interact_slider_instance.get_slider_value()
    }
}
