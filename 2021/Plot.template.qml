import QtCharts 2
import QtQuick.Controls 2
import QtQuick.Controls 1.4

ApplicationWindow {
  width: 1024
  height: 768
  TabView {
    anchors.fill: parent
    Tab {
      title: "All"
      ChartView {
        id: chart
        title: "Results"
        anchors.fill: parent
        legend.alignment: Qt.AlignRight
        antialiasing: true
        theme: ChartView.ChartThemeQt

        PieSeries { /*TEMPLATE1*/ }
      }
    }
    Tab {
      title: "Not all"
      ChartView {
        id: chart
        title: "Results 2"
        anchors.fill: parent
        legend.alignment: Qt.AlignRight
        antialiasing: true
        theme: ChartView.ChartThemeHighContrast

        PieSeries { /*TEMPLATE2*/ }
      }
    }
  }
}
