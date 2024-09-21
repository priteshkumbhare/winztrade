import '/components/contact_tile/contact_tile_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'shimmer_contact_tiles_widget.dart' show ShimmerContactTilesWidget;
import 'package:flutter/material.dart';

class ShimmerContactTilesModel
    extends FlutterFlowModel<ShimmerContactTilesWidget> {
  ///  State fields for stateful widgets in this component.

  // Model for ContactTile component.
  late ContactTileModel contactTileModel1;
  // Model for ContactTile component.
  late ContactTileModel contactTileModel2;

  @override
  void initState(BuildContext context) {
    contactTileModel1 = createModel(context, () => ContactTileModel());
    contactTileModel2 = createModel(context, () => ContactTileModel());
  }

  @override
  void dispose() {
    contactTileModel1.dispose();
    contactTileModel2.dispose();
  }
}
