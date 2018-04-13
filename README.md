# Wiki Protocol


### Exercice 2

En fonction de la valeur retour de Serial.read() nous allumons la led si 1 nous l'éteignons si 0 

```
#include <Arduino.h>
char incomingChar = 0;   // variable contenant le caractère envoyé sur l'entrée série

void setup() {
    // put your setup code here, to run once:
    Serial.begin(9600);
    pinMode(LED_BUILTIN, OUTPUT);
}

void loop() {
    // put your main code here, to run repeatedly:

    // Si l'entrée serie est disponible
    if (Serial.available() > 0) {
        incomingChar = Serial.read();
        
        if(incomingChar == '1') {
            digitalWrite(LED_BUILTIN, LOW); // Led allumée
        } else if (incomingChar == '0') {
            digitalWrite(LED_BUILTIN, HIGH); // Led éteinte
        }
    }
}

```

### Exercice 3 

blabla

```
Give the example
```

blabla
```
until finished
```


blabla
