import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:rxdart/rxdart.dart';

EventTransformer<E> throttleDroppableTransformer<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(
      events.throttleTime(duration),
      mapper,
    );
  };
}
