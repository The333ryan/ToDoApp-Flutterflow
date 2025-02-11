import '/flutter_flow/flutter_flow_util.dart';
import 'add_task_widget.dart' show AddTaskWidget;
import 'package:flutter/material.dart';

class AddTaskModel extends FlutterFlowModel<AddTaskWidget> {
  ///  State fields for stateful widgets in this component.

  // State field(s) for Tasktitle widget.
  FocusNode? tasktitleFocusNode;
  TextEditingController? tasktitleTextController;
  String? Function(BuildContext, String?)? tasktitleTextControllerValidator;
  // State field(s) for DTails widget.
  FocusNode? dTailsFocusNode;
  TextEditingController? dTailsTextController;
  String? Function(BuildContext, String?)? dTailsTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    tasktitleFocusNode?.dispose();
    tasktitleTextController?.dispose();

    dTailsFocusNode?.dispose();
    dTailsTextController?.dispose();
  }
}
