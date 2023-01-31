import '../flutter_flow/flutter_flow_count_controller.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class ItemDetailWidget extends StatefulWidget {
  const ItemDetailWidget({Key? key}) : super(key: key);

  @override
  _ItemDetailWidgetState createState() => _ItemDetailWidgetState();
}

class _ItemDetailWidgetState extends State<ItemDetailWidget> {
  final _unfocusNode = FocusNode();
  final scaffoldKey = GlobalKey<ScaffoldState>();
  int? countControllerValue;

  @override
  void dispose() {
    _unfocusNode.dispose();
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
                alignment: AlignmentDirectional(0, -1),
                child: Image.asset(
                  'assets/images/samosa.jpg',
                  width: MediaQuery.of(context).size.width,
                  height: MediaQuery.of(context).size.height * 0.22,
                  fit: BoxFit.cover,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.87, -0.95),
                child: Icon(
                  Icons.arrow_back,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.37, -0.94),
                child: Icon(
                  Icons.favorite_border_sharp,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.59, -0.94),
                child: Icon(
                  Icons.share_rounded,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.09, -0.47),
                child: Text(
                  'Quantity',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 20,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.83, -0.95),
                child: Icon(
                  Icons.menu_sharp,
                  color: FlutterFlowTheme.of(context).primaryText,
                  size: 24,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.07, -0.08),
                child: Text(
                  'Instruction',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.02, 0.11),
                child: Text(
                  'Lorem Ipsum..........',
                  style: FlutterFlowTheme.of(context).bodyText1,
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.14, 0.29),
                child: Text(
                  'If the product is no available ',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 22,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.08, -0.35),
                child: Container(
                  width: 160,
                  height: 50,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(25),
                    shape: BoxShape.rectangle,
                    border: Border.all(
                      color: Color(0xFF9E9E9E),
                      width: 1,
                    ),
                  ),
                  child: FlutterFlowCountController(
                    decrementIconBuilder: (enabled) => FaIcon(
                      FontAwesomeIcons.minus,
                      color: enabled ? Color(0xDD000000) : Color(0xFFEEEEEE),
                      size: 20,
                    ),
                    incrementIconBuilder: (enabled) => FaIcon(
                      FontAwesomeIcons.plus,
                      color: enabled ? Colors.blue : Color(0xFFEEEEEE),
                      size: 20,
                    ),
                    countBuilder: (count) => Text(
                      count.toString(),
                      style: GoogleFonts.getFont(
                        'Roboto',
                        color: Colors.black,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    count: countControllerValue ??= 0,
                    updateCount: (count) =>
                        setState(() => countControllerValue = count),
                    stepSize: 1,
                    minimum: 0,
                    maximum: 15,
                  ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(-0.69, 0.79),
                child: Text(
                  'Price',
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily: 'Poppins',
                        fontSize: 30,
                      ),
                ),
              ),
              Align(
                alignment: AlignmentDirectional(0.8, 0.79),
                child: FFButtonWidget(
                  onPressed: () {
                    print('Button pressed ...');
                  },
                  text: 'Add To Cart',
                  options: FFButtonOptions(
                    width: 130,
                    height: 40,
                    color: FlutterFlowTheme.of(context).primaryColor,
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
            ],
          ),
        ),
      ),
    );
  }
}
