void main() {
  Game game = Game("game name", "game genre");
  game.play();

  List<int> ints = [100, 200, 300];
  Set<int> intset = {1, 2, 3};
  Set<int> intset0 = {3, 4, 5};
  var setcalc = intset.union(intset0);
  Map<int, int> intmap = {1: 2, 3: 5};
}

class Game {
  String _name;
  String _genre;

  Game(this._name, this._genre);

  // property
  String get name => _name;

  set genre(g) => _genre;

  void play() {
    print('Play $_name! ($_genre)');
  }
}

class ArcadeGame extends Game {
  bool _joystickSupport = false;

  ArcadeGame(String name, String genre, this._joystickSupport)
      : super(name, genre);

  @override
  void play() {
    print('Play $_name! ($_genre) [ARCADE $_joystickSupport]');
  }
}
