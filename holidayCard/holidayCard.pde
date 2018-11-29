snowFlake [] s = new snowFlake[500];
tree t;
int x = 600;
int y = 470;
void setup() {
  size(1000, 600);
  frameRate(60);
  for ( int i = 0; i < s.length; i++) {
    s[i] = new snowFlake(((float)(Math.random() * 1000) + 1), (((float)(Math.random()) * 50) + 1));
  }
  PImage c= loadImage("gift1.png");
  image(c, x, y, 650, 350);
  t = new tree();
}

void draw() {
  fill(1, 53, 137);
  rect(0, 0, width, height);
  t.show();
  for (int i = 0; i < s.length; i++)
  {
    s[i].move();
    s[i].show();
    
  }
  
}

void keyPressed() {
  if (key == '1') {
    x=10000;
    y=10000;
  }
  if (key == '2') {
    x=600;
    y=470;
  }
}

interface snow {
  void move();
  void show();
}
