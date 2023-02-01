import '../auth/auth_util.dart';
import '../createanaccount/createanaccount_widget.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../food_menu/food_menu_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LoginviaemailWidget extends StatefulWidget {
  const LoginviaemailWidget({Key? key}) : super(key: key);

  @override
  _LoginviaemailWidgetState createState() => _LoginviaemailWidgetState();
}

class _LoginviaemailWidgetState extends State<LoginviaemailWidget> {
  TextEditingController? emailFieldController;
  TextEditingController? passwordFieldController;
  late bool passwordFieldVisibility;
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    emailFieldController = TextEditingController();
    passwordFieldController = TextEditingController();
    passwordFieldVisibility = false;
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    emailFieldController?.dispose();
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
                child: Icon(
                  Icons.arrow_back,
                  color: Colors.black,
                  size: 24,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.67, -0.95),
                child: Text(
                  'Login Via Email',
                  style: FlutterFlowTheme.of(context).bodyText1,
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
                alignment: AlignmentDirectional(0, -0.7),
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
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.48),
                child: Container(
                  width: 346.1,
                  height: 63,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: Color(0xFF5174F0),
                      width: 2,
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-3.1, -0.71),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 20, 0),
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
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            lineHeight: 2,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.79, -0.47),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 20, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: passwordFieldController,
                      autofocus: true,
                      obscureText: !passwordFieldVisibility,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your Password',
                        hintStyle: FlutterFlowTheme.of(context).bodyText2,
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
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            lineHeight: 2,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.73, -0.34),
                child: Text(
                  'Forgot Password ?',
                  style: FlutterFlowTheme.of(context).bodyText2,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.22),
                child: FFButtonWidget(
                  onPressed: () async {
                    final user = await signInWithEmail(
                      context,
                      emailFieldController!.text,
                      passwordFieldController!.text,
                    );
                    if (user == null) {
                      return;
                    }

                    await Navigator.push(
                      context,
                      PageTransition(
                        type: PageTransitionType.bottomToTop,
                        duration: Duration(milliseconds: 500),
                        reverseDuration: Duration(milliseconds: 500),
                        child: FoodMenuWidget(),
                      ),
                    );
                  },
                  text: 'Login',
                  options: FFButtonOptions(
                    width: 300,
                    height: 40,
                    color: Color(0xFF5174F0),
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
              Align(
                alignment: AlignmentDirectional(0, -0.07),
                child: FFButtonWidget(
                  onPressed: () async {
                    await Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => CreateanaccountWidget(),
                      ),
                    );
                  },
                  text: 'Create an Account Instead',
                  options: FFButtonOptions(
                    width: 300,
                    height: 40,
                    color: Colors.white,
                    textStyle: FlutterFlowTheme.of(context).subtitle2.override(
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
            ],
          ),
        ),
      ),
    );
  }
}
