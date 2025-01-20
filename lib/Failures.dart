class Failures{
  final String errormsg ;
  Failures({required this.errormsg});

}

class Servererror extends Failures{
  Servererror({required super.errormsg});


}

class Networkerror extends Failures{
  Networkerror({required super.errormsg});
}