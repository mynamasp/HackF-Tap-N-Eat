import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:mask_text_input_formatter/mask_text_input_formatter.dart';

class CreateanaccountWidget extends StatefulWidget {
  const CreateanaccountWidget({Key? key}) : super(key: key);

  @override
  _CreateanaccountWidgetState createState() => _CreateanaccountWidgetState();
}

class _CreateanaccountWidgetState extends State<CreateanaccountWidget> {
  TextEditingController? textController1;
  TextEditingController? textController2;
  TextEditingController? textController3;
  TextEditingController? textController4;
  final textFieldMask4 = MaskTextInputFormatter(mask: '*');
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    textController1 = TextEditingController();
    textController2 = TextEditingController();
    textController3 = TextEditingController();
    textController4 = TextEditingController();
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    textController1?.dispose();
    textController2?.dispose();
    textController3?.dispose();
    textController4?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
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
                alignment: AlignmentDirectional(-0.76, -0.83),
                child: Text(
                  'Input your Credentials',
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.67, -0.95),
                child: Text(
                  'Create and Account',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, -0.45),
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
                    alignment: AlignmentDirectional(-2.24, -0.45),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 20, 0),
                      child: Container(
                        width: MediaQuery.of(context).size.width * 0.8,
                        child: TextFormField(
                          controller: textController1,
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
                alignment: AlignmentDirectional(0.23, -0.63),
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
                alignment: AlignmentDirectional(-2.24, -0.63),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 20, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: textController2,
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
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            lineHeight: 2,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.01, -0.24),
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
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-2.5, -0.24),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(50, 0, 20, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: textController3,
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
                      style: FlutterFlowTheme.of(context).subtitle1.override(
                            fontFamily: 'Poppins',
                            lineHeight: 2,
                          ),
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.04, -0.03),
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
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.32, -0.02),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(40, 0, 20, 0),
                  child: Container(
                    width: MediaQuery.of(context).size.width * 0.8,
                    child: TextFormField(
                      controller: textController4,
                      autofocus: true,
                      obscureText: false,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        hintText: 'Enter your Password',
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
                      inputFormatters: [textFieldMask4],
                    ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.31, 0.33),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Create Account',
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
                alignment: AlignmentDirectional(-0.42, 0.47),
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