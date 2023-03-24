%% led_blink_analog.m
a = arduino('COM3');
pin = 11;
bl = 10;

a.pinMode(11,'output');

for i = 1:bl
    for j = 0:255
        a.analogWrite(11,j);
    end
end

delete(a);