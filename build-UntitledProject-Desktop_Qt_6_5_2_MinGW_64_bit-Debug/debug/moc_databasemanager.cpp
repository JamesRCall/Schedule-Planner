/****************************************************************************
** Meta object code from reading C++ file 'databasemanager.h'
**
** Created by: The Qt Meta Object Compiler version 68 (Qt 6.5.2)
**
** WARNING! All changes made in this file will be lost!
*****************************************************************************/

#include "../../../SchedulePlannerQML/DatabaseManager/databasemanager.h"
#include <QtCore/qmetatype.h>

#if __has_include(<QtCore/qtmochelpers.h>)
#include <QtCore/qtmochelpers.h>
#else
QT_BEGIN_MOC_NAMESPACE
#endif


#include <memory>

#if !defined(Q_MOC_OUTPUT_REVISION)
#error "The header file 'databasemanager.h' doesn't include <QObject>."
#elif Q_MOC_OUTPUT_REVISION != 68
#error "This file was generated using the moc from 6.5.2. It"
#error "cannot be used with the include files from this version of Qt."
#error "(The moc has changed too much.)"
#endif

#ifndef Q_CONSTINIT
#define Q_CONSTINIT
#endif

QT_WARNING_PUSH
QT_WARNING_DISABLE_DEPRECATED
QT_WARNING_DISABLE_GCC("-Wuseless-cast")
namespace {

#ifdef QT_MOC_HAS_STRINGDATA
struct qt_meta_stringdata_CLASSDatabaseManagerENDCLASS_t {};
static constexpr auto qt_meta_stringdata_CLASSDatabaseManagerENDCLASS = QtMocHelpers::stringData(
    "DatabaseManager",
    "addEvent",
    "",
    "eventID",
    "eventName",
    "eventType",
    "eventDescription",
    "startTime",
    "endTime",
    "eventDay",
    "eventMonth",
    "eventYear",
    "recurrence",
    "fetchAllEvents",
    "QList<QVariantMap>"
);
#else  // !QT_MOC_HAS_STRING_DATA
struct qt_meta_stringdata_CLASSDatabaseManagerENDCLASS_t {
    uint offsetsAndSizes[30];
    char stringdata0[16];
    char stringdata1[9];
    char stringdata2[1];
    char stringdata3[8];
    char stringdata4[10];
    char stringdata5[10];
    char stringdata6[17];
    char stringdata7[10];
    char stringdata8[8];
    char stringdata9[9];
    char stringdata10[11];
    char stringdata11[10];
    char stringdata12[11];
    char stringdata13[15];
    char stringdata14[19];
};
#define QT_MOC_LITERAL(ofs, len) \
    uint(sizeof(qt_meta_stringdata_CLASSDatabaseManagerENDCLASS_t::offsetsAndSizes) + ofs), len 
Q_CONSTINIT static const qt_meta_stringdata_CLASSDatabaseManagerENDCLASS_t qt_meta_stringdata_CLASSDatabaseManagerENDCLASS = {
    {
        QT_MOC_LITERAL(0, 15),  // "DatabaseManager"
        QT_MOC_LITERAL(16, 8),  // "addEvent"
        QT_MOC_LITERAL(25, 0),  // ""
        QT_MOC_LITERAL(26, 7),  // "eventID"
        QT_MOC_LITERAL(34, 9),  // "eventName"
        QT_MOC_LITERAL(44, 9),  // "eventType"
        QT_MOC_LITERAL(54, 16),  // "eventDescription"
        QT_MOC_LITERAL(71, 9),  // "startTime"
        QT_MOC_LITERAL(81, 7),  // "endTime"
        QT_MOC_LITERAL(89, 8),  // "eventDay"
        QT_MOC_LITERAL(98, 10),  // "eventMonth"
        QT_MOC_LITERAL(109, 9),  // "eventYear"
        QT_MOC_LITERAL(119, 10),  // "recurrence"
        QT_MOC_LITERAL(130, 14),  // "fetchAllEvents"
        QT_MOC_LITERAL(145, 18)   // "QList<QVariantMap>"
    },
    "DatabaseManager",
    "addEvent",
    "",
    "eventID",
    "eventName",
    "eventType",
    "eventDescription",
    "startTime",
    "endTime",
    "eventDay",
    "eventMonth",
    "eventYear",
    "recurrence",
    "fetchAllEvents",
    "QList<QVariantMap>"
};
#undef QT_MOC_LITERAL
#endif // !QT_MOC_HAS_STRING_DATA
} // unnamed namespace

Q_CONSTINIT static const uint qt_meta_data_CLASSDatabaseManagerENDCLASS[] = {

 // content:
      11,       // revision
       0,       // classname
       0,    0, // classinfo
       2,   14, // methods
       0,    0, // properties
       0,    0, // enums/sets
       0,    0, // constructors
       0,       // flags
       0,       // signalCount

 // methods: name, argc, parameters, tag, flags, initial metatype offsets
       1,   10,   26,    2, 0x02,    1 /* Public */,
      13,    0,   47,    2, 0x02,   12 /* Public */,

 // methods: parameters
    QMetaType::Bool, QMetaType::Int, QMetaType::QString, QMetaType::QString, QMetaType::QString, QMetaType::Int, QMetaType::Int, QMetaType::Int, QMetaType::Int, QMetaType::Int, QMetaType::QString,    3,    4,    5,    6,    7,    8,    9,   10,   11,   12,
    0x80000000 | 14,

       0        // eod
};

Q_CONSTINIT const QMetaObject DatabaseManager::staticMetaObject = { {
    QMetaObject::SuperData::link<QObject::staticMetaObject>(),
    qt_meta_stringdata_CLASSDatabaseManagerENDCLASS.offsetsAndSizes,
    qt_meta_data_CLASSDatabaseManagerENDCLASS,
    qt_static_metacall,
    nullptr,
    qt_incomplete_metaTypeArray<qt_meta_stringdata_CLASSDatabaseManagerENDCLASS_t,
        // Q_OBJECT / Q_GADGET
        QtPrivate::TypeAndForceComplete<DatabaseManager, std::true_type>,
        // method 'addEvent'
        QtPrivate::TypeAndForceComplete<bool, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<int, std::false_type>,
        QtPrivate::TypeAndForceComplete<const QString &, std::false_type>,
        // method 'fetchAllEvents'
        QtPrivate::TypeAndForceComplete<QList<QVariantMap>, std::false_type>
    >,
    nullptr
} };

void DatabaseManager::qt_static_metacall(QObject *_o, QMetaObject::Call _c, int _id, void **_a)
{
    if (_c == QMetaObject::InvokeMetaMethod) {
        auto *_t = static_cast<DatabaseManager *>(_o);
        (void)_t;
        switch (_id) {
        case 0: { bool _r = _t->addEvent((*reinterpret_cast< std::add_pointer_t<int>>(_a[1])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[2])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[3])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[4])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[5])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[6])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[7])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[8])),(*reinterpret_cast< std::add_pointer_t<int>>(_a[9])),(*reinterpret_cast< std::add_pointer_t<QString>>(_a[10])));
            if (_a[0]) *reinterpret_cast< bool*>(_a[0]) = std::move(_r); }  break;
        case 1: { QList<QVariantMap> _r = _t->fetchAllEvents();
            if (_a[0]) *reinterpret_cast< QList<QVariantMap>*>(_a[0]) = std::move(_r); }  break;
        default: ;
        }
    }
}

const QMetaObject *DatabaseManager::metaObject() const
{
    return QObject::d_ptr->metaObject ? QObject::d_ptr->dynamicMetaObject() : &staticMetaObject;
}

void *DatabaseManager::qt_metacast(const char *_clname)
{
    if (!_clname) return nullptr;
    if (!strcmp(_clname, qt_meta_stringdata_CLASSDatabaseManagerENDCLASS.stringdata0))
        return static_cast<void*>(this);
    return QObject::qt_metacast(_clname);
}

int DatabaseManager::qt_metacall(QMetaObject::Call _c, int _id, void **_a)
{
    _id = QObject::qt_metacall(_c, _id, _a);
    if (_id < 0)
        return _id;
    if (_c == QMetaObject::InvokeMetaMethod) {
        if (_id < 2)
            qt_static_metacall(this, _c, _id, _a);
        _id -= 2;
    } else if (_c == QMetaObject::RegisterMethodArgumentMetaType) {
        if (_id < 2)
            *reinterpret_cast<QMetaType *>(_a[0]) = QMetaType();
        _id -= 2;
    }
    return _id;
}
QT_WARNING_POP
