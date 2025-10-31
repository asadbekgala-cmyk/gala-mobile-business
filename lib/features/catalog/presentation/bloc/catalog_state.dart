part of 'catalog_bloc.dart';

class CatalogState extends Equatable {
  final bool isEdit;
  const CatalogState({
    this.isEdit = false,
});
  
  @override
  List<Object> get props => [isEdit];

  CatalogState copyWith({
    bool? isEdit,
  }) {
    return CatalogState(
      isEdit: isEdit ?? this.isEdit,
    );
  }
}

