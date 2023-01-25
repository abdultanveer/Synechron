class InvalidPriceException {}

class ShoppingCart {
  List<double> _prices = [];
  double get total => _prices.fold(0, (p, e) => p+e);
   set newList(List<double> newPrices) {
     if(newPrices.any((element) => element <0)){
       throw InvalidPriceException();
     }
     _prices = newPrices;
   }

// Add a "total" getter here:

// Add a "prices" setter here:
}
