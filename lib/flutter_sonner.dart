import 'dart:async';
import 'package:flutter/material.dart';

class Toast {
  final String message;
  final Color bgColor;
  final Color fontColor;

  Toast({
    required this.message,
    required this.bgColor,
    required this.fontColor,
  });
}

class FlutterSonner {
  static final FlutterSonner _instance = FlutterSonner._internal();

  factory FlutterSonner() {
    return _instance;
  }

  FlutterSonner._internal();

  static Timer? _timer;
  static OverlayEntry? _overlayEntry;

  static void _showToast(BuildContext context, Toast toast) {
    if (_timer == null || !_timer!.isActive) {
      _overlayEntry = _createOverlayEntry(context, toast);
      Overlay.of(context)?.insert(_overlayEntry!);
      _timer = Timer(const Duration(seconds: 2), () {
        if (_overlayEntry != null) {
          _overlayEntry?.remove();
        }
      });
    }
  }

  static OverlayEntry _createOverlayEntry(BuildContext context, Toast toast) {
    return OverlayEntry(
      builder: (context) => Positioned(
        bottom: 16,
        left: 16,
        right: 16,
        child: Container(
          padding: const EdgeInsets.all(16.0),
          decoration: BoxDecoration(
              color: toast.bgColor,
              borderRadius: BorderRadius.circular(10)),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Expanded(
                  child: Text(
                    toast.message,
                    textAlign: TextAlign.start,
                    softWrap: true,
                    style: TextStyle(
                      fontSize: 14,
                      color: toast.fontColor,
                    ),
                  ),
                ),
                Center(
                  child: ClipOval(
                    child: Container(
                      height: 20,
                      width: 20,
                      color: Colors.transparent,
                      child: GestureDetector(
                        onTap: () {
                          if (_overlayEntry != null) {
                            _timer?.cancel();
                            _timer = null;
                            _overlayEntry!.remove();
                          }
                        },
                        child: Icon(
                          Icons.close,
                          size: 16,
                          color: toast.fontColor,
                        ),
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  static void showInfo(BuildContext context, String message) {
    _showToast(context, Toast(
      message: message,
      bgColor: const Color(0xFFF9F9F9),
      fontColor: const Color(0xFF767676),
    ));
  }

  static void showSuccess(BuildContext context, String message) {
    _showToast(context, Toast(
      message: message,
      bgColor: const Color(0xFFD6EBE0),
      fontColor: const Color(0xFF009C49),
    ));
  }

  static void showError(BuildContext context, String message) {
    _showToast(context, Toast(
      message: message,
      bgColor: const Color(0xFFEEE0DF),
      fontColor: const Color(0xFFD6292E),
    ));
  }
}
