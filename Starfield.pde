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
    mySpeed = (Math.random() * 2) + 1;
    myColor1 = (int)(Math.random() * 100);
    myColor2 = (int)(Math.random() * 100);
    myColor3 = (int)(Math.random() * 255);
    myOpacity = (int)(Math.random() * 50) + 100;
    myAngle = (Math.random() * 2) * Math.PI;
  }

  void show() {
    fill((int)myColor1, (int)myColor2, (int)myColor3, (float)myOpacity);
    rect((float)myX, (float)myY, (float)mySize, (float)mySize);
  }

  void explosion() {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
  }

  void mousePressed() {
    redraw();
  }
}

class Square2 extends Square {
  Square2() {
    myX = 350;
    myY = 350;
    myColor1 = (int)(Math.random() * 255);
    myColor2 = (int)(Math.random() * 255);
    myColor3 = (int)(Math.random() * 255);
    mySpeed = 0.5;
    myOpacity = (int)(Math.random() * 60) + 160;

    mySize = (int)(Math.random() * 40) + 20;
  }
}

































