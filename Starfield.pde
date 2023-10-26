class Particle {
  double x, y; // X and Y positions
  color col;  // Color
  double angle;  // Angle
  double speed;  // Speed

  Particle() {
    x = random(width);
    y = random(height);
    col = color(random(255), random(255), random(1255));
    angle = random(TWO_PI);
    speed = random(.1);
  }

  void move() {
    x += (angle) * speed;
    y += (angle) * speed;
  }

  void show() {
    noStroke();
    fill(col);
    ellipse((float)x, (float)y, 25, 25);
  }
}

class OddballParticle extends Particle {
  OddballParticle() {
    super();  // Call the constructor of the parent class
    // You can add specific characteristics for OddballParticle here
  }

  void move() {
    // Implement the unique move behavior for OddballParticle
    x += (angle) * (speed * 1);
    y += (angle) * (speed * 1);
  }
}

Particle[] particles;

void setup() {
  size(500, 500);
  particles = new Particle[1000];
  for (int i = 0; i < particles.length; i++) {
    if (i == 0) {
      particles[i] = new OddballParticle();
    } else {
      particles[i] = new Particle();
    }
  }
}

void draw() {
  background(220);
  for (Particle p : particles) {
    p.move();
    p.show();
  }
}


class OddballParticle //inherits from Particle
{
	//your code here
}


