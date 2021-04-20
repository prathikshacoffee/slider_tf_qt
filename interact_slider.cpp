#include "interact_slider.h"

interact_slider::interact_slider(QObject *parent) : QObject(parent), m_slider_value("0")
{

}

void interact_slider::slider_changed_slot(QString slider_value){
    m_slider_value = slider_value;
    emit sliderChanged();
}

QString interact_slider::get_slider_value(){
    return m_slider_value;
}
