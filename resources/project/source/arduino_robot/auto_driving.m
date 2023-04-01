%% auto_driving.m
robot = arduino('COM3');
robot.analogReference('default');

in1 = 5;
in2 = 6;
in3 = 9;
in4 = 10;

echoPin = 4;
trigPin = 3;

rightIR = 7;
leftIR = 8;

function readSensorData()
    digitalWrite(trigPin, LOW);
    delayMicroseconds(2);
    digitalWrite(trigPin, HIGH);
    delayMicroseconds(10);
    digitalWrite(trigPin, LOW);
    distance = pulseIn(echoPin, HIGH) / 58.00;  %/Equivalent to (340m/s*1us)/2
end