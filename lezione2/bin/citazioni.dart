import 'package:lezione2/quote_service.dart';

void main (List<String>arguments) async {
  QuoteService().getQuote();
  QuoteService().getQuoteByName("Legolas");
}