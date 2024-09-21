import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'shimmer_app_links_model.dart';
export 'shimmer_app_links_model.dart';

class ShimmerAppLinksWidget extends StatefulWidget {
  const ShimmerAppLinksWidget({super.key});

  @override
  State<ShimmerAppLinksWidget> createState() => _ShimmerAppLinksWidgetState();
}

class _ShimmerAppLinksWidgetState extends State<ShimmerAppLinksWidget> {
  late ShimmerAppLinksModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => ShimmerAppLinksModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => safeSetState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.network(
            'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/55soyfsv02i7/playstore.png',
            height: 40.0,
            fit: BoxFit.cover,
          ),
        ),
        Padding(
          padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(8.0),
            child: Image.network(
              'https://storage.googleapis.com/flutterflow-io-6f20.appspot.com/projects/travel-app-l9fvz4/assets/9i1xo5vkkhza/appstore.png',
              height: 40.0,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
