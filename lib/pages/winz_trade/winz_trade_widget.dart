import '/backend/backend.dart';
import '/components/app_feature/app_feature_widget.dart';
import '/components/contact_tile/contact_tile_widget.dart';
import '/components/shimmer_app_links/shimmer_app_links_widget.dart';
import '/components/shimmer_contact_tiles/shimmer_contact_tiles_widget.dart';
import '/components/shimmer_footer_contact/shimmer_footer_contact_widget.dart';
import '/components/trade_feature/trade_feature_widget.dart';
import '/components/trade_steps/trade_steps_widget.dart';
import '/flutter_flow/flutter_flow_animations.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'winz_trade_model.dart';
export 'winz_trade_model.dart';

class WinzTradeWidget extends StatefulWidget {
  const WinzTradeWidget({super.key});

  @override
  State<WinzTradeWidget> createState() => _WinzTradeWidgetState();
}

class _WinzTradeWidgetState extends State<WinzTradeWidget>
    with TickerProviderStateMixin {
  late WinzTradeModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  final animationsMap = <String, AnimationInfo>{};

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => WinzTradeModel());

    animationsMap.addAll({
      'richTextOnPageLoadAnimation': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-60.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 0.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation1': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-60.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 200.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation2': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-60.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 400.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
      'textOnPageLoadAnimation3': AnimationInfo(
        trigger: AnimationTrigger.onPageLoad,
        effectsBuilder: () => [
          MoveEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: const Offset(-60.0, 0.0),
            end: const Offset(0.0, 0.0),
          ),
          FadeEffect(
            curve: Curves.easeInOut,
            delay: 600.0.ms,
            duration: 600.0.ms,
            begin: 0.0,
            end: 1.0,
          ),
        ],
      ),
    });

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Title(
        title:
            'WinzTrade - Trade your Insights: Turn Opinions into Opportunities',
        color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
            key: scaffoldKey,
            body: SafeArea(
              top: true,
              child: Stack(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(0.0),
                    child: Image.asset(
                      'assets/images/bg.jpg',
                      width: double.infinity,
                      height: double.infinity,
                      fit: BoxFit.cover,
                    ),
                  ),
                  SingleChildScrollView(
                    controller: _model.mainCol,
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 114.0, 0.0, 0.0),
                          child: Wrap(
                            spacing: 0.0,
                            runSpacing: 40.0,
                            alignment: WrapAlignment.start,
                            crossAxisAlignment: WrapCrossAlignment.center,
                            direction: Axis.horizontal,
                            runAlignment: WrapAlignment.start,
                            verticalDirection: VerticalDirection.down,
                            clipBehavior: Clip.none,
                            children: [
                              Container(
                                width: valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width >=
                                          FFAppState().desktopThreshold
                                      ? (MediaQuery.sizeOf(context).width * 0.5)
                                      : (MediaQuery.sizeOf(context).width),
                                  720.0,
                                ),
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState()
                                                    .desktopHighThreshold
                                            ? 100.0
                                            : (MediaQuery.sizeOf(context)
                                                        .width >=
                                                    FFAppState()
                                                        .desktopThreshold
                                                ? 40.0
                                                : 40.0),
                                        0.0,
                                      ),
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState().desktopThreshold
                                            ? 0.0
                                            : 40.0,
                                        0.0,
                                      ),
                                      0.0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      RichText(
                                        textScaler:
                                            MediaQuery.of(context).textScaler,
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: 'Trade your ',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displayLarge
                                                      .override(
                                                        fontFamily: 'Usual',
                                                        fontSize: 72.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            TextSpan(
                                              text: 'insights',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .displayLarge
                                                      .override(
                                                        fontFamily: 'Usual',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .specialColor,
                                                        fontSize: 72.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            )
                                          ],
                                          style: FlutterFlowTheme.of(context)
                                              .displayLarge
                                              .override(
                                                fontFamily: 'Usual',
                                                fontSize: 72.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                                lineHeight: 1.5,
                                              ),
                                        ),
                                      ).animateOnPageLoad(animationsMap[
                                          'richTextOnPageLoadAnimation']!),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child: Text(
                                          'Trade where the action is! WinzTrade – the ultimate platform for event-based trading',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Usual',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                                lineHeight: 1.5,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation1']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Dive into dynamic markets and boost your earnings',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Usual',
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation2']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 10.0, 0.0, 0.0),
                                        child: Text(
                                          'Your first trade is on us',
                                          style: FlutterFlowTheme.of(context)
                                              .headlineSmall
                                              .override(
                                                fontFamily: 'Usual',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .specialColor,
                                                fontSize: 20.0,
                                                letterSpacing: 0.0,
                                                useGoogleFonts: false,
                                              ),
                                        ).animateOnPageLoad(animationsMap[
                                            'textOnPageLoadAnimation3']!),
                                      ),
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 20.0, 0.0, 0.0),
                                        child:
                                            StreamBuilder<List<MacrosRecord>>(
                                          stream: queryMacrosRecord(
                                            singleRecord: true,
                                          ),
                                          builder: (context, snapshot) {
                                            // Customize what your widget looks like when it's loading.
                                            if (!snapshot.hasData) {
                                              return const ShimmerAppLinksWidget();
                                            }
                                            List<MacrosRecord>
                                                rowMacrosRecordList =
                                                snapshot.data!;
                                            // Return an empty Container when the item does not exist.
                                            if (snapshot.data!.isEmpty) {
                                              return Container();
                                            }
                                            final rowMacrosRecord =
                                                rowMacrosRecordList.isNotEmpty
                                                    ? rowMacrosRecordList.first
                                                    : null;

                                            return Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await launchURL(
                                                        rowMacrosRecord!
                                                            .appurlAndroid);
                                                  },
                                                  child: ClipRRect(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            8.0),
                                                    child: Image.network(
                                                      'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/55soyfsv02i7/playstore.png',
                                                      height: 40.0,
                                                      fit: BoxFit.cover,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          20.0, 0.0, 0.0, 0.0),
                                                  child: InkWell(
                                                    splashColor:
                                                        Colors.transparent,
                                                    focusColor:
                                                        Colors.transparent,
                                                    hoverColor:
                                                        Colors.transparent,
                                                    highlightColor:
                                                        Colors.transparent,
                                                    onTap: () async {
                                                      await launchURL(
                                                          rowMacrosRecord!
                                                              .appurlIos);
                                                    },
                                                    child: ClipRRect(
                                                      borderRadius:
                                                          BorderRadius.circular(
                                                              8.0),
                                                      child: Image.network(
                                                        'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/9i1xo5vkkhza/appstore.png',
                                                        height: 40.0,
                                                        fit: BoxFit.cover,
                                                      ),
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Container(
                                width: valueOrDefault<double>(
                                  MediaQuery.sizeOf(context).width >=
                                          FFAppState().desktopThreshold
                                      ? (MediaQuery.sizeOf(context).width * 0.5)
                                      : (MediaQuery.sizeOf(context).width),
                                  720.0,
                                ),
                                decoration: const BoxDecoration(),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState().desktopThreshold
                                            ? 40.0
                                            : 40.0,
                                        720.0,
                                      ),
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState()
                                                    .desktopHighThreshold
                                            ? 100.0
                                            : (MediaQuery.sizeOf(context)
                                                        .width >=
                                                    FFAppState()
                                                        .desktopThreshold
                                                ? 40.0
                                                : 40.0),
                                        0.0,
                                      ),
                                      0.0),
                                  child: ClipRRect(
                                    borderRadius: BorderRadius.circular(8.0),
                                    child: Image.asset(
                                      'assets/images/front_image.png',
                                      height: MediaQuery.sizeOf(context)
                                                  .width >=
                                              FFAppState().desktopHighThreshold
                                          ? (MediaQuery.sizeOf(context).height *
                                              0.8)
                                          : (MediaQuery.sizeOf(context).width >=
                                                  FFAppState().desktopThreshold
                                              ? (MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.5)
                                              : (MediaQuery.sizeOf(context)
                                                      .height *
                                                  0.65)),
                                      fit: BoxFit.contain,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).width >=
                                              FFAppState().desktopHighThreshold
                                          ? 60.0
                                          : (MediaQuery.sizeOf(context).width >=
                                                  FFAppState().desktopThreshold
                                              ? 40.0
                                              : 20.0),
                                      0.0,
                                    ),
                                    0.0,
                                    20.0,
                                    0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 8.0,
                                      height: MediaQuery.sizeOf(context)
                                                  .width >=
                                              FFAppState().desktopHighThreshold
                                          ? 160.0
                                          : (MediaQuery.sizeOf(context).width >=
                                                  FFAppState().desktopThreshold
                                              ? 160.0
                                              : 330.0),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .specialColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? 40.0
                                                : (MediaQuery.sizeOf(context)
                                                            .width >=
                                                        FFAppState()
                                                            .desktopThreshold
                                                    ? 40.0
                                                    : 20.0),
                                            0.0,
                                          ),
                                          0.0,
                                          0.0,
                                          0.0),
                                      child: Container(
                                        width: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >=
                                                  FFAppState()
                                                      .desktopHighThreshold
                                              ? (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.6)
                                              : (MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopThreshold
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.75)
                                                  : (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.8)),
                                          600.0,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'How does it work',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Usual',
                                                        fontSize: 60.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      0.0, 20.0, 0.0, 0.0),
                                              child: Text(
                                                'Event-based trading is a newly growing concept. Though it has parallels with the stock market, there are significant differences. Following are the steps to make your journey in event-based trading smooth through WinzTrade',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .secondaryText,
                                                          fontSize: 20.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 60.0, 0.0, 0.0),
                                child: Wrap(
                                  spacing: 50.0,
                                  runSpacing: 40.0,
                                  alignment: WrapAlignment.spaceEvenly,
                                  crossAxisAlignment: WrapCrossAlignment.start,
                                  direction: Axis.horizontal,
                                  runAlignment: WrapAlignment.start,
                                  verticalDirection: VerticalDirection.down,
                                  clipBehavior: Clip.none,
                                  children: [
                                    Wrap(
                                      spacing: 50.0,
                                      runSpacing: 40.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.14)
                                                : valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width >=
                                                            FFAppState()
                                                                .desktopThreshold
                                                        ? (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.2)
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.54),
                                                    212.0,
                                                  ),
                                            212.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.tradeStepsModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const TradeStepsWidget(
                                              stepImage:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/29w0pqxjspzn/step1.png',
                                              stepTitle:
                                                  'Select Category and Event',
                                              stepDesc:
                                                  'WinzTrade has various categories like sports, finance and media, each of which contains various ongoing events. Select an event about which you have sufficient knowledge to make an opinion',
                                            ),
                                          ),
                                        ),
                                        if (MediaQuery.sizeOf(context).width >=
                                            FFAppState().desktopThreshold)
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 60.0, 0.0, 0.0),
                                            child: Container(
                                              width: 2.0,
                                              height: 280.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                          ),
                                        Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.14)
                                                : valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width >=
                                                            FFAppState()
                                                                .desktopThreshold
                                                        ? (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.2)
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.54),
                                                    212.0,
                                                  ),
                                            212.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.tradeStepsModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const TradeStepsWidget(
                                              stepImage:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/8mlqmx68cc8t/step2.png',
                                              stepTitle: 'Buy a Trade',
                                              stepDesc:
                                                  'Based on your insights and provided reading materials, choose one of the two possibilities that could be the event\'s outcome. Set the trade quantity that suits your risk-reward appetite',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                    if (MediaQuery.sizeOf(context).width >=
                                        FFAppState().desktopHighThreshold)
                                      Padding(
                                        padding: const EdgeInsetsDirectional.fromSTEB(
                                            0.0, 60.0, 0.0, 0.0),
                                        child: Container(
                                          width: 2.0,
                                          height: 280.0,
                                          decoration: BoxDecoration(
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                          ),
                                        ),
                                      ),
                                    Wrap(
                                      spacing: 50.0,
                                      runSpacing: 40.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.14)
                                                : valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width >=
                                                            FFAppState()
                                                                .desktopThreshold
                                                        ? (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.2)
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.54),
                                                    212.0,
                                                  ),
                                            212.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.tradeStepsModel3,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const TradeStepsWidget(
                                              stepImage:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/3csyyyqdvu1v/step3.png',
                                              stepTitle: 'Wait for Results',
                                              stepDesc:
                                                  'Till the event isn’t over, Users can buy multiple trades on both possibilities. After that, you can place no more trades on it. You can check your trade orders on the My Events page. ',
                                            ),
                                          ),
                                        ),
                                        if (MediaQuery.sizeOf(context).width >=
                                            FFAppState().desktopThreshold)
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 60.0, 0.0, 0.0),
                                            child: Container(
                                              width: 2.0,
                                              height: 280.0,
                                              decoration: BoxDecoration(
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                              ),
                                            ),
                                          ),
                                        Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.14)
                                                : valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width >=
                                                            FFAppState()
                                                                .desktopThreshold
                                                        ? (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.2)
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.54),
                                                    212.0,
                                                  ),
                                            212.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.tradeStepsModel4,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: const TradeStepsWidget(
                                              stepImage:
                                                  'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/2mkzhj6ux8uk/step4.png',
                                              stepTitle: 'Check Results',
                                              stepDesc:
                                                  'Once the outcome of the event becomes clear, you instantly get the earnings credited to your wallet for all the correct trades. Check the leaderboard to assess your standing with other users',
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              if (MediaQuery.sizeOf(context).width <
                                  FFAppState().desktopHighThreshold)
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState()
                                                    .desktopHighThreshold
                                            ? 60.0
                                            : (MediaQuery.sizeOf(context)
                                                        .width >=
                                                    FFAppState()
                                                        .desktopThreshold
                                                ? 40.0
                                                : 20.0),
                                        0.0,
                                      ),
                                      0.0,
                                      20.0,
                                      0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 8.0,
                                        height:
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? 160.0
                                                : (MediaQuery.sizeOf(context)
                                                            .width >=
                                                        FFAppState()
                                                            .desktopThreshold
                                                    ? 160.0
                                                    : 330.0),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .specialColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopHighThreshold
                                                  ? 40.0
                                                  : (MediaQuery.sizeOf(context)
                                                              .width >=
                                                          FFAppState()
                                                              .desktopThreshold
                                                      ? 40.0
                                                      : 20.0),
                                              0.0,
                                            ),
                                            0.0,
                                            0.0,
                                            0.0),
                                        child: Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.6)
                                                : (MediaQuery.sizeOf(
                                                                context)
                                                            .width >=
                                                        FFAppState()
                                                            .desktopThreshold
                                                    ? (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.75)
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.8)),
                                            600.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Key Features',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          fontSize: 60.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: Text(
                                                  'WinzTrade is designed with your convenience in mind. Offering a range of features that redefine your trading experience, we’ve tailored WinzTrade to cater to your every need',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Usual',
                                                        color:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .secondaryText,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              Align(
                                alignment: const AlignmentDirectional(0.0, 0.0),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0,
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState()
                                                    .desktopHighThreshold
                                            ? 0.0
                                            : 60.0,
                                        0.0,
                                      ),
                                      0.0,
                                      0.0),
                                  child: Stack(
                                    alignment: const AlignmentDirectional(0.0, 0.0),
                                    children: [
                                      if (MediaQuery.sizeOf(context).width >=
                                          FFAppState().desktopHighThreshold)
                                        Align(
                                          alignment:
                                              const AlignmentDirectional(0.0, 0.0),
                                          child: Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    100.0, 0.0, 100.0, 0.0),
                                            child: Container(
                                              width: double.infinity,
                                              decoration: BoxDecoration(
                                                border: Border.all(
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  width: 1.0,
                                                ),
                                              ),
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                children: [
                                                  Expanded(
                                                    flex: 5,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        image: DecorationImage(
                                                          fit: BoxFit.cover,
                                                          image: Image.network(
                                                            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/08m4gx3nu085/feature_bg.png',
                                                          ).image,
                                                        ),
                                                        border: Border.all(
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    40.0,
                                                                    200.0,
                                                                    40.0,
                                                                    200.0),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          children: [
                                                            Text(
                                                              'Key Features',
                                                              style: FlutterFlowTheme
                                                                      .of(context)
                                                                  .bodyMedium
                                                                  .override(
                                                                    fontFamily:
                                                                        'Usual',
                                                                    fontSize:
                                                                        60.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    fontWeight:
                                                                        FontWeight
                                                                            .normal,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                            ),
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          10.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'WinzTrade is designed with your convenience in mind. Offering a range of features that redefine your trading experience, we’ve tailored WinzTrade to cater to your every need',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Usual',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  Expanded(
                                                    flex: 12,
                                                    child: Container(
                                                      decoration: BoxDecoration(
                                                        border: Border.all(
                                                          width: 1.0,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopHighThreshold
                                                  ? 100.0
                                                  : 0.0,
                                              0.0,
                                            ),
                                            0.0,
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopHighThreshold
                                                  ? 100.0
                                                  : 0.0,
                                              0.0,
                                            ),
                                            0.0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            if (MediaQuery.sizeOf(context)
                                                    .width >=
                                                FFAppState()
                                                    .desktopHighThreshold)
                                              Expanded(
                                                flex: 5,
                                                child: Container(
                                                  decoration: const BoxDecoration(),
                                                ),
                                              ),
                                            Expanded(
                                              flex: 12,
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >=
                                                                  FFAppState()
                                                                      .desktopHighThreshold
                                                              ? 0.0
                                                              : 60.0,
                                                          0.0,
                                                        ),
                                                        0.0,
                                                        valueOrDefault<double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >=
                                                                  FFAppState()
                                                                      .desktopHighThreshold
                                                              ? 0.0
                                                              : 60.0,
                                                          0.0,
                                                        ),
                                                        0.0),
                                                child: Wrap(
                                                  spacing: 10.0,
                                                  runSpacing: 0.0,
                                                  alignment:
                                                      WrapAlignment.center,
                                                  crossAxisAlignment:
                                                      WrapCrossAlignment.start,
                                                  direction: Axis.horizontal,
                                                  runAlignment:
                                                      WrapAlignment.start,
                                                  verticalDirection:
                                                      VerticalDirection.down,
                                                  clipBehavior: Clip.none,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  8.0,
                                                                  0.0,
                                                                  4.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width:
                                                                valueOrDefault<
                                                                    double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      FFAppState()
                                                                          .desktopHighThreshold
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.18)
                                                                  : valueOrDefault<
                                                                      double>(
                                                                      MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                          ? (MediaQuery.sizeOf(context).width *
                                                                              0.26)
                                                                          : (MediaQuery.sizeOf(context).width *
                                                                              0.7),
                                                                      259.0,
                                                                    ),
                                                              259.0,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .appFeatureModel1,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  AppFeatureWidget(
                                                                featureIcon:
                                                                    Icon(
                                                                  Icons
                                                                      .attach_money_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  size: 40.0,
                                                                ),
                                                                featureTitle:
                                                                    'Instant Deposit & Withdrawal to Bank',
                                                                featureDesc:
                                                                    'Via UPI and multiple other modes of payment with just a few taps you can initiate instant deposits to fund your account',
                                                              ),
                                                            ),
                                                          ),
                                                          Padding(
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        20.0,
                                                                        0.0,
                                                                        0.0),
                                                            child: Container(
                                                              width:
                                                                  valueOrDefault<
                                                                      double>(
                                                                MediaQuery.sizeOf(context)
                                                                            .width >=
                                                                        FFAppState()
                                                                            .desktopHighThreshold
                                                                    ? (MediaQuery.sizeOf(context)
                                                                            .width *
                                                                        0.18)
                                                                    : valueOrDefault<
                                                                        double>(
                                                                        MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                            ? (MediaQuery.sizeOf(context).width *
                                                                                0.26)
                                                                            : (MediaQuery.sizeOf(context).width *
                                                                                0.7),
                                                                        259.0,
                                                                      ),
                                                                259.0,
                                                              ),
                                                              decoration:
                                                                  const BoxDecoration(),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .appFeatureModel2,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    AppFeatureWidget(
                                                                  featureIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .support_agent_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 40.0,
                                                                  ),
                                                                  featureTitle:
                                                                      '24x7 Live Support',
                                                                  featureDesc:
                                                                      'Via Email/Chat, our team is committed to assist you round the clock for any inquiries, assistance, clarification or suggestions',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                valueOrDefault<
                                                                    double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      FFAppState()
                                                                          .desktopHighThreshold
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.18)
                                                                  : valueOrDefault<
                                                                      double>(
                                                                      MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                          ? (MediaQuery.sizeOf(context).width *
                                                                              0.26)
                                                                          : (MediaQuery.sizeOf(context).width *
                                                                              0.7),
                                                                      259.0,
                                                                    ),
                                                              259.0,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .appFeatureModel3,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    AppFeatureWidget(
                                                                  featureIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .edit_document,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 40.0,
                                                                  ),
                                                                  featureTitle:
                                                                      'No GST',
                                                                  featureDesc:
                                                                      'For every rupee debited as GST on your deposit, an equivalent bonus will be credited. Hence you are not impacted by the 28% GST rule',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width >=
                                                                            FFAppState().desktopThreshold
                                                                        ? 100.0
                                                                        : 20.0,
                                                                    0.0,
                                                                  ),
                                                                  4.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width:
                                                                valueOrDefault<
                                                                    double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      FFAppState()
                                                                          .desktopHighThreshold
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.18)
                                                                  : valueOrDefault<
                                                                      double>(
                                                                      MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                          ? (MediaQuery.sizeOf(context).width *
                                                                              0.26)
                                                                          : (MediaQuery.sizeOf(context).width *
                                                                              0.7),
                                                                      259.0,
                                                                    ),
                                                              259.0,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .appFeatureModel4,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  AppFeatureWidget(
                                                                featureIcon:
                                                                    Icon(
                                                                  Icons
                                                                      .verified_user_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  size: 40.0,
                                                                ),
                                                                featureTitle:
                                                                    'Quick Profile Verification',
                                                                featureDesc:
                                                                    'Profile Verification is required for proceeding with withdrawals. Our advanced verification system is designed to efficiently authenticate your identity',
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                valueOrDefault<
                                                                    double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      FFAppState()
                                                                          .desktopHighThreshold
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.18)
                                                                  : valueOrDefault<
                                                                      double>(
                                                                      MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                          ? (MediaQuery.sizeOf(context).width *
                                                                              0.26)
                                                                          : (MediaQuery.sizeOf(context).width *
                                                                              0.7),
                                                                      259.0,
                                                                    ),
                                                              259.0,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .appFeatureModel5,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    AppFeatureWidget(
                                                                  featureIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .people_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 40.0,
                                                                  ),
                                                                  featureTitle:
                                                                      'Refer & Earn',
                                                                  featureDesc:
                                                                      'Refer WinzTrade to your friends and family. Simply share the unique referral code, so both of you can earn ₹10 referral bonus',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                valueOrDefault<
                                                                    double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      FFAppState()
                                                                          .desktopHighThreshold
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.18)
                                                                  : valueOrDefault<
                                                                      double>(
                                                                      MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                          ? (MediaQuery.sizeOf(context).width *
                                                                              0.26)
                                                                          : (MediaQuery.sizeOf(context).width *
                                                                              0.7),
                                                                      259.0,
                                                                    ),
                                                              259.0,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .appFeatureModel6,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    AppFeatureWidget(
                                                                  featureIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .settings_suggest_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 40.0,
                                                                  ),
                                                                  featureTitle:
                                                                      'Suggest & Earn',
                                                                  featureDesc:
                                                                      'By suggesting us new categories/events, feature, improvement, report bug/problem, you can earn from ₹20 up to ₹10000',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  4.0,
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width >=
                                                                            FFAppState().desktopThreshold
                                                                        ? 200.0
                                                                        : 20.0,
                                                                    0.0,
                                                                  ),
                                                                  8.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        children: [
                                                          Container(
                                                            width:
                                                                valueOrDefault<
                                                                    double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      FFAppState()
                                                                          .desktopHighThreshold
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.18)
                                                                  : valueOrDefault<
                                                                      double>(
                                                                      MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                          ? (MediaQuery.sizeOf(context).width *
                                                                              0.26)
                                                                          : (MediaQuery.sizeOf(context).width *
                                                                              0.7),
                                                                      259.0,
                                                                    ),
                                                              259.0,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child:
                                                                wrapWithModel(
                                                              model: _model
                                                                  .appFeatureModel7,
                                                              updateCallback: () =>
                                                                  safeSetState(
                                                                      () {}),
                                                              child:
                                                                  AppFeatureWidget(
                                                                featureIcon:
                                                                    Icon(
                                                                  Icons
                                                                      .person_add_alt_rounded,
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .error,
                                                                  size: 40.0,
                                                                ),
                                                                featureTitle:
                                                                    'Easy Sign Up',
                                                                featureDesc:
                                                                    'With just your phone number, you can create an account effortlessly and dive into the world of event-based trading on WinzTrade',
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                valueOrDefault<
                                                                    double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      FFAppState()
                                                                          .desktopHighThreshold
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.18)
                                                                  : valueOrDefault<
                                                                      double>(
                                                                      MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                          ? (MediaQuery.sizeOf(context).width *
                                                                              0.26)
                                                                          : (MediaQuery.sizeOf(context).width *
                                                                              0.7),
                                                                      259.0,
                                                                    ),
                                                              259.0,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .appFeatureModel8,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    AppFeatureWidget(
                                                                  featureIcon:
                                                                      Icon(
                                                                    Icons
                                                                        .account_balance_wallet_rounded,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 40.0,
                                                                  ),
                                                                  featureTitle:
                                                                      'Deposited/Earning Balance',
                                                                  featureDesc:
                                                                      'The dual balance system: Deposited Balance for trades and Earning Balance for profits, allowing flexible withdrawals or reinvestments',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                          Container(
                                                            width:
                                                                valueOrDefault<
                                                                    double>(
                                                              MediaQuery.sizeOf(
                                                                              context)
                                                                          .width >=
                                                                      FFAppState()
                                                                          .desktopHighThreshold
                                                                  ? (MediaQuery.sizeOf(
                                                                              context)
                                                                          .width *
                                                                      0.18)
                                                                  : valueOrDefault<
                                                                      double>(
                                                                      MediaQuery.sizeOf(context).width >= FFAppState().desktopThreshold
                                                                          ? (MediaQuery.sizeOf(context).width *
                                                                              0.26)
                                                                          : (MediaQuery.sizeOf(context).width *
                                                                              0.7),
                                                                      259.0,
                                                                    ),
                                                              259.0,
                                                            ),
                                                            decoration:
                                                                const BoxDecoration(),
                                                            child: Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          0.0,
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child:
                                                                  wrapWithModel(
                                                                model: _model
                                                                    .appFeatureModel9,
                                                                updateCallback: () =>
                                                                    safeSetState(
                                                                        () {}),
                                                                child:
                                                                    AppFeatureWidget(
                                                                  featureIcon:
                                                                      FaIcon(
                                                                    FontAwesomeIcons
                                                                        .gift,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                    size: 40.0,
                                                                  ),
                                                                  featureTitle:
                                                                      'Welcome Bonus',
                                                                  featureDesc:
                                                                      'New users at WinzTrade - Enjoy a ₹10 welcome bonus upon signup, allowing you to participate in your very first trade with a boost',
                                                                ),
                                                              ),
                                                            ),
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryText,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState()
                                                    .desktopHighThreshold
                                            ? 60.0
                                            : (MediaQuery.sizeOf(context)
                                                        .width >=
                                                    FFAppState()
                                                        .desktopThreshold
                                                ? 40.0
                                                : 20.0),
                                        0.0,
                                      ),
                                      20.0,
                                      20.0,
                                      0.0),
                                  child: Row(
                                    mainAxisSize: MainAxisSize.max,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 8.0,
                                        height:
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? 160.0
                                                : (MediaQuery.sizeOf(context)
                                                            .width >=
                                                        FFAppState()
                                                            .desktopThreshold
                                                    ? 160.0
                                                    : 330.0),
                                        decoration: BoxDecoration(
                                          color: FlutterFlowTheme.of(context)
                                              .specialColor,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopHighThreshold
                                                  ? 40.0
                                                  : (MediaQuery.sizeOf(context)
                                                              .width >=
                                                          FFAppState()
                                                              .desktopThreshold
                                                      ? 40.0
                                                      : 20.0),
                                              0.0,
                                            ),
                                            0.0,
                                            0.0,
                                            0.0),
                                        child: Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.6)
                                                : (MediaQuery.sizeOf(
                                                                context)
                                                            .width >=
                                                        FFAppState()
                                                            .desktopThreshold
                                                    ? (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.75)
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.8)),
                                            720.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Empower your Trades',
                                                textAlign: TextAlign.start,
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                          fontSize: 60.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 20.0, 0.0, 0.0),
                                                child: Text(
                                                  'Explore a range of dynamic features designed to elevate your event-trading experience on WinzTrade, each crafted to ensure flexibility, transparency and success',
                                                  textAlign: TextAlign.start,
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Usual',
                                                        color: FlutterFlowTheme
                                                                .of(context)
                                                            .secondaryBackground,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        useGoogleFonts: false,
                                                      ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 60.0, 0.0, 60.0),
                                  child: Wrap(
                                    spacing: 50.0,
                                    runSpacing: 40.0,
                                    alignment: WrapAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.start,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Wrap(
                                        spacing: 50.0,
                                        runSpacing: 40.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            width: valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopHighThreshold
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.18)
                                                  : valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                                  .width >=
                                                              FFAppState()
                                                                  .desktopThreshold
                                                          ? (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.26)
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.7),
                                                      259.0,
                                                    ),
                                              259.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.tradeFeatureModel1,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TradeFeatureWidget(
                                                featureIcon: FaIcon(
                                                  FontAwesomeIcons
                                                      .sortAlphaDown,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  size: 40.0,
                                                ),
                                                featureTitle: 'Diverse Events',
                                                featureDesc:
                                                    'WinzTrade empowers you to engage in thrilling trades across various categories, including sports, finance, and media.',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopHighThreshold
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.18)
                                                  : valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                                  .width >=
                                                              FFAppState()
                                                                  .desktopThreshold
                                                          ? (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.26)
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.7),
                                                      259.0,
                                                    ),
                                              259.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.tradeFeatureModel2,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TradeFeatureWidget(
                                                featureIcon: Icon(
                                                  Icons.memory_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  size: 40.0,
                                                ),
                                                featureTitle:
                                                    'No Illiquidity/Slippage',
                                                featureDesc:
                                                    'Using sophisticated mathematical models to determine event prices, we eliminate the need for a counterpart to complete a trade',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      Wrap(
                                        spacing: 50.0,
                                        runSpacing: 40.0,
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Container(
                                            width: valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopHighThreshold
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.18)
                                                  : valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                                  .width >=
                                                              FFAppState()
                                                                  .desktopThreshold
                                                          ? (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.26)
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.7),
                                                      259.0,
                                                    ),
                                              259.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.tradeFeatureModel3,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TradeFeatureWidget(
                                                featureIcon: Icon(
                                                  Icons
                                                      .stacked_line_chart_rounded,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  size: 40.0,
                                                ),
                                                featureTitle:
                                                    'Earn upto 20x Returns',
                                                featureDesc:
                                                    'Unlock the potential for high returns - opportunities abound for users to earn up to 20 times their initial investment',
                                              ),
                                            ),
                                          ),
                                          Container(
                                            width: valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopHighThreshold
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.18)
                                                  : valueOrDefault<double>(
                                                      MediaQuery.sizeOf(context)
                                                                  .width >=
                                                              FFAppState()
                                                                  .desktopThreshold
                                                          ? (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.26)
                                                          : (MediaQuery.sizeOf(
                                                                      context)
                                                                  .width *
                                                              0.7),
                                                      259.0,
                                                    ),
                                              259.0,
                                            ),
                                            decoration: const BoxDecoration(),
                                            child: wrapWithModel(
                                              model: _model.tradeFeatureModel4,
                                              updateCallback: () =>
                                                  safeSetState(() {}),
                                              child: TradeFeatureWidget(
                                                featureIcon: Icon(
                                                  Icons.iso,
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .success,
                                                  size: 40.0,
                                                ),
                                                featureTitle:
                                                    'Adjust Risk-Reward',
                                                featureDesc:
                                                    'Fine-tune the strategy by adjusting the quantity of your trades. Want to amplify your potential earnings? Increase the trade quantity',
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).width >=
                                              FFAppState().desktopHighThreshold
                                          ? 60.0
                                          : (MediaQuery.sizeOf(context).width >=
                                                  FFAppState().desktopThreshold
                                              ? 40.0
                                              : 20.0),
                                      0.0,
                                    ),
                                    0.0,
                                    20.0,
                                    0.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 8.0,
                                      height: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState()
                                                    .desktopHighThreshold
                                            ? 80.0
                                            : (MediaQuery.sizeOf(context)
                                                        .width >=
                                                    FFAppState()
                                                        .desktopThreshold
                                                ? 80.0
                                                : 160.0),
                                        80.0,
                                      ),
                                      decoration: BoxDecoration(
                                        color: FlutterFlowTheme.of(context)
                                            .specialColor,
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(
                                          valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? 40.0
                                                : (MediaQuery.sizeOf(context)
                                                            .width >=
                                                        FFAppState()
                                                            .desktopThreshold
                                                    ? 40.0
                                                    : 20.0),
                                            0.0,
                                          ),
                                          0.0,
                                          0.0,
                                          0.0),
                                      child: Container(
                                        width: valueOrDefault<double>(
                                          MediaQuery.sizeOf(context).width >=
                                                  FFAppState()
                                                      .desktopHighThreshold
                                              ? (MediaQuery.sizeOf(context)
                                                      .width *
                                                  0.6)
                                              : (MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopThreshold
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.75)
                                                  : (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.8)),
                                          600.0,
                                        ),
                                        decoration: const BoxDecoration(),
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              'Get in touch',
                                              textAlign: TextAlign.start,
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Usual',
                                                        fontSize: 60.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.normal,
                                                        useGoogleFonts: false,
                                                      ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsetsDirectional.fromSTEB(
                                    0.0, 60.0, 0.0, 0.0),
                                child: StreamBuilder<List<MacrosRecord>>(
                                  stream: queryMacrosRecord(
                                    singleRecord: true,
                                  ),
                                  builder: (context, snapshot) {
                                    // Customize what your widget looks like when it's loading.
                                    if (!snapshot.hasData) {
                                      return const ShimmerContactTilesWidget();
                                    }
                                    List<MacrosRecord> wrapMacrosRecordList =
                                        snapshot.data!;
                                    // Return an empty Container when the item does not exist.
                                    if (snapshot.data!.isEmpty) {
                                      return Container();
                                    }
                                    final wrapMacrosRecord =
                                        wrapMacrosRecordList.isNotEmpty
                                            ? wrapMacrosRecordList.first
                                            : null;

                                    return Wrap(
                                      spacing: 100.0,
                                      runSpacing: 40.0,
                                      alignment: WrapAlignment.start,
                                      crossAxisAlignment:
                                          WrapCrossAlignment.start,
                                      direction: Axis.horizontal,
                                      runAlignment: WrapAlignment.start,
                                      verticalDirection: VerticalDirection.down,
                                      clipBehavior: Clip.none,
                                      children: [
                                        Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.21)
                                                : valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width >=
                                                            FFAppState()
                                                                .desktopThreshold
                                                        ? (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.3)
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.8),
                                                    314.0,
                                                  ),
                                            314.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.contactTileModel1,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ContactTileWidget(
                                              contactIcon: FaIcon(
                                                FontAwesomeIcons.whatsapp,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 48.0,
                                              ),
                                              contactTitle: 'WhatsApp',
                                              contactSubtitle:
                                                  'Chat with us directly',
                                              contactLink:
                                                  'https://wa.me/${wrapMacrosRecord?.supportPhone}',
                                            ),
                                          ),
                                        ),
                                        Container(
                                          width: valueOrDefault<double>(
                                            MediaQuery.sizeOf(context).width >=
                                                    FFAppState()
                                                        .desktopHighThreshold
                                                ? (MediaQuery.sizeOf(context)
                                                        .width *
                                                    0.21)
                                                : valueOrDefault<double>(
                                                    MediaQuery.sizeOf(context)
                                                                .width >=
                                                            FFAppState()
                                                                .desktopThreshold
                                                        ? (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.3)
                                                        : (MediaQuery.sizeOf(
                                                                    context)
                                                                .width *
                                                            0.8),
                                                    314.0,
                                                  ),
                                            314.0,
                                          ),
                                          decoration: const BoxDecoration(),
                                          child: wrapWithModel(
                                            model: _model.contactTileModel2,
                                            updateCallback: () =>
                                                safeSetState(() {}),
                                            child: ContactTileWidget(
                                              contactIcon: Icon(
                                                Icons.mail_outline_rounded,
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .secondaryText,
                                                size: 48.0,
                                              ),
                                              contactTitle: 'Email',
                                              contactSubtitle:
                                                  'Contact us via mail',
                                              contactLink: wrapMacrosRecord!
                                                  .supportEmail,
                                            ),
                                          ),
                                        ),
                                      ],
                                    );
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 100.0, 0.0, 0.0),
                          child: Container(
                            width: double.infinity,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: const EdgeInsetsDirectional.fromSTEB(
                                      0.0, 20.0, 0.0, 10.0),
                                  child: Wrap(
                                    spacing: 40.0,
                                    runSpacing: 40.0,
                                    alignment: WrapAlignment.center,
                                    crossAxisAlignment:
                                        WrapCrossAlignment.start,
                                    direction: Axis.horizontal,
                                    runAlignment: WrapAlignment.center,
                                    verticalDirection: VerticalDirection.down,
                                    clipBehavior: Clip.none,
                                    children: [
                                      Column(
                                        mainAxisSize: MainAxisSize.max,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          Text(
                                            'App Information',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Usual',
                                                  color: FlutterFlowTheme.of(
                                                          context)
                                                      .primaryText,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                  useGoogleFonts: false,
                                                ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 10.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'AppInformation',
                                                  queryParameters: {
                                                    'docType': serializeParam(
                                                      'PrivacyPolicy',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Text(
                                                'Privacy Policy',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'AppInformation',
                                                  queryParameters: {
                                                    'docType': serializeParam(
                                                      'TermsConditions',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Text(
                                                'Terms & Conditions',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'AppInformation',
                                                  queryParameters: {
                                                    'docType': serializeParam(
                                                      'Legality',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Text(
                                                'Legality',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    0.0, 4.0, 0.0, 0.0),
                                            child: InkWell(
                                              splashColor: Colors.transparent,
                                              focusColor: Colors.transparent,
                                              hoverColor: Colors.transparent,
                                              highlightColor:
                                                  Colors.transparent,
                                              onTap: () async {
                                                context.pushNamed(
                                                  'AppInformation',
                                                  queryParameters: {
                                                    'docType': serializeParam(
                                                      'AccountDeletion',
                                                      ParamType.String,
                                                    ),
                                                  }.withoutNulls,
                                                );
                                              },
                                              child: Text(
                                                'Account Deletion',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                      StreamBuilder<List<MacrosRecord>>(
                                        stream: queryMacrosRecord(
                                          singleRecord: true,
                                        ),
                                        builder: (context, snapshot) {
                                          // Customize what your widget looks like when it's loading.
                                          if (!snapshot.hasData) {
                                            return const ShimmerFooterContactWidget();
                                          }
                                          List<MacrosRecord>
                                              columnMacrosRecordList =
                                              snapshot.data!;
                                          // Return an empty Container when the item does not exist.
                                          if (snapshot.data!.isEmpty) {
                                            return Container();
                                          }
                                          final columnMacrosRecord =
                                              columnMacrosRecordList.isNotEmpty
                                                  ? columnMacrosRecordList.first
                                                  : null;

                                          return Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'Support',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.w500,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 10.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await launchURL(
                                                        'https://wa.me/${columnMacrosRecord?.supportPhone}');
                                                  },
                                                  child: Text(
                                                    'WhatsApp',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                              Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        0.0, 4.0, 0.0, 0.0),
                                                child: InkWell(
                                                  splashColor:
                                                      Colors.transparent,
                                                  focusColor:
                                                      Colors.transparent,
                                                  hoverColor:
                                                      Colors.transparent,
                                                  highlightColor:
                                                      Colors.transparent,
                                                  onTap: () async {
                                                    await launchUrl(Uri(
                                                      scheme: 'mailto',
                                                      path: columnMacrosRecord!
                                                          .supportEmail,
                                                    ));
                                                  },
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      columnMacrosRecord
                                                          ?.supportEmail,
                                                      'Support Email',
                                                    ),
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .bodyMedium
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryText,
                                                          fontSize: 11.0,
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          decoration:
                                                              TextDecoration
                                                                  .underline,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          );
                                        },
                                      ),
                                    ],
                                  ),
                                ),
                                Divider(
                                  color:
                                      FlutterFlowTheme.of(context).primaryText,
                                ),
                                Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Text(
                                      'ZenithZone Technologies Private Limited',
                                      style: FlutterFlowTheme.of(context)
                                          .bodyMedium
                                          .override(
                                            fontFamily: 'Usual',
                                            color: FlutterFlowTheme.of(context)
                                                .primaryText,
                                            fontSize: 15.0,
                                            letterSpacing: 0.0,
                                            fontWeight: FontWeight.normal,
                                            useGoogleFonts: false,
                                          ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          20.0, 4.0, 20.0, 10.0),
                                      child: Text(
                                        'Plot No 56D, Abhilasha Complex, Trimurti Nagar, NIT Layout, Nagpur - 440022',
                                        textAlign: TextAlign.center,
                                        style: FlutterFlowTheme.of(context)
                                            .bodyMedium
                                            .override(
                                              fontFamily: 'Usual',
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              fontSize: 10.0,
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.normal,
                                              useGoogleFonts: false,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width >=
                                  FFAppState().desktopThreshold
                              ? 40.0
                              : 20.0,
                          259.0,
                        ),
                        20.0,
                        valueOrDefault<double>(
                          MediaQuery.sizeOf(context).width >=
                                  FFAppState().desktopThreshold
                              ? 40.0
                              : 20.0,
                          259.0,
                        ),
                        0.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(30.0),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(
                          sigmaX: 16.0,
                          sigmaY: 16.0,
                        ),
                        child: InkWell(
                          splashColor: Colors.transparent,
                          focusColor: Colors.transparent,
                          hoverColor: Colors.transparent,
                          highlightColor: Colors.transparent,
                          onTap: () async {
                            await _model.mainCol?.animateTo(
                              0,
                              duration: const Duration(milliseconds: 300),
                              curve: Curves.ease,
                            );
                          },
                          child: Container(
                            width: double.infinity,
                            height: 54.0,
                            decoration: BoxDecoration(
                              color: const Color(0x1F000000),
                              borderRadius: BorderRadius.circular(30.0),
                            ),
                            child: Align(
                              alignment: AlignmentDirectional(
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width >=
                                            FFAppState().desktopThreshold
                                        ? -1.0
                                        : 0.0,
                                    259.0,
                                  ),
                                  0.0),
                              child: Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(
                                    valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).width >=
                                              FFAppState().desktopThreshold
                                          ? 100.0
                                          : 0.0,
                                      259.0,
                                    ),
                                    6.0,
                                    0.0,
                                    6.0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.min,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    ClipRRect(
                                      borderRadius: BorderRadius.circular(8.0),
                                      child: Image.asset(
                                        'assets/images/logo_nobg.png',
                                        height: 48.0,
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                    Padding(
                                      padding: const EdgeInsetsDirectional.fromSTEB(
                                          10.0, 0.0, 0.0, 0.0),
                                      child: Text(
                                        'winztrade',
                                        style: FlutterFlowTheme.of(context)
                                            .headlineMedium
                                            .override(
                                              fontFamily: 'Montserrat',
                                              letterSpacing: 0.0,
                                              fontWeight: FontWeight.w500,
                                            ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ));
  }
}
