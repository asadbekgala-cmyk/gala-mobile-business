import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'catalog_event.dart';
part 'catalog_state.dart';

class CatalogBloc extends Bloc<CatalogEvent, CatalogState> {
  CatalogBloc() : super(CatalogState()) {
    on<IsEditEvent>(_isEditEvent);
  }

  Future<void> _isEditEvent(
    IsEditEvent event,
    Emitter<CatalogState> emit,
  ) async {
    emit(state.copyWith(isEdit: !state.isEdit));
  }
}
