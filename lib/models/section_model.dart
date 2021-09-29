import 'package:ecomm/models/models.dart';
import 'package:equatable/equatable.dart';

class Section extends Equatable {

  final String sectionHeader;
  final List<Product> products;

  Section({
    required this.sectionHeader,
    required this.products
  });

  @override
  // TODO: implement props
  List<Object?> get props => [sectionHeader, products];
  
}