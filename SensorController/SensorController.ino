void setup() {
  Serial.begin(9600); // Start serial communication at 9600 bps
}

void loop() {
  Serial.println(analogRead(0));
  delay(25);
}
