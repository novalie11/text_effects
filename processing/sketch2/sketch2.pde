PImage img;
PShape icon1;
PShape icon2;
PShape icon3;
PShape icon4;
int counter = 0;

void setup() {

  background(255);
  size(3511, 3510);
  fill(255);
  img = loadImage("i.png");
  img.loadPixels();

  icon1 = loadShape("icon1.svg");
  icon2 = loadShape("icon2.svg");
  icon3 = loadShape("icon3.svg");
  icon4 = loadShape("icon4.svg");

  icon1.disableStyle();
  icon2.disableStyle();
  icon3.disableStyle();
  icon4.disableStyle();
}

void draw() {

  //background(255);
  for (int i = 0; i < width; i++) {
    for (int j = 0; j < height; j++) {
      color pix = img.get(i, j);
      int a = int(random(500));
      int size = int(random(100, 150));
      int kind = int(random(4));



      if ((red(pix)<100)&&(a<2)) {
        //noStroke();
        stroke(0);
        fill (255);
        //blendMode(LIGHTEST);



        if (kind == 1) {
          shape(icon1, i, j, size, size);
        } else if (kind == 2) {
          shape(icon2, i, j, size, size);
        } else if (kind == 3) {
          shape(icon3, i, j, size, size);
        } else if (kind == 4) {
          shape(icon4, i, j, size, size);
        }
      }
    }
  }
  frameRate(20);
  int b = int(mouseX);
  int c = int(10);

  //icon1.rotate(b);
  //  icon2.rotate(b);
  //  icon3.rotate(b);
  //  icon4.rotate(b);

  //  icon1.scale(c);
  //    icon2.scale(c);
  //    icon3.scale(c);
  //    icon4.scale(c);

  //icon1 = scale("icon1.svg");
  //  icon2 = scale("icon2.svg");
  //  icon3 = scale("icon3.svg");
  //  icon4 = scale("icon4.svg");



  //  icon1.scale( 2 );
  //       icon2.scale( 2 );
  //       icon3.scale( 2 );
  //       icon4.scale( 2 );
}

void mousePressed() {
  save("strek"+counter+".png");
  counter++;
}
