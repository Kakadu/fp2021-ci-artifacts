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

        PieSeries { PieSlice { label: "Bad measurement of a list (with non-negative size)"; value: 5.777778 }
PieSlice { label: "Concatenating multiple strings at once (`a^b^c`) has a perfomance issue."; value: 13.269841 }
PieSlice { label: "Conjunction with boolean smells smells bad"; value: 0.444444 }
PieSlice { label: "Constructor has no documentation attribute"; value: 0.190476 }
PieSlice { label: "Executing 'if ... then false' smells bad"; value: 0.158730 }
PieSlice { label: "Executing 'if ... then true' smells bad"; value: 1.619048 }
PieSlice { label: "Executing 'if true' smells bad"; value: 0.190476 }
PieSlice { label: "Extranous `@@`."; value: 0.571429 }
PieSlice { label: "Identifier starting with `_` misused."; value: 5.333333 }
PieSlice { label: "Performance issue. It's recommended to rewrite"; value: 0.317460 }
PieSlice { label: "Prefer guard instead of if-then-else in case construction"; value: 5.015873 }
PieSlice { label: "Rewrite record as"; value: 1.682540 }
PieSlice { label: "Toplevel eval not recommended"; value: 1.777778 }
PieSlice { label: "Unsafe ingore."; value: 0.063492 }
PieSlice { label: "Using `function` is recommended"; value: 21.555556 }
PieSlice { label: "Using failwith unsafely"; value: 16.222222 }
PieSlice { label: "Using generic equality for type bool and other algebraic data types is not recommended. Use pattern matching"; value: 0.126984 }
PieSlice { label: "Using mutable data structures for teaching purposes is usually discouraged"; value: 25.682540 }
 }
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

        PieSeries { PieSlice { label: "Bad measurement of a list (with non-negative size)"; value: 15.867480 }
PieSlice { label: "Concatenating multiple strings at once (`a^b^c`) has a perfomance issue."; value: 36.442895 }
PieSlice { label: "Conjunction with boolean smells smells bad"; value: 1.220575 }
PieSlice { label: "Constructor has no documentation attribute"; value: 0.523104 }
PieSlice { label: "Executing 'if ... then false' smells bad"; value: 0.435920 }
PieSlice { label: "Executing 'if ... then true' smells bad"; value: 4.446382 }
PieSlice { label: "Executing 'if true' smells bad"; value: 0.523104 }
PieSlice { label: "Extranous `@@`."; value: 1.569311 }
PieSlice { label: "Identifier starting with `_` misused."; value: 14.646905 }
PieSlice { label: "Performance issue. It's recommended to rewrite"; value: 0.871840 }
PieSlice { label: "Prefer guard instead of if-then-else in case construction"; value: 13.775065 }
PieSlice { label: "Rewrite record as"; value: 4.620750 }
PieSlice { label: "Toplevel eval not recommended"; value: 4.882302 }
PieSlice { label: "Unsafe ingore."; value: 0.174368 }
 }
      }
    }
  }
}
