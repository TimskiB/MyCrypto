import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomeWidget extends StatefulWidget {
  WelcomeWidget({Key key}) : super(key: key);

  @override
  _WelcomeWidgetState createState() => _WelcomeWidgetState();
}

class _WelcomeWidgetState extends State<WelcomeWidget> {
  final pageViewController = PageController();
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: Container(
        width: double.infinity,
        height: double.infinity,
        child: Stack(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(0, 0, 0, 50),
              child: PageView(
                controller: pageViewController,
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 100,
                    height: 100,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.primaryColor,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(2, 2, 0, 0),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(30),
                            child: Image.asset(
                              'assets/images/undraw_Crypto_flowers_bjmo.png',
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: MediaQuery.of(context).size.height * 0.4,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Container(
                          width: 100,
                          height: 100,
                          decoration: BoxDecoration(
                            color: Color(0xFFEEEEEE),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(3, 30, 0, 0),
                          child: Card(
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            color: Color(0xFFF5F5F5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Container(
                              width: MediaQuery.of(context).size.width * 0.8,
                              height: 160,
                              decoration: BoxDecoration(
                                color: Color(0xFFEEEEEE),
                                borderRadius: BorderRadius.circular(20),
                              ),
                              child: Align(
                                alignment: Alignment(0, 0),
                                child: Padding(
                                  padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
                                  child: AutoSizeText(
                                    'Receive live and visual cryptocurrency data for your currencies',
                                    textAlign: TextAlign.center,
                                    style: FlutterFlowTheme.title1.override(
                                      fontFamily: 'Poppins',
                                      fontWeight: FontWeight.w800,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container()
                ],
              ),
            ),
            Align(
              alignment: Alignment(0, 1),
              child: Padding(
                padding: EdgeInsets.fromLTRB(0, 0, 0, 10),
                child: SmoothPageIndicator(
                  controller: pageViewController,
                  count: 2,
                  axisDirection: Axis.horizontal,
                  onDotClicked: (i) {
                    pageViewController.animateToPage(
                      i,
                      duration: Duration(milliseconds: 500),
                      curve: Curves.ease,
                    );
                  },
                  effect: ExpandingDotsEffect(
                    expansionFactor: 2,
                    spacing: 8,
                    radius: 16,
                    dotWidth: 16,
                    dotHeight: 16,
                    dotColor: Color(0xFF9E9E9E),
                    activeDotColor: Color(0xFF3F51B5),
                    paintStyle: PaintingStyle.fill,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
