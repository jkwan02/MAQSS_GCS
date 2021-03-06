QT += qml gui quick positioning location

CONFIG += c++11

SOURCES += main.cpp \
    ../../NGCP/xbeeplus/lib/ReceivePacket.cpp \
    ../../NGCP/xbeeplus/lib/SerialXbee.cpp \
#    ../../NGCP/xbeeplus/lib/TransmitRequest.cpp \
#    ../../NGCP/xbeeplus/lib/Utility.cpp \
    XbeeInterface.cpp
    #../../NGCP/xbeeplus/test/main.cpp

RESOURCES += qml.qrc \
    images/marker.png \
    images/quadcopter.png \
    images/target.png

LIBS += \
    -lboost_system\
    -lboost_thread\
    -lxbee_plus

# Additional import path used to resolve QML modules in Qt Creator's code model
QML_IMPORT_PATH =

# Default rules for deployment.
qnx: target.path = /tmp/$${TARGET}/bin
else: unix:!android: target.path = /opt/$${TARGET}/bin
!isEmpty(target.path): INSTALLS += target

DISTFILES += \
    marker.png \
    math.min.js

HEADERS += \
#    ../../NGCP/xbeeplus/include/Frame.hpp \
    ../../NGCP/xbeeplus/include/ReceivePacket.hpp \
    ../../NGCP/xbeeplus/include/SerialXbee.hpp \
#    ../../NGCP/xbeeplus/include/TransmitRequest.hpp \
#    ../../NGCP/xbeeplus/include/Utility.hpp \
#    ../../NGCP/xbeeplus/include/Xbee.hpp \
    XbeeInterface.hpp

win32:CONFIG(release, debug|release): LIBS += -L$$PWD/../xbeeplus/build/release/ -lxbee_plus
else:win32:CONFIG(debug, debug|release): LIBS += -L$$PWD/../xbeeplus/build/debug/ -lxbee_plus
else:unix: LIBS += -L$$PWD/../xbeeplus/build/ -lxbee_plus

INCLUDEPATH += $$PWD/../xbeeplus/build
DEPENDPATH += $$PWD/../xbeeplus/build
