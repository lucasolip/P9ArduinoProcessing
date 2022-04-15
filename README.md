# Pong y Arduino
![ezgif-5-717afc8c97](https://user-images.githubusercontent.com/47455265/153283496-124530cf-142f-4950-901d-519f9b7ff0e7.gif)
<br>*Lucas Olivares Pérez*<br>*Aleksander Borysov Ravelo*
## Características
Reimplementación de la primera práctica de la asignatura reconfigurando los controles de un jugador para adecuarse a un sensor de proximidad programado en Arduino.<br>Para que el controlador funcione, el programa de Arduino almacenado en el directorio SensorController debe ejecutarse a la vez que el sketch de Processing.
## Implementación
El programa que se ejecuta en la placa, una Arduino UNO en el laboratorio, recibe datos en crudo desde el sensor de proximidad por un puerto analógico/digital y los escribe como String en el puerto Serial conectado al ordenador donde se ejecuta el sketch de Processing. Allí, el jugador recibe los datos como enteros, los remapea a posiciones válidas para el jugador y suaviza el movimiento con una interpolación lineal (lerp).
## Herramientas
- [Arduino](https://www.arduino.cc/reference/en/)