class Creature {
  float speedx = random(-5, 5), speedy=random(-5, 5);
  float x = random(width);
  float y = random(height);
  float r = random(0, 255);
  float g = random(0, 255);
  float b = random(0, 255);
  int D = 40;
 
  void show() {
    fill(r, g, b);
    ellipse(x, y, D, D);
    fill(0);
    textAlign(CENTER);
    textSize(((D-40)/10)+12);
    text((D-40)/10,x,y+4);
  }

  void move() {
    x = x + speedx;
    y = y + speedy;
  }
  
  void edges() {
    if (x > width || x < 0) {
      speedx = -speedx;
      D = D + 10;
    }
    if (y > height || y < 0) {
      speedy = -speedy;
      D = D + 10;
    }
  }
}
