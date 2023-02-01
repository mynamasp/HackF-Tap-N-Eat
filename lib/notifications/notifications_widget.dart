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
                alignment: AlignmentDirectional(-0.52, -0.76),
                child: Text(
                  '* Your order has been prepared',
                  style: FlutterFlowTheme.of(context).subtitle1,
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
                alignment: AlignmentDirectional(-0.6, -0.6),
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(15, 0, 10, 0),
                  child: Text(
                    '* We have updated our Privacy Policy',
                    style: FlutterFlowTheme.of(context).subtitle1,
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
                alignment: AlignmentDirectional(-0.56, -0.43),
                child: Text(
                  '* Your order has been prepared',
                  style: FlutterFlowTheme.of(context).subtitle1,
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
                alignment: AlignmentDirectional(-0.7, -0.31),
                child: Text(
                  '* Welcome to FoodByte',
                  style: FlutterFlowTheme.of(context).subtitle1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.96, -0.3),
                child: Text(
                  '3d',
                  style: FlutterFlowTheme.of(context).bodyText1,
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
                alignment: AlignmentDirectional(0, -0.88),
                child: Container(
                  width: 390,
                  height: 10,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).lineColor,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.67, -0.95),
                child: Text(
                  'Notifications',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
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
