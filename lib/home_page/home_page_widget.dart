import '../auth/auth_util.dart';
import '../backend/api_requests/api_calls.dart';
import '../backend/backend.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePageWidget extends StatefulWidget {
  HomePageWidget({Key key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      appBar: AppBar(
        backgroundColor: Color(0xFFEEEDED),
        automaticallyImplyLeading: false,
        leading: IconButton(
          onPressed: () async {
            scaffoldKey.currentState.openDrawer();
          },
          icon: Icon(
            Icons.short_text,
            color: Colors.black,
            size: 36,
          ),
          iconSize: 36,
        ),
        actions: [],
        centerTitle: true,
        elevation: 0,
      ),
      backgroundColor: Color(0xFFF0EFEF),
      drawer: Drawer(
        elevation: 16,
        child: Stack(
          children: [
            Align(
              alignment: Alignment(0, 0),
              child: Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFFF5F5F5),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Align(
                  alignment: Alignment(0, -0.8),
                  child: StreamBuilder<List<UsersRecord>>(
                    stream: queryUsersRecord(
                      singleRecord: true,
                    ),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(child: CircularProgressIndicator());
                      }
                      List<UsersRecord> containerUsersRecordList =
                          snapshot.data;
                      // Customize what your widget looks like with no query results.
                      if (snapshot.data.isEmpty) {
                        // return Container();
                        // For now, we'll just include some dummy data.
                        containerUsersRecordList =
                            createDummyUsersRecord(count: 1);
                      }
                      final containerUsersRecord =
                          containerUsersRecordList.first;
                      return Padding(
                        padding: EdgeInsets.fromLTRB(5, 0, 5, 0),
                        child: Container(
                          width: double.infinity,
                          height: 150,
                          decoration: BoxDecoration(
                            color: FlutterFlowTheme.secondaryColor,
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 5, 0, 5),
                                child: Container(
                                  width: 120,
                                  height: 120,
                                  clipBehavior: Clip.antiAlias,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                  ),
                                  child: Image.asset(
                                    'assets/images/undraw_male_avatar_323b.png',
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    AutoSizeText(
                                      currentUserDisplayName,
                                      style: FlutterFlowTheme.title3.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    ),
                                    Row(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          currentUserEmail,
                                          style: FlutterFlowTheme.bodyText1
                                              .override(
                                            fontFamily: 'Poppins',
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      );
                    },
                  ),
                ),
              ),
            )
          ],
        ),
      ),
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.fromLTRB(15, 0, 15, 0),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                child: Text(
                  'Welcome',
                  style: FlutterFlowTheme.subtitle1.override(
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ),
              Text(
                currentUserDisplayName,
                style: FlutterFlowTheme.title2.override(
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.bold,
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Column(
                    mainAxisSize: MainAxisSize.max,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(1, 10, 0, 0),
                        child: Text(
                          'Welcome',
                          style: FlutterFlowTheme.subtitle1.override(
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      Text(
                        currentUserDisplayName,
                        style: FlutterFlowTheme.title2.override(
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.bold,
                        ),
                      )
                    ],
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment(1, 0),
                      child: Container(
                        width: 90,
                        height: 90,
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        child: Image.asset(
                          'assets/images/undraw_male_avatar_323b.png',
                        ),
                      ),
                    ),
                  )
                ],
              ),
              Card(
                clipBehavior: Clip.antiAliasWithSaveLayer,
                color: Color(0xFF276CE0),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(30),
                ),
                child: Container(
                  width: 100,
                  height: 200,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.primaryColor,
                  ),
                  child: Padding(
                    padding: EdgeInsets.fromLTRB(20, 20, 0, 0),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Balance',
                          style: FlutterFlowTheme.bodyText2.override(
                            fontFamily: 'Poppins',
                            color: FlutterFlowTheme.tertiaryColor,
                            fontSize: 16,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: AutoSizeText(
                            '\$ 57, 100',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.tertiaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(0, 10, 0, 0),
                          child: Text(
                            'Profit',
                            style: FlutterFlowTheme.bodyText2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.tertiaryColor,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(15, 10, 0, 0),
                          child: AutoSizeText(
                            '\$ 9000',
                            style: FlutterFlowTheme.title2.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.tertiaryColor,
                              fontSize: 30,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
                child: Text(
                  'My Currencies',
                  style: FlutterFlowTheme.title3.override(
                    fontFamily: 'Poppins',
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  Card(
                    clipBehavior: Clip.antiAliasWithSaveLayer,
                    color: Color(0xFFF5F5F5),
                    elevation: 10,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: Container(
                      width: 175,
                      height: 150,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: FaIcon(
                                  FontAwesomeIcons.bitcoin,
                                  color: FlutterFlowTheme.primaryColor,
                                  size: 40,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.fromLTRB(5, 10, 0, 0),
                                child: Text(
                                  'BTC',
                                  style: FlutterFlowTheme.title1.override(
                                    fontFamily: 'Poppins',
                                  ),
                                ),
                              )
                            ],
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 5, 0, 0),
                            child: Text(
                              'Portfolio',
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.subtitle2.override(
                                fontFamily: 'Poppins',
                                fontSize: 12,
                              ),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(10, 0, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Text(
                                  '\$ ',
                                  style: FlutterFlowTheme.bodyText1.override(
                                    fontFamily: 'Poppins',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                FutureBuilder<dynamic>(
                                  future: bitcoinPriceCall(
                                    slug: 'bitcoin',
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return Center(
                                          child: CircularProgressIndicator());
                                    }
                                    final textBitcoinPriceResponse =
                                        snapshot.data;
                                    return Text(
                                      getJsonField(textBitcoinPriceResponse,
                                              r'$.data.1.quote.USD.price')
                                          .toString(),
                                      style: FlutterFlowTheme.title2.override(
                                        fontFamily: 'Poppins',
                                      ),
                                    );
                                  },
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
