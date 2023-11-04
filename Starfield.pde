Square f = new Square();
Square[] Squares = new Square[300];

void setup() {
  size(700, 700);
  noStroke();
  for (int i = 10; i < Squares.length; i++) {
    Squares[i] = new Square();
  }
  for (int i = 0; i < 10; i++) {
    Squares[i] = new Square2();
  }
}

void draw() {
  background(0, 0, 0);
  fill(0, 0, 200);

  f.show();
  f.explosion();
  for (int i = 0; i < Squares.length; i++) {
    Squares[i].show();
    Squares[i].explosion();
  }
}

class Square {
  double myX, myY, mySpeed, mySize, myColor1, myColor2, myColor3, myOpacity;
  double myAngle;

  Square() {
    myX = 350;
    myY = 350;
    mySize = (int)(Math.random() * 40) + 20;
    my
