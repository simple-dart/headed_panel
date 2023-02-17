import 'package:simple_dart_label/simple_dart_label.dart';
import 'package:simple_dart_ui_core/simple_dart_ui_core.dart';

class HeadedPanel extends PanelComponent {
  HeadedPanel() : super('HeadedPanel') {
    vertical = true;
    addAll([header, contentPanel]);
  }

  void addContent(List<Component> childs) {
    contentPanel.addAll(childs);
  }

  Label header = Label()
    ..addCssClass('HeadedPanelHeader')
    ..visible = false
    ..width = '100%';

  Panel contentPanel = Panel()
    ..addCssClass('HeadedPanelContent')
    ..spacing = '5px'
    ..vertical = true
    ..fillContent = true;

  String get caption => header.caption;

  set caption(String value) {
    header.caption = value;
    if (value.isEmpty) {
      header.visible = false;
    } else {
      header.visible = true;
    }
  }
}
