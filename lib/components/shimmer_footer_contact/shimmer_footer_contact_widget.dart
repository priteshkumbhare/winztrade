import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'shimmer_footer_contact_model.dart';
export 'shimmer_footer_contact_model.dart';

class ShimmerFooterContactWidget extends StatefulWidget {
  const ShimmerFooterContactWidget({super.key});

  @override
  State<ShimmerFooterContactWidget> createState() =>
      _ShimmerFooterContactWidgetState();
}

class _ShimmerFooterContactWidgetState
    extends State<ShimmerFooterContactWidget> {
  late ShimmerFooterContactModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerFooterContactModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Support',
          style: FlutterFlowTheme.of(context).bodyMedium.override(
                fontFamily: 'Usual',
                color: FlutterFlowTheme.of(context).primaryText,
                letterSpacing: 0.0,
                fontWeight: FontWeight.w500,
                useGoogleFonts: false,
              ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 10.0, 0.0, 0.0),
          child: Text(
            'WhatsApp',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Usual',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 11.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: false,
                ),
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(0.0, 4.0, 0.0, 0.0),
          child: Text(
            'Email',
            style: FlutterFlowTheme.of(context).bodyMedium.override(
                  fontFamily: 'Usual',
                  color: FlutterFlowTheme.of(context).primaryText,
                  fontSize: 11.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.normal,
                  useGoogleFonts: false,
                ),
          ),
        ),
      ],
    );
  }
}
