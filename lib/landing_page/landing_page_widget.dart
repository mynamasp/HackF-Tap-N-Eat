import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../login/login_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class LandingPageWidget extends StatefulWidget {
  const LandingPageWidget({Key? key}) : super(key: key);

  @override
  _LandingPageWidgetState createState() => _LandingPageWidgetState();
}

class _LandingPageWidgetState extends State<LandingPageWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      await Future.delayed(const Duration(milliseconds: 1000));
      await Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => LoginWidget(),
        ),
      );
    });
  }

  @override
  void dispose() {
    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Color(0xFFF5F5F5),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Image.asset(
                'assets/images/splash_bg.png',
                width: 400,
                height: 914,
                fit: BoxFit.cover,
              ),
              Align(
                alignment: AlignmentDirectional(-0.12, -0.65),
                child: Image.asset(
                  'assets/images/logo2.png',
                  width: 280,
                  height: 280,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.04, -0.25),
                child: Text(
                  'Tap-N-Eat',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'PT Serif',
                        color: Colors.white,
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.1),
                child: Text(
                  'Tired of waiting in line?\nOrder food right from your classroom',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).subtitle1.override(
                        fontFamily: 'Poppins',
                        color: FlutterFlowTheme.of(context).primaryBackground,
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
