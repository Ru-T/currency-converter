# Currency Converter

## This program stores and converts currencies. Have fun!

Currency Class Requirements:

* Should be created with an amount and a currency code
  - Currency Class initialized with two attributes: amount and currency_code
* Should equal another Currency object with the same amount and currency code
  - Created method within Currency Class to overwrite "==".
* Should NOT equal another Currency object with different amount or currency code
  - Same as above.
* Should be able to be added to another Currency object with the same currency code
  - Created method within Currency Class to overwrite "+".
* Should be able to be subtracted by another Currency object with the same currency code
  - Created method within Currency Class to overwrite "-".
* Should raise a DifferentCurrencyCodeError when you try to add or subtract two Currency objects with different currency codes.
  - Created a class for this error and raised it if any of the numerical operations fail.
* Should be able to be multiplied by a Fixnum or Float and return a Currency object
  - Created method within Currency Class to overwrite the multiplier.
* Currency.new should be able to take one argument with a currency symbol embedded in it, like "$1.20" or "€ 7.00", and figure out the correct currency code. It can also take two arguments like before, one being the amount and the other being the currency code.
 - Created initialize logic for these two paths.
 - Added if statement for USD = $

CurrencyConverter Requirements:

* Should be initialized with a Hash of currency codes to conversion rates (see link to rates below)
  - Initialized the CurrencyConverter class with an empty hash.
* At first, just make this work with two currency codes and conversation rates, with one rate being 1.0 and the other being the conversation rate. An example would be this: {USD: 1.0, EUR: 0.74}, which implies that a dollar is worth 0.74 euros.
  - Created an instance of the CurrencyConverter class with two key/value pairs.
* Should be able to take a Currency object and a requested currency code that is the same currency code as the Currency object's and return a Currency object equal to the one passed in (that is, currency_converter.convert(Currency.new(1, :USD), :USD) == Currency.new(1, :USD))
  - Created convert method for converting currency to the same currency code.  
* Should be able to take a Currency object that has one currency code it knows and a requested currency code and return a new Currency object with the right amount in the new currency code
  - Created if/else statement for handling multiple currencies
* Should be able to be created with a Hash of three or more currency codes and conversion rates. An example would be this: {USD: 1.0, EUR: 0.74, JPY: 120.0}, which implies that a dollar is worth 0.74 euros and that a dollar is worth 120 yen, but also that a euro is worth 120/0.74 = 162.2 yen.
  - Verified
* Should be able to convert Currency in any currency code it knows about to Currency in any other currency code it knows about.
  - Verified
* Should raise an UnknownCurrencyCodeError when you try to convert from or to a currency code it doesn't know about.
  - Added
