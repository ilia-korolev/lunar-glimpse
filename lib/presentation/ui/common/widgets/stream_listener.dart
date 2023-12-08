import 'dart:async';

import 'package:flutter/material.dart';

class StreamListener<T> extends StatefulWidget {
  const StreamListener({
    required this.stream,
    required this.onData,
    required this.child,
    super.key,
    this.onError,
    this.onDone,
    this.cancelOnError = false,
  });

  final Stream<T> stream;

  final Widget child;

  final void Function(T data) onData;
  final void Function(dynamic error, StackTrace stackTrace)? onError;
  final void Function()? onDone;

  final bool cancelOnError;

  @override
  State<StreamListener<T>> createState() => _StreamListenerState<T>();
}

class _StreamListenerState<T> extends State<StreamListener<T>> {
  late final StreamSubscription<T> _subscription;

  @override
  void initState() {
    super.initState();
    _subscription = widget.stream.listen(
      widget.onData,
      onError: widget.onError,
      onDone: widget.onDone,
      cancelOnError: widget.cancelOnError,
    );
  }

  @override
  Widget build(BuildContext context) => widget.child;

  @override
  void dispose() {
    _subscription.cancel();
    super.dispose();
  }
}
