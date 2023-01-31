import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class ProfileWidget extends StatefulWidget {
  const ProfileWidget({Key? key}) : super(key: key);

  @override
  _ProfileWidgetState createState() => _ProfileWidgetState();
}

class _ProfileWidgetState extends State<ProfileWidget> {
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
      backgroundColor: Color(0xFFBCBEC0),
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
          child: Stack(
            children: [
              Align(
                alignment: AlignmentDirectional(-0.03, -0.78),
                child: Container(
                  width: 120,
                  height: 120,
                  clipBehavior: Clip.antiAlias,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                  ),
                  child: Image.network(
                    'https://picsum.photos/seed/906/600',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, -0.48),
                child: Text(
                  'Ragul Sankar',
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).title3,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.07, -0.4),
                child: Text(
                  'Ramapuram, Chennai',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.91, -0.32),
                child: Text(
                  'Account Settings',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        color: Color(0xFF1173E5),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0, 0.3),
                child: Container(
                  width: 390,
                  height: 333.9,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Align(
                    alignment: AlignmentDirectional(0, 0),
                    child: Stack(
                      children: [
                        Align(
                          alignment: AlignmentDirectional(-0.93, -0.87),
                          child: Icon(
                            Icons.person,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.54, -0.87),
                          child: Text(
                            'Edit Account',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.92, -0.47),
                          child: Icon(
                            Icons.location_on,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.53, -0.48),
                          child: Text(
                            'My Locations',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.92, -0.06),
                          child: FaIcon(
                            FontAwesomeIcons.box,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.53, -0.07),
                          child: Text(
                            'My Orders',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.92, 0.28),
                          child: FaIcon(
                            FontAwesomeIcons.solidCreditCard,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.43, 0.31),
                          child: Text(
                            'Payment Methods',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.92, 0.6),
                          child: FaIcon(
                            FontAwesomeIcons.star,
                            color: Colors.black,
                            size: 24,
                          ),
                        ),
                        Align(
                          alignment: AlignmentDirectional(-0.54, 0.62),
                          child: Text(
                            'My Review',
                            style: FlutterFlowTheme.of(context).title3.override(
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.bold,
                                ),
                          ),
                        ),
                      ],
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
