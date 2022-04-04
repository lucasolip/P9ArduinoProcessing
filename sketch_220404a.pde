import processing.serial.*;

Serial myPort;  // Create object from Serial class
int currentValue, max;
int col = 0;
String inValue, copyValue;

void setup()
{
  size(200,200); //make our canvas 200 x 200 pixels big
  String portName = Serial.list()[0]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600);
}

void draw() {
  background(map(currentValue, 0, 700, 0, 255));
  inValue = myPort.readStringUntil('\n');
  if (null != inValue) {
    currentValue = Integer.parseInt(inValue.substring(0,inValue.length()-2));
  }
}

/*void serialEvent(Serial p) { 
  inValue = p.readStringUntil(10);
}

void metodo() {
  copyValue = inValue;
  if (null == copyValue) copyValue = "-1";
  else if (match(copyValue, "[0123456789]+").length <= 0) {
    copyValue = "-1";
  }
  print(copyValue);
  currentValue = Integer.parseInt(copyValue);
  if (currentValue > max) {
    max = currentValue;
  }
  print(max);
}*/
