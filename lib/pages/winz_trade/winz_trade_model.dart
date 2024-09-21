import '/components/app_feature/app_feature_widget.dart';
import '/components/contact_tile/contact_tile_widget.dart';
import '/components/trade_feature/trade_feature_widget.dart';
import '/components/trade_steps/trade_steps_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'winz_trade_widget.dart' show WinzTradeWidget;
import 'package:flutter/material.dart';

class WinzTradeModel extends FlutterFlowModel<WinzTradeWidget> {
  ///  State fields for stateful widgets in this page.

  // State field(s) for mainCol widget.
  ScrollController? mainCol;
  // Model for TradeSteps component.
  late TradeStepsModel tradeStepsModel1;
  // Model for TradeSteps component.
  late TradeStepsModel tradeStepsModel2;
  // Model for TradeSteps component.
  late TradeStepsModel tradeStepsModel3;
  // Model for TradeSteps component.
  late TradeStepsModel tradeStepsModel4;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel1;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel2;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel3;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel4;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel5;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel6;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel7;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel8;
  // Model for AppFeature component.
  late AppFeatureModel appFeatureModel9;
  // Model for TradeFeature component.
  late TradeFeatureModel tradeFeatureModel1;
  // Model for TradeFeature component.
  late TradeFeatureModel tradeFeatureModel2;
  // Model for TradeFeature component.
  late TradeFeatureModel tradeFeatureModel3;
  // Model for TradeFeature component.
  late TradeFeatureModel tradeFeatureModel4;
  // Model for ContactTile component.
  late ContactTileModel contactTileModel1;
  // Model for ContactTile component.
  late ContactTileModel contactTileModel2;

  @override
  void initState(BuildContext context) {
    mainCol = ScrollController();
    tradeStepsModel1 = createModel(context, () => TradeStepsModel());
    tradeStepsModel2 = createModel(context, () => TradeStepsModel());
    tradeStepsModel3 = createModel(context, () => TradeStepsModel());
    tradeStepsModel4 = createModel(context, () => TradeStepsModel());
    appFeatureModel1 = createModel(context, () => AppFeatureModel());
    appFeatureModel2 = createModel(context, () => AppFeatureModel());
    appFeatureModel3 = createModel(context, () => AppFeatureModel());
    appFeatureModel4 = createModel(context, () => AppFeatureModel());
    appFeatureModel5 = createModel(context, () => AppFeatureModel());
    appFeatureModel6 = createModel(context, () => AppFeatureModel());
    appFeatureModel7 = createModel(context, () => AppFeatureModel());
    appFeatureModel8 = createModel(context, () => AppFeatureModel());
    appFeatureModel9 = createModel(context, () => AppFeatureModel());
    tradeFeatureModel1 = createModel(context, () => TradeFeatureModel());
    tradeFeatureModel2 = createModel(context, () => TradeFeatureModel());
    tradeFeatureModel3 = createModel(context, () => TradeFeatureModel());
    tradeFeatureModel4 = createModel(context, () => TradeFeatureModel());
    contactTileModel1 = createModel(context, () => ContactTileModel());
    contactTileModel2 = createModel(context, () => ContactTileModel());
  }

  @override
  void dispose() {
    mainCol?.dispose();
    tradeStepsModel1.dispose();
    tradeStepsModel2.dispose();
    tradeStepsModel3.dispose();
    tradeStepsModel4.dispose();
    appFeatureModel1.dispose();
    appFeatureModel2.dispose();
    appFeatureModel3.dispose();
    appFeatureModel4.dispose();
    appFeatureModel5.dispose();
    appFeatureModel6.dispose();
    appFeatureModel7.dispose();
    appFeatureModel8.dispose();
    appFeatureModel9.dispose();
    tradeFeatureModel1.dispose();
    tradeFeatureModel2.dispose();
    tradeFeatureModel3.dispose();
    tradeFeatureModel4.dispose();
    contactTileModel1.dispose();
    contactTileModel2.dispose();
  }
}
