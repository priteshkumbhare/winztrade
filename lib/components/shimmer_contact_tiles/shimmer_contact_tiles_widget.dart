import '/components/contact_tile/contact_tile_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:provider/provider.dart';
import 'shimmer_contact_tiles_model.dart';
export 'shimmer_contact_tiles_model.dart';

class ShimmerContactTilesWidget extends StatefulWidget {
  const ShimmerContactTilesWidget({super.key});

  @override
  State<ShimmerContactTilesWidget> createState() =>
      _ShimmerContactTilesWidgetState();
}

class _ShimmerContactTilesWidgetState extends State<ShimmerContactTilesWidget> {
  late ShimmerContactTilesModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerContactTilesModel());

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

    return Wrap(
      spacing: 100.0,
      runSpacing: 40.0,
      alignment: WrapAlignment.start,
      crossAxisAlignment: WrapCrossAlignment.start,
      direction: Axis.horizontal,
      runAlignment: WrapAlignment.start,
      verticalDirection: VerticalDirection.down,
      clipBehavior: Clip.none,
      children: [
        Container(
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
          decoration: const BoxDecoration(),
          child: wrapWithModel(
            model: _model.contactTileModel1,
            updateCallback: () => safeSetState(() {}),
            child: ContactTileWidget(
              contactIcon: FaIcon(
                FontAwesomeIcons.whatsapp,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 48.0,
              ),
              contactTitle: 'WhatsApp',
              contactSubtitle: 'Chat with us directly',
              contactLink: 'https://winztrade.com',
            ),
          ),
        ),
        Container(
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
          decoration: const BoxDecoration(),
          child: wrapWithModel(
            model: _model.contactTileModel2,
            updateCallback: () => safeSetState(() {}),
            child: ContactTileWidget(
              contactIcon: Icon(
                Icons.mail_outline_rounded,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 48.0,
              ),
              contactTitle: 'Email',
              contactSubtitle: 'Contact us via mail',
              contactLink: 'https://winztrade.com',
            ),
          ),
        ),
      ],
    );
  }
}
