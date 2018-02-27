//Serial Writer


int led = 7;

void setup(){
  //while (!Serial); // required for Flora & Micro
  Serial.begin(9600);
  pinMode(led, OUTPUT);
  
}

void loop(){
  //Serial.write(45); // send a byte with the value 45
   int bytesSent = Serial.write("helloworld"); //send the string "hello" and return the length of the string.  
}
