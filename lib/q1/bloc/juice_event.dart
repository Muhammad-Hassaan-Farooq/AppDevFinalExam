part of 'juice_bloc.dart';

abstract class JuiceEvent{

}

class FetchJuice extends JuiceEvent{}
class ExpandDesc extends JuiceEvent{}
class CollapseDesc extends JuiceEvent{}
class IncCount extends JuiceEvent{}
class DecCount extends JuiceEvent{}