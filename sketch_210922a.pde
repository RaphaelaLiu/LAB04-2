PImage img;
float z = 0;

void setup(){
  size(964,487);
  img = loadImage("sea.png");
  background(img); 
}

void draw(){
  background(img);
  stroke(0,0,0);
  fill(0, 10);
  rect(0, 0, height, width);
  stroke(255, 100);

  for (float y = 0; y < height; y+= 20)
  {
    for (float x = 0; x < width; x = x + 1)
    {
      point(x, y + map(noise(x/100, y/100, z), 0, 1, -100, 100));
    }
  }
  z = z + 0.02;
}
