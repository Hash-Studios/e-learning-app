import 'package:flutter/material.dart';

class App {
  late BuildContext _context;
  late double _height;
  late double _width;
  late double _heightPadding;
  late double _widthPadding;

  App(_context) {
    this._context = _context;
    MediaQueryData _queryData = MediaQuery.of(this._context);
    _height = _queryData.size.height / 100.0;
    _width = _queryData.size.width / 100.0;
    _heightPadding = _height -
        ((_queryData.padding.top + _queryData.padding.bottom) / 100.0);
    _widthPadding =
        _width - (_queryData.padding.left + _queryData.padding.right) / 100.0;
  }

  double appHeight(double v) {
    return _height * v;
  }

  double appWidth(double v) {
    return _width * v;
  }

  double appVerticalPadding(double v) {
    return _heightPadding * v;
  }

  double appHorizontalPadding(double v) {
    return _widthPadding * v;
  }
}

class Colors {
  final Color _mainColor = const Color(0xFFFFFFFF);
  final Color _secondColor = const Color(0xFFF5F6FC);
  final Color _accentColor = const Color(0xFF03A9F4);
  // Color _mainDarkColor = Color(0xFF181818);
  // Color _secondDarkColor = Color(0xFF2F2F2F);
  // Color _accentDarkColor = Color(0xFFF0F0F0);

  LinearGradient waves = const LinearGradient(
    colors: [Color(0xFF0396FF), Color(0xFFABDCFF)],
    begin: Alignment.bottomRight,
    end: Alignment.topLeft,
  );

  LinearGradient deepSpace = const LinearGradient(
    colors: [Color(0xFF4CA1AF), Color(0xFF2C3E50)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  LinearGradient peachy = const LinearGradient(
    colors: [Color(0xFFFFB382), Color(0xFFF07590)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  LinearGradient nebula = const LinearGradient(
    colors: [Color(0xFFA1A3FF), Color(0xFF6D63EF)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  LinearGradient mildSea = const LinearGradient(
    colors: [Color(0xFF96EFA6), Color(0xFF26A6B5)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  LinearGradient mildSeaRev = const LinearGradient(
    colors: [Color(0xFF26A6B5), Color(0xFF96EFA6)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );
  LinearGradient purplin = const LinearGradient(
    colors: [Color(0xFFA044FF), Color(0xFF6A3093)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  LinearGradient easyMed = const LinearGradient(
    colors: [Color(0xFF45B649), Color(0xFFDCE35B)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  LinearGradient disco = const LinearGradient(
    colors: [Color(0xFFB06AB3), Color(0xFF4568DC)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  LinearGradient aqua = const LinearGradient(
    colors: [Color(0xFF5B86E5), Color(0xFF36D1DC)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  LinearGradient alive = const LinearGradient(
    colors: [Color(0xFFBD3F32), Color(0xFFCB356B)],
    begin: Alignment.topRight,
    end: Alignment.bottomLeft,
  );

  Color mainColor(double opacity) {
    return _mainColor.withOpacity(opacity);
  }

  Color secondColor(double opacity) {
    return _secondColor.withOpacity(opacity);
  }

  Color accentColor(double opacity) {
    return _accentColor.withOpacity(opacity);
  }

  // Color mainDarkColor(double opacity) {
  //   return this._mainDarkColor.withOpacity(opacity);
  // }

  // Color secondDarkColor(double opacity) {
  //   return this._secondDarkColor.withOpacity(opacity);
  // }

  // Color accentDarkColor(double opacity) {
  //   return this._accentDarkColor.withOpacity(opacity);
  // }
}
