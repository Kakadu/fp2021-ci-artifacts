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

        PieSeries { PieSlice { label: "Bad measurement of a list (with non-negative size)"; value: 4.989035 }
PieSlice { label: "Concatenating multiple strings at once (`a^b^c`) has a perfomance issue."; value: 13.185307 }
PieSlice { label: "Conjunction with boolean smells smells bad"; value: 0.383772 }
PieSlice { label: "Constructor has no documentation attribute"; value: 0.356360 }
PieSlice { label: "Executing 'if ... then false' smells bad"; value: 0.137061 }
PieSlice { label: "Executing 'if ... then true' smells bad"; value: 1.398026 }
PieSlice { label: "Executing 'if true' smells bad"; value: 0.356360 }
PieSlice { label: "Extranous `@@`."; value: 0.493421 }
PieSlice { label: "File 'Test/lib/interpret.ml' doesn't have corresponding .mli interface"; value: 0.082237 }
PieSlice { label: "File 'Test/lib/lambda.ml' doesn't have corresponding .mli interface"; value: 0.082237 }
PieSlice { label: "File 'Test/lib/lambda_lib.ml-gen' doesn't have corresponding .mli interface"; value: 0.082237 }
PieSlice { label: "File 'Test/lib/tests.ml' doesn't have corresponding .mli interface"; value: 0.082237 }
PieSlice { label: "File 'Test/lib/utils.ml' doesn't have corresponding .mli interface"; value: 0.082237 }
PieSlice { label: "First item in file should be a documentation comment with copyright information. For example:\n            (** Copyright 2021-2022, Winnie Pooh et al. *)"; value: 0.082237 }
PieSlice { label: "Identifier starting with `_` misused."; value: 4.605263 }
PieSlice { label: "Performance issue. It's recommended to rewrite"; value: 0.274123 }
PieSlice { label: "Prefer guard instead of if-then-else in case construction"; value: 4.331140 }
PieSlice { label: "Rewrite record as"; value: 2.330044 }
PieSlice { label: "Second item in file should be a documentation comment with correct license information. For example:\n           (** SPDX-License-Identifier: LGPL-3.0-or-later *)"; value: 0.082237 }
PieSlice { label: "Toplevel eval not recommended"; value: 1.644737 }
PieSlice { label: "Type name `exprList` should be in snake case"; value: 0.027412 }
PieSlice { label: "Unsafe ingore."; value: 0.137061 }
PieSlice { label: "Using `function` is recommended"; value: 26.699561 }
PieSlice { label: "Using failwith unsafely"; value: 14.720395 }
PieSlice { label: "Using generic equality for type bool and other algebraic data types is not recommended. Use pattern matching"; value: 0.109649 }
PieSlice { label: "Using generic equality for type list and other algebraic data types is not recommended. Use pattern matching"; value: 0.082237 }
PieSlice { label: "Using mutable data structures for teaching purposes is usually discouraged"; value: 23.163377 }
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

        PieSeries { PieSlice { label: "Bad measurement of a list (with non-negative size)"; value: 14.086687 }
PieSlice { label: "Concatenating multiple strings at once (`a^b^c`) has a perfomance issue."; value: 37.229102 }
PieSlice { label: "Conjunction with boolean smells smells bad"; value: 1.083591 }
PieSlice { label: "Constructor has no documentation attribute"; value: 1.006192 }
PieSlice { label: "Executing 'if ... then false' smells bad"; value: 0.386997 }
PieSlice { label: "Executing 'if ... then true' smells bad"; value: 3.947368 }
PieSlice { label: "Executing 'if true' smells bad"; value: 1.006192 }
PieSlice { label: "Extranous `@@`."; value: 1.393189 }
PieSlice { label: "File 'Test/lib/interpret.ml' doesn't have corresponding .mli interface"; value: 0.232198 }
PieSlice { label: "File 'Test/lib/lambda.ml' doesn't have corresponding .mli interface"; value: 0.232198 }
PieSlice { label: "File 'Test/lib/lambda_lib.ml-gen' doesn't have corresponding .mli interface"; value: 0.232198 }
PieSlice { label: "File 'Test/lib/tests.ml' doesn't have corresponding .mli interface"; value: 0.232198 }
PieSlice { label: "File 'Test/lib/utils.ml' doesn't have corresponding .mli interface"; value: 0.232198 }
PieSlice { label: "First item in file should be a documentation comment with copyright information. For example:\n            (** Copyright 2021-2022, Winnie Pooh et al. *)"; value: 0.232198 }
PieSlice { label: "Identifier starting with `_` misused."; value: 13.003096 }
PieSlice { label: "Performance issue. It's recommended to rewrite"; value: 0.773994 }
PieSlice { label: "Prefer guard instead of if-then-else in case construction"; value: 12.229102 }
PieSlice { label: "Rewrite record as"; value: 6.578947 }
PieSlice { label: "Second item in file should be a documentation comment with correct license information. For example:\n           (** SPDX-License-Identifier: LGPL-3.0-or-later *)"; value: 0.232198 }
PieSlice { label: "Toplevel eval not recommended"; value: 4.643963 }
PieSlice { label: "Type name `exprList` should be in snake case"; value: 0.077399 }
PieSlice { label: "Unsafe ingore."; value: 0.386997 }
PieSlice { label: "Using generic equality for type bool and other algebraic data types is not recommended. Use pattern matching"; value: 0.309598 }
PieSlice { label: "Using generic equality for type list and other algebraic data types is not recommended. Use pattern matching"; value: 0.232198 }
 }
      }
    }
  }
}
