#include "interact_slider.h"

interact_slider::interact_slider()
{
    m_slider_position="0";
}

void interact_slider::slider_position_slot(QString slider_pos){
    m_slider_position=slider_pos;
    emit sliderChanged();
}

QString interact_slider::get_slider_position(){
    return m_slider_position;
}
