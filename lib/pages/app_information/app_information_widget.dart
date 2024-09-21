import '/backend/backend.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_html/flutter_html.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'app_information_model.dart';
export 'app_information_model.dart';

class AppInformationWidget extends StatefulWidget {
  const AppInformationWidget({
    super.key,
    String? docType,
  }) : docType = docType ?? 'TermsConditions';

  final String docType;

  @override
  State<AppInformationWidget> createState() => _AppInformationWidgetState();
}

class _AppInformationWidgetState extends State<AppInformationWidget> {
  late AppInformationModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => AppInformationModel());

    // On page load action.
    SchedulerBinding.instance.addPostFrameCallback((_) async {
      _model.docState = widget.docType;
      safeSetState(() {});
      _model.showAccountDelete = widget.docType == 'AccountDeletion';
      safeSetState(() {});
    });

    _model.mobileNumberTextController ??= TextEditingController();
    _model.mobileNumberFocusNode ??= FocusNode();

    _model.accountNumberTextController ??= TextEditingController();
    _model.accountNumberFocusNode ??= FocusNode();

    _model.ifscCodeTextController ??= TextEditingController();
    _model.ifscCodeFocusNode ??= FocusNode();

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

    return StreamBuilder<List<MacrosRecord>>(
      stream: queryMacrosRecord(
        singleRecord: true,
      ),
      builder: (context, snapshot) {
        // Customize what your widget looks like when it's loading.
        if (!snapshot.hasData) {
          return Scaffold(
            backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
            body: Center(
              child: SizedBox(
                width: 50.0,
                height: 50.0,
                child: CircularProgressIndicator(
                  valueColor: AlwaysStoppedAnimation<Color>(
                    FlutterFlowTheme.of(context).primary,
                  ),
                ),
              ),
            ),
          );
        }
        List<MacrosRecord> appInformationMacrosRecordList = snapshot.data!;
        // Return an empty Container when the item does not exist.
        if (snapshot.data!.isEmpty) {
          return Container();
        }
        final appInformationMacrosRecord =
            appInformationMacrosRecordList.isNotEmpty
                ? appInformationMacrosRecordList.first
                : null;

        return Title(
            title: 'App Info | WinzTrade',
            color: FlutterFlowTheme.of(context).primary.withAlpha(0XFF),
            child: GestureDetector(
              onTap: () => FocusScope.of(context).unfocus(),
              child: Scaffold(
                key: scaffoldKey,
                backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
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
                              padding: EdgeInsetsDirectional.fromSTEB(
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width >=
                                            FFAppState().desktopHighThreshold
                                        ? 100.0
                                        : (MediaQuery.sizeOf(context).width >=
                                                FFAppState().desktopThreshold
                                            ? 40.0
                                            : 20.0),
                                    0.0,
                                  ),
                                  114.0,
                                  valueOrDefault<double>(
                                    MediaQuery.sizeOf(context).width >=
                                            FFAppState().desktopHighThreshold
                                        ? 100.0
                                        : (MediaQuery.sizeOf(context).width >=
                                                FFAppState().desktopThreshold
                                            ? 40.0
                                            : 20.0),
                                    0.0,
                                  ),
                                  0.0),
                              child: Wrap(
                                spacing: 30.0,
                                runSpacing: 50.0,
                                alignment: WrapAlignment.start,
                                crossAxisAlignment: WrapCrossAlignment.start,
                                direction: Axis.horizontal,
                                runAlignment: WrapAlignment.start,
                                verticalDirection: VerticalDirection.down,
                                clipBehavior: Clip.none,
                                children: [
                                  if (!_model.showAccountDelete)
                                    Container(
                                      width: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState()
                                                    .desktopHighThreshold
                                            ? (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5)
                                            : valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width >=
                                                        FFAppState()
                                                            .desktopThreshold
                                                    ? (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6)
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.9),
                                                720.0,
                                              ),
                                        720.0,
                                      ),
                                      decoration: const BoxDecoration(),
                                      child: Html(
                                        data: (String documentHTML) {
                                          return documentHTML.replaceAll(
                                              "background-color:black;", "");
                                        }((_model.docState == 'TermsConditions'
                                            ? appInformationMacrosRecord!
                                                .termsConditions
                                            : (_model.docState ==
                                                    'PrivacyPolicy'
                                                ? appInformationMacrosRecord!
                                                    .privacyPolicy
                                                : (_model.docState == 'Legality'
                                                    ? appInformationMacrosRecord!
                                                        .legality
                                                    : appInformationMacrosRecord!
                                                        .termsConditions)))),
                                        onLinkTap: (url, _, __) =>
                                            launchURL(url!),
                                      ),
                                    ),
                                  if (_model.showAccountDelete)
                                    Container(
                                      width: valueOrDefault<double>(
                                        MediaQuery.sizeOf(context).width >=
                                                FFAppState()
                                                    .desktopHighThreshold
                                            ? (MediaQuery.sizeOf(context)
                                                    .width *
                                                0.5)
                                            : valueOrDefault<double>(
                                                MediaQuery.sizeOf(context)
                                                            .width >=
                                                        FFAppState()
                                                            .desktopThreshold
                                                    ? (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.6)
                                                    : (MediaQuery.sizeOf(
                                                                context)
                                                            .width *
                                                        0.9),
                                                720.0,
                                              ),
                                        720.0,
                                      ),
                                      decoration: const BoxDecoration(),
                                      child: SingleChildScrollView(
                                        controller: _model.columnController,
                                        child: Column(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      valueOrDefault<double>(
                                                        MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >=
                                                                FFAppState()
                                                                    .desktopHighThreshold
                                                            ? 0.0
                                                            : (MediaQuery.sizeOf(
                                                                            context)
                                                                        .width >=
                                                                    FFAppState()
                                                                        .desktopThreshold
                                                                ? 0.0
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
                                                    height: MediaQuery.sizeOf(
                                                                    context)
                                                                .width >=
                                                            FFAppState()
                                                                .desktopHighThreshold
                                                        ? 160.0
                                                        : (MediaQuery.sizeOf(
                                                                        context)
                                                                    .width >=
                                                                FFAppState()
                                                                    .desktopThreshold
                                                            ? 160.0
                                                            : 250.0),
                                                    decoration: BoxDecoration(
                                                      color:
                                                          FlutterFlowTheme.of(
                                                                  context)
                                                              .specialColor,
                                                    ),
                                                  ),
                                                  Expanded(
                                                    child: Padding(
                                                      padding:
                                                          EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  valueOrDefault<
                                                                      double>(
                                                                    MediaQuery.sizeOf(context).width >=
                                                                            FFAppState()
                                                                                .desktopHighThreshold
                                                                        ? 40.0
                                                                        : (MediaQuery.sizeOf(context).width >=
                                                                                FFAppState().desktopThreshold
                                                                            ? 40.0
                                                                            : 20.0),
                                                                    0.0,
                                                                  ),
                                                                  0.0,
                                                                  0.0,
                                                                  0.0),
                                                      child: Container(
                                                        width: valueOrDefault<
                                                            double>(
                                                          MediaQuery.sizeOf(
                                                                          context)
                                                                      .width >=
                                                                  FFAppState()
                                                                      .desktopHighThreshold
                                                              ? (MediaQuery.sizeOf(
                                                                          context)
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
                                                        decoration:
                                                            const BoxDecoration(),
                                                        child: Column(
                                                          mainAxisSize:
                                                              MainAxisSize.max,
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                              'Account Deletion',
                                                              textAlign:
                                                                  TextAlign
                                                                      .start,
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
                                                                          20.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'To delete your account, please fill in the details below and submit the request',
                                                                textAlign:
                                                                    TextAlign
                                                                        .start,
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Usual',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondaryText,
                                                                      fontSize:
                                                                          20.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .w300,
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
                                                ],
                                              ),
                                            ),
                                            Align(
                                              alignment: const AlignmentDirectional(
                                                  0.0, 0.0),
                                              child: Form(
                                                key: _model.formKey,
                                                autovalidateMode:
                                                    AutovalidateMode.disabled,
                                                child: Column(
                                                  mainAxisSize:
                                                      MainAxisSize.max,
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.start,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  32.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Mobile Number',
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .headlineMedium
                                                            .override(
                                                              fontFamily:
                                                                  'Usual',
                                                              fontSize: 14.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  8.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Column(
                                                        mainAxisSize:
                                                            MainAxisSize.max,
                                                        crossAxisAlignment:
                                                            CrossAxisAlignment
                                                                .start,
                                                        children: [
                                                          Container(
                                                            width:
                                                                double.infinity,
                                                            decoration:
                                                                BoxDecoration(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryBackground,
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          4.0),
                                                              border:
                                                                  Border.all(
                                                                color: _model
                                                                        .mobileNumberSet
                                                                    ? FlutterFlowTheme.of(
                                                                            context)
                                                                        .border
                                                                    : FlutterFlowTheme.of(
                                                                            context)
                                                                        .error,
                                                                width: 1.0,
                                                              ),
                                                            ),
                                                            child: Row(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .max,
                                                              children: [
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Icon(
                                                                    Icons.phone,
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .border,
                                                                    size: 24.0,
                                                                  ),
                                                                ),
                                                                Padding(
                                                                  padding: const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          8.0,
                                                                          0.0,
                                                                          0.0,
                                                                          0.0),
                                                                  child: Text(
                                                                    '+91',
                                                                    style: FlutterFlowTheme.of(
                                                                            context)
                                                                        .labelLarge
                                                                        .override(
                                                                          fontFamily:
                                                                              'Usual',
                                                                          fontSize:
                                                                              16.0,
                                                                          letterSpacing:
                                                                              0.0,
                                                                          useGoogleFonts:
                                                                              false,
                                                                        ),
                                                                  ),
                                                                ),
                                                                Expanded(
                                                                  child:
                                                                      Padding(
                                                                    padding: const EdgeInsetsDirectional
                                                                        .fromSTEB(
                                                                            8.0,
                                                                            0.0,
                                                                            0.0,
                                                                            0.0),
                                                                    child:
                                                                        TextFormField(
                                                                      controller:
                                                                          _model
                                                                              .mobileNumberTextController,
                                                                      focusNode:
                                                                          _model
                                                                              .mobileNumberFocusNode,
                                                                      autofocus:
                                                                          false,
                                                                      textInputAction:
                                                                          TextInputAction
                                                                              .next,
                                                                      obscureText:
                                                                          false,
                                                                      decoration:
                                                                          InputDecoration(
                                                                        hintText:
                                                                            'XXXXXXXXXX',
                                                                        hintStyle: FlutterFlowTheme.of(context)
                                                                            .labelLarge
                                                                            .override(
                                                                              fontFamily: 'Usual',
                                                                              color: FlutterFlowTheme.of(context).border,
                                                                              fontSize: 16.0,
                                                                              letterSpacing: 0.0,
                                                                              useGoogleFonts: false,
                                                                            ),
                                                                        enabledBorder:
                                                                            InputBorder.none,
                                                                        focusedBorder:
                                                                            InputBorder.none,
                                                                        errorBorder:
                                                                            InputBorder.none,
                                                                        focusedErrorBorder:
                                                                            InputBorder.none,
                                                                      ),
                                                                      style: FlutterFlowTheme.of(
                                                                              context)
                                                                          .labelLarge
                                                                          .override(
                                                                            fontFamily:
                                                                                'Usual',
                                                                            fontSize:
                                                                                16.0,
                                                                            letterSpacing:
                                                                                0.0,
                                                                            useGoogleFonts:
                                                                                false,
                                                                          ),
                                                                      keyboardType:
                                                                          TextInputType
                                                                              .number,
                                                                      validator: _model
                                                                          .mobileNumberTextControllerValidator
                                                                          .asValidator(
                                                                              context),
                                                                    ),
                                                                  ),
                                                                ),
                                                              ],
                                                            ),
                                                          ),
                                                          if (!_model
                                                              .mobileNumberSet)
                                                            Padding(
                                                              padding:
                                                                  const EdgeInsetsDirectional
                                                                      .fromSTEB(
                                                                          12.0,
                                                                          6.0,
                                                                          0.0,
                                                                          0.0),
                                                              child: Text(
                                                                'Please enter valid 10-digit Mobile Number',
                                                                style: FlutterFlowTheme.of(
                                                                        context)
                                                                    .bodyMedium
                                                                    .override(
                                                                      fontFamily:
                                                                          'Usual',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .error,
                                                                      fontSize:
                                                                          11.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                              ),
                                                            ),
                                                        ],
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  16.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Bank Account Number',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Usual',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  8.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .accountNumberTextController,
                                                        focusNode: _model
                                                            .accountNumberFocusNode,
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Usual',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .border,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .border,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .border,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Usual',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                        keyboardType:
                                                            TextInputType
                                                                .number,
                                                        validator: _model
                                                            .accountNumberTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  16.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Text(
                                                        'IFSC Code',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .headlineLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Usual',
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  20.0,
                                                                  8.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: TextFormField(
                                                        controller: _model
                                                            .ifscCodeTextController,
                                                        focusNode: _model
                                                            .ifscCodeFocusNode,
                                                        autofocus: false,
                                                        obscureText: false,
                                                        decoration:
                                                            InputDecoration(
                                                          hintStyle:
                                                              FlutterFlowTheme.of(
                                                                      context)
                                                                  .labelLarge
                                                                  .override(
                                                                    fontFamily:
                                                                        'Usual',
                                                                    color: FlutterFlowTheme.of(
                                                                            context)
                                                                        .border,
                                                                    fontSize:
                                                                        16.0,
                                                                    letterSpacing:
                                                                        0.0,
                                                                    useGoogleFonts:
                                                                        false,
                                                                  ),
                                                          enabledBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .border,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          focusedBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .border,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          errorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          focusedErrorBorder:
                                                              OutlineInputBorder(
                                                            borderSide:
                                                                BorderSide(
                                                              color: FlutterFlowTheme
                                                                      .of(context)
                                                                  .error,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
                                                          filled: true,
                                                          fillColor: FlutterFlowTheme
                                                                  .of(context)
                                                              .primaryBackground,
                                                        ),
                                                        style: FlutterFlowTheme
                                                                .of(context)
                                                            .labelLarge
                                                            .override(
                                                              fontFamily:
                                                                  'Usual',
                                                              fontSize: 16.0,
                                                              letterSpacing:
                                                                  0.0,
                                                              useGoogleFonts:
                                                                  false,
                                                            ),
                                                        validator: _model
                                                            .ifscCodeTextControllerValidator
                                                            .asValidator(
                                                                context),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  18.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Text(
                                                        'By deleting your account, the following data will be retained for limited period as required by law or for legitimate business purposes:',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Usual',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  fontSize:
                                                                      14.0,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  8.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Text(
                                                        '  - Transaction and Order history',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Usual',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  8.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Text(
                                                        '  - Phone Number & Basic Details (for leaderboard)',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Usual',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  8.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Text(
                                                        '  - Bank Account Details (for disbursing wallet balance)',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Usual',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                          const EdgeInsetsDirectional
                                                              .fromSTEB(
                                                                  24.0,
                                                                  18.0,
                                                                  20.0,
                                                                  0.0),
                                                      child: Text(
                                                        'Please note that it may take us up to 7 days to verify your identity, delete your account and disburse the earnings balance to your bank account',
                                                        style:
                                                            FlutterFlowTheme.of(
                                                                    context)
                                                                .bodyLarge
                                                                .override(
                                                                  fontFamily:
                                                                      'Usual',
                                                                  color: FlutterFlowTheme.of(
                                                                          context)
                                                                      .accent3,
                                                                  letterSpacing:
                                                                      0.0,
                                                                  useGoogleFonts:
                                                                      false,
                                                                ),
                                                      ),
                                                    ),
                                                    Align(
                                                      alignment:
                                                          const AlignmentDirectional(
                                                              0.0, 0.0),
                                                      child: Padding(
                                                        padding:
                                                            const EdgeInsetsDirectional
                                                                .fromSTEB(
                                                                    0.0,
                                                                    24.0,
                                                                    0.0,
                                                                    60.0),
                                                        child: FFButtonWidget(
                                                          onPressed: () async {
                                                            safeSetState(() {
                                                              _model.mobileNumberTextController
                                                                      ?.text =
                                                                  ((String
                                                                      phoneNumber) {
                                                                return phoneNumber
                                                                    .replaceAll(
                                                                        RegExp(
                                                                            r'[^0-9]'),
                                                                        '');
                                                              }(_model.mobileNumberTextController
                                                                      .text));
                                                              _model.mobileNumberTextController
                                                                      ?.selection =
                                                                  TextSelection.collapsed(
                                                                      offset: _model
                                                                          .mobileNumberTextController!
                                                                          .text
                                                                          .length);
                                                            });
                                                            _model
                                                                .mobileNumberSet = (_model.mobileNumberTextController
                                                                            .text !=
                                                                        '') &&
                                                                (_model
                                                                        .mobileNumberTextController
                                                                        .text
                                                                        .length ==
                                                                    10);
                                                            safeSetState(() {});
                                                            if (_model
                                                                .mobileNumberSet) {
                                                              if (_model.formKey
                                                                          .currentState ==
                                                                      null ||
                                                                  !_model
                                                                      .formKey
                                                                      .currentState!
                                                                      .validate()) {
                                                                return;
                                                              }

                                                              await DeleteRequestsRecord
                                                                  .collection
                                                                  .doc()
                                                                  .set(
                                                                      createDeleteRequestsRecordData(
                                                                    createdTime:
                                                                        getCurrentTimestamp,
                                                                    phoneNumber:
                                                                        '+91${_model.mobileNumberTextController.text}',
                                                                    accountNumber:
                                                                        _model
                                                                            .accountNumberTextController
                                                                            .text,
                                                                    ifscCode: _model
                                                                        .ifscCodeTextController
                                                                        .text,
                                                                  ));
                                                              safeSetState(() {
                                                                _model
                                                                    .mobileNumberTextController
                                                                    ?.clear();
                                                                _model
                                                                    .accountNumberTextController
                                                                    ?.clear();
                                                                _model
                                                                    .ifscCodeTextController
                                                                    ?.clear();
                                                              });
                                                              ScaffoldMessenger
                                                                      .of(context)
                                                                  .showSnackBar(
                                                                SnackBar(
                                                                  content: Text(
                                                                    'Request submitted!',
                                                                    style:
                                                                        TextStyle(
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                    ),
                                                                  ),
                                                                  duration: const Duration(
                                                                      milliseconds:
                                                                          4000),
                                                                  backgroundColor:
                                                                      FlutterFlowTheme.of(
                                                                              context)
                                                                          .secondary,
                                                                ),
                                                              );
                                                            }
                                                          },
                                                          text: 'DELETE',
                                                          options:
                                                              FFButtonOptions(
                                                            width: 140.0,
                                                            height: 30.0,
                                                            padding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        24.0,
                                                                        0.0,
                                                                        24.0,
                                                                        0.0),
                                                            iconPadding:
                                                                const EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                        0.0,
                                                                        0.0,
                                                                        0.0,
                                                                        0.0),
                                                            color: FlutterFlowTheme
                                                                    .of(context)
                                                                .button,
                                                            textStyle:
                                                                FlutterFlowTheme.of(
                                                                        context)
                                                                    .titleSmall
                                                                    .override(
                                                                      fontFamily:
                                                                          'Usual',
                                                                      color: FlutterFlowTheme.of(
                                                                              context)
                                                                          .primaryText,
                                                                      fontSize:
                                                                          14.0,
                                                                      letterSpacing:
                                                                          0.0,
                                                                      fontWeight:
                                                                          FontWeight
                                                                              .normal,
                                                                      useGoogleFonts:
                                                                          false,
                                                                    ),
                                                            elevation: 3.0,
                                                            borderSide:
                                                                const BorderSide(
                                                              color: Colors
                                                                  .transparent,
                                                              width: 1.0,
                                                            ),
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        4.0),
                                                          ),
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
                                    ),
                                  Container(
                                    width: valueOrDefault<double>(
                                      MediaQuery.sizeOf(context).width >=
                                              FFAppState().desktopHighThreshold
                                          ? (MediaQuery.sizeOf(context).width *
                                              0.2)
                                          : valueOrDefault<double>(
                                              MediaQuery.sizeOf(context)
                                                          .width >=
                                                      FFAppState()
                                                          .desktopThreshold
                                                  ? (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.25)
                                                  : (MediaQuery.sizeOf(context)
                                                          .width *
                                                      0.8),
                                              720.0,
                                            ),
                                      720.0,
                                    ),
                                    decoration: const BoxDecoration(),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Row(
                                          mainAxisSize: MainAxisSize.min,
                                          children: [
                                            Icon(
                                              Icons.menu_book,
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .primaryText,
                                              size: 24.0,
                                            ),
                                            Padding(
                                              padding: const EdgeInsetsDirectional
                                                  .fromSTEB(
                                                      10.0, 0.0, 0.0, 0.0),
                                              child: Text(
                                                'App Information',
                                                style:
                                                    FlutterFlowTheme.of(context)
                                                        .headlineSmall
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          letterSpacing: 0.0,
                                                          fontWeight:
                                                              FontWeight.normal,
                                                          useGoogleFonts: false,
                                                        ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: Container(
                                            width: 300.0,
                                            height: 1.0,
                                            decoration: BoxDecoration(
                                              color:
                                                  FlutterFlowTheme.of(context)
                                                      .secondaryText,
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.docState =
                                                  'TermsConditions';
                                              safeSetState(() {});
                                              _model.showAccountDelete = false;
                                              safeSetState(() {});
                                              await _model.mainCol?.animateTo(
                                                0,
                                                duration:
                                                    const Duration(milliseconds: 100),
                                                curve: Curves.ease,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.edit_document,
                                                  color:
                                                      _model.docState ==
                                                              'TermsConditions'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .specialColor
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                  size: 24.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Terms & Conditions',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: _model
                                                                      .docState ==
                                                                  'TermsConditions'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .specialColor
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.docState = 'PrivacyPolicy';
                                              safeSetState(() {});
                                              _model.showAccountDelete = false;
                                              safeSetState(() {});
                                              await _model.mainCol?.animateTo(
                                                0,
                                                duration:
                                                    const Duration(milliseconds: 100),
                                                curve: Curves.ease,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.edit_document,
                                                  color: _model.docState ==
                                                          'PrivacyPolicy'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .specialColor
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  size: 24.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Privacy Policy',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: _model
                                                                      .docState ==
                                                                  'PrivacyPolicy'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .specialColor
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.docState = 'Legality';
                                              safeSetState(() {});
                                              _model.showAccountDelete = false;
                                              safeSetState(() {});
                                              await _model.mainCol?.animateTo(
                                                0,
                                                duration:
                                                    const Duration(milliseconds: 100),
                                                curve: Curves.ease,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.edit_document,
                                                  color: _model.docState ==
                                                          'Legality'
                                                      ? FlutterFlowTheme.of(
                                                              context)
                                                          .specialColor
                                                      : FlutterFlowTheme.of(
                                                              context)
                                                          .primaryText,
                                                  size: 24.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Legality',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: _model
                                                                      .docState ==
                                                                  'Legality'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .specialColor
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
                                                          useGoogleFonts: false,
                                                        ),
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 30.0, 0.0, 0.0),
                                          child: InkWell(
                                            splashColor: Colors.transparent,
                                            focusColor: Colors.transparent,
                                            hoverColor: Colors.transparent,
                                            highlightColor: Colors.transparent,
                                            onTap: () async {
                                              _model.docState =
                                                  'AccountDeletion';
                                              safeSetState(() {});
                                              _model.showAccountDelete = true;
                                              safeSetState(() {});
                                              safeSetState(() {
                                                _model
                                                    .mobileNumberTextController
                                                    ?.clear();
                                                _model
                                                    .accountNumberTextController
                                                    ?.clear();
                                                _model.ifscCodeTextController
                                                    ?.clear();
                                              });
                                              await _model.mainCol?.animateTo(
                                                0,
                                                duration:
                                                    const Duration(milliseconds: 100),
                                                curve: Curves.ease,
                                              );
                                            },
                                            child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Icon(
                                                  Icons.edit_document,
                                                  color:
                                                      _model.docState ==
                                                              'AccountDeletion'
                                                          ? FlutterFlowTheme.of(
                                                                  context)
                                                              .specialColor
                                                          : FlutterFlowTheme.of(
                                                                  context)
                                                              .primaryText,
                                                  size: 24.0,
                                                ),
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          10.0, 0.0, 0.0, 0.0),
                                                  child: Text(
                                                    'Account Deletion',
                                                    style: FlutterFlowTheme.of(
                                                            context)
                                                        .labelLarge
                                                        .override(
                                                          fontFamily: 'Usual',
                                                          color: _model
                                                                      .docState ==
                                                                  'AccountDeletion'
                                                              ? FlutterFlowTheme
                                                                      .of(
                                                                          context)
                                                                  .specialColor
                                                              : FlutterFlowTheme
                                                                      .of(context)
                                                                  .primaryText,
                                                          fontSize: 18.0,
                                                          letterSpacing: 0.0,
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
                                        alignment: WrapAlignment.start,
                                        crossAxisAlignment:
                                            WrapCrossAlignment.start,
                                        direction: Axis.horizontal,
                                        runAlignment: WrapAlignment.start,
                                        verticalDirection:
                                            VerticalDirection.down,
                                        clipBehavior: Clip.none,
                                        children: [
                                          Column(
                                            mainAxisSize: MainAxisSize.max,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Text(
                                                'App Information',
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
                                                    _model.docState =
                                                        'PrivacyPolicy';
                                                    safeSetState(() {});
                                                    _model.showAccountDelete =
                                                        false;
                                                    safeSetState(() {});
                                                    await _model.mainCol
                                                        ?.animateTo(
                                                      0,
                                                      duration: const Duration(
                                                          milliseconds: 100),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  child: Text(
                                                    'Privacy Policy',
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
                                                    _model.docState =
                                                        'TermsConditions';
                                                    safeSetState(() {});
                                                    _model.showAccountDelete =
                                                        false;
                                                    safeSetState(() {});
                                                    await _model.mainCol
                                                        ?.animateTo(
                                                      0,
                                                      duration: const Duration(
                                                          milliseconds: 100),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  child: Text(
                                                    'Terms & Conditions',
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
                                                    _model.docState =
                                                        'Legality';
                                                    safeSetState(() {});
                                                    _model.showAccountDelete =
                                                        false;
                                                    safeSetState(() {});
                                                    await _model.mainCol
                                                        ?.animateTo(
                                                      0,
                                                      duration: const Duration(
                                                          milliseconds: 100),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  child: Text(
                                                    'Legality',
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
                                                    _model.docState =
                                                        'AccountDeletion';
                                                    safeSetState(() {});
                                                    _model.showAccountDelete =
                                                        true;
                                                    safeSetState(() {});
                                                    safeSetState(() {
                                                      _model
                                                          .mobileNumberTextController
                                                          ?.clear();
                                                      _model
                                                          .accountNumberTextController
                                                          ?.clear();
                                                      _model
                                                          .ifscCodeTextController
                                                          ?.clear();
                                                    });
                                                    await _model.mainCol
                                                        ?.animateTo(
                                                      0,
                                                      duration: const Duration(
                                                          milliseconds: 100),
                                                      curve: Curves.ease,
                                                    );
                                                  },
                                                  child: Text(
                                                    'Account Deletion',
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
                                            ],
                                          ),
                                          Column(
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
                                                        'https://wa.me/${appInformationMacrosRecord?.supportPhone}');
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
                                                      path:
                                                          appInformationMacrosRecord!
                                                              .supportEmail,
                                                    ));
                                                  },
                                                  child: Text(
                                                    valueOrDefault<String>(
                                                      appInformationMacrosRecord
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
                                          ),
                                        ],
                                      ),
                                    ),
                                    Divider(
                                      color: FlutterFlowTheme.of(context)
                                          .primaryText,
                                    ),
                                    Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Text(
                                          'WinzTrade',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Usual',
                                                color:
                                                    FlutterFlowTheme.of(context)
                                                        .primaryText,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.normal,
                                                useGoogleFonts: false,
                                              ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  20.0, 4.0, 20.0, 10.0),
                                          child: Text(
                                            'A/4, Building no 25, Model Town Colony, Indira Nagar, Jogeshwari East, Mumbai, Maharashtra 400093',
                                            textAlign: TextAlign.center,
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Usual',
                                                  color: FlutterFlowTheme.of(
                                                          context)
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
                                context.goNamed(
                                  'WinzTrade',
                                  extra: <String, dynamic>{
                                    kTransitionInfoKey: const TransitionInfo(
                                      hasTransition: true,
                                      transitionType: PageTransitionType.fade,
                                      duration: Duration(milliseconds: 0),
                                    ),
                                  },
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
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(8.0),
                                          child: Image.asset(
                                            'assets/images/logo_nobg.png',
                                            height: 48.0,
                                            fit: BoxFit.cover,
                                          ),
                                        ),
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
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
      },
    );
  }
}
