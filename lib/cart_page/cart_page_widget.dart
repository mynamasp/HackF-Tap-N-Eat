import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';

class CartPageWidget extends StatefulWidget {
  const CartPageWidget({Key? key}) : super(key: key);

  @override
  _CartPageWidgetState createState() => _CartPageWidgetState();
}

class _CartPageWidgetState extends State<CartPageWidget> {
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
      appBar: AppBar(
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        automaticallyImplyLeading: false,
        title: Text(
          'Your Cart',
          style: FlutterFlowTheme.of(context).title1,
        ),
        actions: [
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(0, 0, 12, 0),
            child: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30,
              borderWidth: 1,
              buttonSize: 44,
              icon: Icon(
                Icons.shopping_cart_outlined,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 24,
              ),
              onPressed: () {
                print('IconButton pressed ...');
              },
            ),
          ),
        ],
        centerTitle: false,
        elevation: 0,
      ),
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            SingleChildScrollView(
              child: Column(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 12, 0, 0),
                    child: Builder(
                      builder: (context) {
                        final cartItems = FFAppState().Cart.toList();
                        return ListView.builder(
                          padding: EdgeInsets.zero,
                          primary: false,
                          shrinkWrap: true,
                          scrollDirection: Axis.vertical,
                          itemCount: cartItems.length,
                          itemBuilder: (context, cartItemsIndex) {
                            final cartItemsItem = cartItems[cartItemsIndex];
                            return Padding(
                              padding:
                                  EdgeInsetsDirectional.fromSTEB(16, 0, 16, 8),
                              child: Container(
                                width: double.infinity,
                                decoration: BoxDecoration(
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryBackground,
                                  boxShadow: [
                                    BoxShadow(
                                      blurRadius: 3,
                                      color: Color(0x411D2429),
                                      offset: Offset(0, 1),
                                    )
                                  ],
                                  borderRadius: BorderRadius.circular(8),
                                ),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      8, 8, 8, 8),
                                  child: StreamBuilder<MenuItemsRecord>(
                                    stream: MenuItemsRecord.getDocument(
                                        cartItemsItem),
                                    builder: (context, snapshot) {
                                      // Customize what your widget looks like when it's loading.
                                      if (!snapshot.hasData) {
                                        return Center(
                                          child: SizedBox(
                                            width: 50,
                                            height: 50,
                                            child: CircularProgressIndicator(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryColor,
                                            ),
                                          ),
                                        );
                                      }
                                      final rowMenuItemsRecord = snapshot.data!;
                                      return Row(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Expanded(
                                            child: Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(8, 8, 4, 0),
                                              child: Column(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.start,
                                                children: [
                                                  Text(
                                                    rowMenuItemsRecord.name!,
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .title3,
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.spaceBetween,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.end,
                                            children: [
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 4, 0, 0),
                                                child: InkWell(
                                                  onTap: () async {
                                                    FFAppState().update(() {
                                                      FFAppState()
                                                          .removeFromCart(
                                                              cartItemsItem);
                                                    });
                                                  },
                                                  child: Icon(
                                                    Icons.delete,
                                                    color: Color(0xFF57636C),
                                                    size: 24,
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 12, 4, 8),
                                                child: Text(
                                                  formatNumber(
                                                    rowMenuItemsRecord.price!,
                                                    formatType:
                                                        FormatType.custom,
                                                    currency: 'Rs. ',
                                                    format: '',
                                                    locale: '',
                                                  ),
                                                  textAlign: TextAlign.end,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyText1,
                                                ),
                                              ),
                                            ],
                                          ),
                                        ],
                                      );
                                    },
                                  ),
                                ),
                              ),
                            );
                          },
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
              child: Text(
                'Total Amount :',
                style: FlutterFlowTheme.of(context).bodyText1.override(
                      fontFamily: 'Poppins',
                      fontSize: 20,
                    ),
              ),
            ),
            Text(
              formatNumber(
                FFAppState().Total,
                formatType: FormatType.custom,
                currency: 'Rs. ',
                format: '',
                locale: '',
              ),
              style: FlutterFlowTheme.of(context).bodyText1.override(
                    fontFamily: 'Poppins',
                    fontSize: 20,
                  ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 100, 0, 0),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FFButtonWidget(
                    onPressed: () async {
                      Navigator.pop(context);
                    },
                    text: 'Go Back',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: Color(0xFF828282),
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
                  FFButtonWidget(
                    onPressed: () {
                      print('Button pressed ...');
                    },
                    text: 'Checkout',
                    options: FFButtonOptions(
                      width: 130,
                      height: 40,
                      color: FlutterFlowTheme.of(context).primaryColor,
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
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
