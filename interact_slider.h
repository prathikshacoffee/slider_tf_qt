#ifndef INTERACT_SLIDER_H
#define INTERACT_SLIDER_H

#include <QObject>

class interact_slider: public QObject
{
    Q_OBJECT
public:
    explicit interact_slider(QObject *parent = nullptr);
signals:
    void sliderChanged();
public slots:
    void slider_changed_slot(QString slider_value);
    QString get_slider_value();
private:
    QString m_slider_value;
};

#endif // INTERACT_SLIDER_H
