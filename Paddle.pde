class Paddle {
  PVector position;
  int w, h;
  float speed;
  
  Paddle(int w, int h, int x, float speed) {
    position = new PVector(x, height/2);
    this.speed = speed;
    this.w = w;
    this.h = h;
  }
  
  void update(int direction) {
    position.y += speed*direction;
    edges();
  }
  
  void sensorUpdate() {
    String inValue;
    int currentValue;
    int maxValue = height;
    inValue = myPort.readStringUntil('\n');
    if (null != inValue) currentValue = Integer.parseInt(inValue.substring(0,inValue.length()-2));
    else currentValue = maxValue/2;
    float sensorPosition = map(currentValue, 0, maxValue, 0, height - h);
    position.y = lerp(position.y, sensorPosition, 0.1);
  }
  
  void display() {
    rect(position.x, position.y, w, h);
  }
  
  void edges() {
    if (position.y < 0) {
      position.y = 0;
    } else if (position.y > height - h) {
      position.y = height - h;
    }
  }
}
