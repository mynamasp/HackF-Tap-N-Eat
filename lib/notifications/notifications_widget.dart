import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class NotificationsWidget extends StatefulWidget {
  const NotificationsWidget({Key? key}) : super(key: key);

  @override
  _NotificationsWidgetState createState() => _NotificationsWidgetState();
}

class _NotificationsWidgetState extends State<NotificationsWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();

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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.89, -0.94),
                child: Text(
                  'Notifications',
                  style: FlutterFlowTheme.of(context).title1.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w800,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.52, -0.76),
                child: Text(
                  '* Your order has been prepared',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.97, -0.75),
                child: Text(
                  '2m',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, -0.6),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                  child: Text(
                    '* We have updated our Privacy Policy',
                    style: FlutterFlowTheme.of(context).title3.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.97, -0.6),
                child: Text(
                  '12h',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.54, -0.43),
                child: Text(
                  '* Your order has been prepared',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.97, -0.43),
                child: Text(
                  '23h',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.78, -0.31),
                child: Text(
                  '* Welcome to FoodByte',
                  style: FlutterFlowTheme.of(context).title3.override(
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.96, -0.3),
                child: Text(
                  '3d',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
