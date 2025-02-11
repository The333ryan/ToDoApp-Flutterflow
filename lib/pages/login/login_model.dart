import '/flutter_flow/flutter_flow_util.dart';
import 'login_widget.dart' show LoginWidget;
import 'package:flutter/material.dart';

class LoginModel extends FlutterFlowModel<LoginWidget> {
  ///  State fields for stateful widgets in this page.

  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for signupemail widget.
  FocusNode? signupemailFocusNode;
  TextEditingController? signupemailTextController;
  String? Function(BuildContext, String?)? signupemailTextControllerValidator;
  String? _signupemailTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Email is required';
    }

    if (!RegExp(kTextValidatorEmailRegex).hasMatch(val)) {
      return 'Not a valid email address';
    }
    return null;
  }

  // State field(s) for signuppassword widget.
  FocusNode? signuppasswordFocusNode;
  TextEditingController? signuppasswordTextController;
  late bool signuppasswordVisibility;
  String? Function(BuildContext, String?)?
      signuppasswordTextControllerValidator;
  String? _signuppasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Password is required';
    }

    if (val.length < 7) {
      return 'Password must be at least 7 characters';
    }

    return null;
  }

  // State field(s) for confirmpassword widget.
  FocusNode? confirmpasswordFocusNode;
  TextEditingController? confirmpasswordTextController;
  late bool confirmpasswordVisibility;
  String? Function(BuildContext, String?)?
      confirmpasswordTextControllerValidator;
  String? _confirmpasswordTextControllerValidator(
      BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'You must confirm your password';
    }

    return null;
  }

  // State field(s) for loginemail widget.
  FocusNode? loginemailFocusNode;
  TextEditingController? loginemailTextController;
  String? Function(BuildContext, String?)? loginemailTextControllerValidator;
  // State field(s) for loginpassword widget.
  FocusNode? loginpasswordFocusNode;
  TextEditingController? loginpasswordTextController;
  late bool loginpasswordVisibility;
  String? Function(BuildContext, String?)? loginpasswordTextControllerValidator;

  @override
  void initState(BuildContext context) {
    signupemailTextControllerValidator = _signupemailTextControllerValidator;
    signuppasswordVisibility = false;
    signuppasswordTextControllerValidator =
        _signuppasswordTextControllerValidator;
    confirmpasswordVisibility = false;
    confirmpasswordTextControllerValidator =
        _confirmpasswordTextControllerValidator;
    loginpasswordVisibility = false;
  }

  @override
  void dispose() {
    tabBarController?.dispose();
    signupemailFocusNode?.dispose();
    signupemailTextController?.dispose();

    signuppasswordFocusNode?.dispose();
    signuppasswordTextController?.dispose();

    confirmpasswordFocusNode?.dispose();
    confirmpasswordTextController?.dispose();

    loginemailFocusNode?.dispose();
    loginemailTextController?.dispose();

    loginpasswordFocusNode?.dispose();
    loginpasswordTextController?.dispose();
  }
}
