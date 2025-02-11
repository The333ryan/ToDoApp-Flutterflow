import '/flutter_flow/flutter_flow_util.dart';
import 'taskdetails_widget.dart' show TaskdetailsWidget;
import 'package:flutter/material.dart';

class TaskdetailsModel extends FlutterFlowModel<TaskdetailsWidget> {
  ///  Local state fields for this page.
  /// Whetehr you can edit
  bool editingMode = false;

  ///  State fields for stateful widgets in this page.

  // State field(s) for TitleInput widget.
  FocusNode? titleInputFocusNode;
  TextEditingController? titleInputTextController;
  String? Function(BuildContext, String?)? titleInputTextControllerValidator;
  // State field(s) for DtlInput widget.
  FocusNode? dtlInputFocusNode;
  TextEditingController? dtlInputTextController;
  String? Function(BuildContext, String?)? dtlInputTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    titleInputFocusNode?.dispose();
    titleInputTextController?.dispose();

    dtlInputFocusNode?.dispose();
    dtlInputTextController?.dispose();
  }
}
