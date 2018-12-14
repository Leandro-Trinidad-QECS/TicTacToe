class Tile {
  float x,y;
  int value = (int) random(-2,2); // 1 for X; 0 for O
  int id; // eache tile gets an id 1-9
  int w = 100;
  Tile() {
  }
  void show() {
    rectMode(CENTER);
    stroke(0);
    strokeWeight(3);
    fill(230);
    if(isHover() && value == -1) {
      fill(200);
    }
    if(value == 0) {
      fill(254,173,206);
    }
    if(value == 1) {
      fill(207,208,254);
    }
    rect(x,y,w,w);
  }
  private void addValue(int value) {
    this.value = value;
  }
  private void offset(float x, float y) {
    this.x = x;
    this.y = y;
  }
  
  private boolean isHover() {
    if(mouseX < this.x+ this.w/2 && mouseX > this.x - this.w/2 && mouseY < this.y + this.w/2 && mouseY > this.y - this.w/2) {
      return true;
    }
    return false;
  }
}
