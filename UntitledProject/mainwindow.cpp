#include "mainwindow.h"
#include "./ui_mainwindow.h"

MainWindow::MainWindow(QWidget *parent)
    : QMainWindow(parent)
    , ui(new Ui::MainWindow)
{
    ui->setupUi(this);

    // Create a new palette with dark gray background and sky blue foreground
    QPalette palette;
    palette.setColor(QPalette::Window, QColor(53, 53, 53));
    palette.setColor(QPalette::WindowText, QColor(79, 175, 208));

    // Set the palette for the application
    qApp->setPalette(palette);

    // Create the menu bar
    QMenuBar* menuBar = new QMenuBar(this);
    QMenu* schedulerMenu = new QMenu("Scheduler");
    QAction* startPlanningAction = new QAction("Start Planning", this);
    QAction* exitAppAction = new QAction("Exit App", this);
    schedulerMenu->addAction(startPlanningAction);
    schedulerMenu->addAction(exitAppAction);
    menuBar->addMenu(schedulerMenu);
    setMenuBar(menuBar);

    // Connect the exit app action to the quit slot
    connect(exitAppAction, &QAction::triggered, this, &QMainWindow::close);

    // Create the start planning button
    QPushButton* startPlanningButton = new QPushButton("Start Planning", this);
    startPlanningButton->setGeometry(QRect(QPoint(100, 100), QSize(200, 50)));
    connect(startPlanningButton, &QPushButton::clicked, this, &MainWindow::startPlanning);

    // Create the exit app button
    QPushButton* exitAppButton = new QPushButton("Exit App", this);
    exitAppButton->setGeometry(QRect(QPoint(100, 200), QSize(200, 50)));
    connect(exitAppButton, &QPushButton::clicked, this, &QMainWindow::close);
}

void MainWindow::startPlanning()
{
    // Implement the start planning functionality here
}
MainWindow::~MainWindow()
{
    delete ui;
}
