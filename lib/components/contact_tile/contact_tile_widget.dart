import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:url_launcher/url_launcher.dart';
import 'contact_tile_model.dart';
export 'contact_tile_model.dart';

class ContactTileWidget extends StatefulWidget {
  const ContactTileWidget({
    super.key,
    required this.contactIcon,
    required this.contactTitle,
    required this.contactSubtitle,
    required this.contactLink,
  });

  final Widget? contactIcon;
  final String? contactTitle;
  final String? contactSubtitle;
  final String? contactLink;

  @override
  State<ContactTileWidget> createState() => _ContactTileWidgetState();
}

class _ContactTileWidgetState extends State<ContactTileWidget> {
  late ContactTileModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ContactTileModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Align(
      alignment: const AlignmentDirectional(0.0, 0.0),
      child: InkWell(
        splashColor: Colors.transparent,
        focusColor: Colors.transparent,
        hoverColor: Colors.transparent,
        highlightColor: Colors.transparent,
        onTap: () async {
          if (widget.contactTitle == 'Email') {
            await launchUrl(Uri(
              scheme: 'mailto',
              path: widget.contactLink!,
            ));
          } else {
            await launchURL(widget.contactLink!);
          }
        },
        child: Container(
          width: valueOrDefault<double>(
            MediaQuery.sizeOf(context).width >=
                    FFAppState().desktopHighThreshold
                ? (MediaQuery.sizeOf(context).width * 0.21)
                : valueOrDefault<double>(
                    MediaQuery.sizeOf(context).width >=
                            FFAppState().desktopThreshold
                        ? (MediaQuery.sizeOf(context).width * 0.3)
                        : (MediaQuery.sizeOf(context).width * 0.8),
                    314.0,
                  ),
            314.0,
          ),
          decoration: BoxDecoration(
            color: FlutterFlowTheme.of(context).secondaryBackground,
            boxShadow: const [
              BoxShadow(
                blurRadius: 4.0,
                color: Color(0x33000000),
                offset: Offset(
                  0.0,
                  2.0,
                ),
              )
            ],
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Padding(
            padding: const EdgeInsetsDirectional.fromSTEB(40.0, 20.0, 40.0, 20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Row(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Expanded(
                      flex: 1,
                      child: Align(
                        alignment: const AlignmentDirectional(0.0, 0.0),
                        child: widget.contactIcon!,
                      ),
                    ),
                    Expanded(
                      flex: 2,
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            valueOrDefault<String>(
                              widget.contactTitle,
                              'Contact Title',
                            ),
                            textAlign: TextAlign.start,
                            style: FlutterFlowTheme.of(context)
                                .displayMedium
                                .override(
                                  fontFamily: 'Usual',
                                  color: FlutterFlowTheme.of(context)
                                      .secondaryText,
                                  letterSpacing: 0.0,
                                  useGoogleFonts: false,
                                ),
                          ),
                          Padding(
                            padding: const EdgeInsetsDirectional.fromSTEB(
                                0.0, 10.0, 0.0, 0.0),
                            child: Text(
                              valueOrDefault<String>(
                                widget.contactSubtitle,
                                'Contact Subtitle',
                              ),
                              textAlign: TextAlign.start,
                              style: FlutterFlowTheme.of(context)
                                  .titleSmall
                                  .override(
                                    fontFamily: 'Usual',
                                    color: const Color(0xFF787878),
                                    letterSpacing: 0.0,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(0.0, 20.0, 0.0, 0.0),
                  child: Container(
                    width: double.infinity,
                    height: 6.0,
                    decoration: BoxDecoration(
                      color: FlutterFlowTheme.of(context).primaryBackground,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
