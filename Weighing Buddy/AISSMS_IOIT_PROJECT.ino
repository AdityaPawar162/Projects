#include "HX711.h"
 
// HX711 circuit wiring
const int LOADCELL_DOUT_PIN = A2;
const int LOADCELL_SCK_PIN = A3;
float grams;
const int buzzer = A5;
 
HX711 scale;
 
void setup() {
  pinMode(buzzer,OUTPUT);
  Serial.begin(57600);
  scale.begin(LOADCELL_DOUT_PIN, LOADCELL_SCK_PIN);
}
 
void loop() {
 
  if (scale.is_ready()) {
    long reading = scale.read() * (195);  
    float grams = (float)reading / 10000.0;
    grams =grams-2849;
    Serial.print("HX711 reading: ");
    if(grams<0)
    {
     Serial.print(grams=0);
     grams = 0;
    }
    else
    {
      Serial.print(grams);
    }
    Serial.println(" g");
    if (grams >= 1500){
    tone(A5,450);
    delay(500);
    noTone(buzzer);
    delay(500);
    }
   else {
    digitalWrite(A5,LOW);
    }  
  } else {
    Serial.println("HX711 not found.");
  }
 delay(1000);
  
  
}
