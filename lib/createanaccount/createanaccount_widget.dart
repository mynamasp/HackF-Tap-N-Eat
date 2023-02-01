import '../auth/auth_util.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../home_page/home_page_widget.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CreateanaccountWidget extends StatefulWidget {
  const CreateanaccountWidget({Key? key}) : super(key: key);

  @override
  _CreateanaccountWidgetState createState() => _CreateanaccountWidgetState();
}

class _CreateanaccountWidgetState extends State<CreateanaccountWidget> {
  TextEditingController? confirmPasswordFieldController;
  late bool confirmPasswordFieldVisibility;
  TextEditingController? emailFieldController;
  TextEditingController? nameFieldController;
  TextEditingController? phoneFieldController;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    confirmPasswordFieldController = TextEditingController();
    confirmPasswordFieldVisibility = false;
    emailFieldController = TextEditingController();
    nameFieldController = TextEditingController();
    phoneFieldController = TextEditingController();
    passwordFieldController = TextEditingController();
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    confirmPasswordFieldController?.dispose();
    emailFieldController?.dispose();
    nameFieldController?.dispose();
    phoneFieldController?.dispose();
    passwordFieldController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(0, -0.88),
                child: Container(
                  width: 390,
                  height: 10,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.9, -0.95),
                child: InkWell(
                  onTap: () async {
                    Navigator.pop(context);
                  },
                  child: Icon(
                    Icons.arrow_back,
                    color: Colors.black,
                    size: 24,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.76, -0.83),
                child: Text(
                  'Input your Credentials',
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.67, -0.95),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                  child: Text(
                    'Create an Account',
                    style: FlutterFlowTheme.of(context).bodyText1,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.45),
                child: Container(
                  width: 346.1,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF5174F0),
                      width: 2,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, -0.45),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: emailFieldController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Email',
                            hintText: 'Enter your Mail-ID',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    lineHeight: 2,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.63),
                child: Container(
                  width: 346.1,
                  height: 60,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF5174F0),
                      width: 2,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, -0.63),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: nameFieldController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Name',
                            hintText: 'Enter your Name',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    lineHeight: 2,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.24),
                child: Container(
                  width: 346.1,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF5174F0),
                      width: 2,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, -0.24),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: phoneFieldController,
                          autofocus: true,
                          obscureText: false,
                          decoration: InputDecoration(
                            labelText: 'Phone No.',
                            hintText: 'Enter your Number',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    lineHeight: 2,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.17),
                child: Container(
                  width: 346,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF5174F0),
                      width: 2,
                    ),
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0.18),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(10, 0, 0, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: confirmPasswordFieldController,
                          autofocus: true,
                          obscureText: !confirmPasswordFieldVisibility,
                          decoration: InputDecoration(
                            labelText: 'Re-Enter Password',
                            hintText: 'Re-Enter your Password',
                            hintStyle: FlutterFlowTheme.of(context).bodyText2,
                            enabledBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedErrorBorder: InputBorder.none,
                            suffixIcon: InkWell(
                              onTap: () => setState(
                                () => confirmPasswordFieldVisibility =
                                    !confirmPasswordFieldVisibility,
                              ),
                              focusNode: FocusNode(skipTraversal: true),
                              child: Icon(
                                confirmPasswordFieldVisibility
                                    ? Icons.visibility_outlined
                                    : Icons.visibility_off_outlined,
                                color: Color(0xFF757575),
                                size: 22,
                              ),
                            ),
                          ),
                          style:
                              FlutterFlowTheme.of(context).subtitle1.override(
                                    fontFamily: 'Poppins',
                                    lineHeight: 2,
                                  ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.03),
                child: Container(
                  width: 346,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF5174F0),
                      width: 2,
                    ),
                  ),
                  child: Stack(
                    children: [
                      Align(
                        alignment: AlignmentDirectional(0, -0.47),
                        child: Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                          child: Container(
                            width: MediaQuery.of(context).size.width * 0.8,
                            child: TextFormField(
                              controller: passwordFieldController,
                              autofocus: true,
                              obscureText: !passwordFieldVisibility,
                              decoration: InputDecoration(
                                labelText: 'Password',
                                hintText: 'Enter your Password',
                                hintStyle:
                                    FlutterFlowTheme.of(context).bodyText2,
                                enabledBorder: InputBorder.none,
                                focusedBorder: InputBorder.none,
                                errorBorder: InputBorder.none,
                                focusedErrorBorder: InputBorder.none,
                                suffixIcon: InkWell(
                                  onTap: () => setState(
                                    () => passwordFieldVisibility =
                                        !passwordFieldVisibility,
                                  ),
                                  focusNode: FocusNode(skipTraversal: true),
                                  child: Icon(
                                    passwordFieldVisibility
                                        ? Icons.visibility_outlined
                                        : Icons.visibility_off_outlined,
                                    color: Color(0xFF757575),
                                    size: 22,
                                  ),
                                ),
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .subtitle1
                                  .override(
                                    fontFamily: 'Poppins',
                                    lineHeight: 2,
                                  ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.33),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      if (passwordFieldController?.text !=
                          confirmPasswordFieldController?.text) {
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            content: Text(
                              'Passwords don\'t match!',
                            ),
                          ),
                        );
                        return;
                      }

                      final user = await createAccountWithEmail(
                        context,
                        emailFieldController!.text,
                        passwordFieldController!.text,
                      );
                      if (user == null) {
                        return;
                      }

                      final usersCreateData = createUsersRecordData(
                        phoneNumber: phoneFieldController!.text,
                      );
                      await UsersRecord.collection
                          .doc(user.uid)
                          .update(usersCreateData);

                      await Navigator.push(
                        context,
                        PageTransition(
                          type: PageTransitionType.fade,
                          duration: Duration(milliseconds: 500),
                          reverseDuration: Duration(milliseconds: 500),
                          child: HomePageWidget(),
                        ),
                      );
                    },
                    text: 'Create Account',
                    options: FFButtonOptions(
                      width: 300,
                      height: 40,
                      color: Color(0xFF5174F0),
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Colors.white,
                              ),
                      borderSide: BorderSide(
                        color: Colors.transparent,
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.47),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                  child: FFButtonWidget(
                    onPressed: () async {
                      await Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => LoginWidget(),
                        ),
                      );
                    },
                    text: 'Login Instead',
                    options: FFButtonOptions(
                      width: 300,
                      height: 40,
                      color: Colors.white,
                      textStyle:
                          FlutterFlowTheme.of(context).subtitle2.override(
                                fontFamily: 'Poppins',
                                color: Color(0xFF5174F0),
                              ),
                      borderSide: BorderSide(
                        color: Color(0xFF5174F0),
                        width: 2,
                      ),
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
