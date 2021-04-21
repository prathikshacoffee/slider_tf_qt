#ifndef INTERACT_SLIDER_H
#define INTERACT_SLIDER_H

#include <QObject>

class interact_slider : public QObject
{
    Q_OBJECT
public:
    interact_slider();
public slots:
    void slider_position_slot(QString);
    QString get_slider_position();
signals:
    void sliderChanged();
private:
    QString m_slider_position;
};

#endif // INTERACT_SLIDER_H
