class Circle {
  float x;
  float y;
  float r;
  PShape icon1 = loadShape("icon1.svg");  
   
  boolean growing = true;

  Circle(float x_, float y_) {
    x = x_;
    y = y_;
    r = 1;
  }

  void grow() {
    if (growing) {
      r = r + 0.5;
    }
  }
  
  boolean edges() {
    return (x + r > width || x -  r < 0 || y + r > height || y -r < 0);
  }

  void show() {
    icon1.disableStyle();
    stroke(255);
    strokeWeight(0.5);
   fill(255);
    //ellipse(x, y, r*2, r*2);
    shape(icon1, x, y, r*2, r*2);
  }
}
