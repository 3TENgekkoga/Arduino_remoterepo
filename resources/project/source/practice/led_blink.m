%% led_blink.m
a = arduino('COM7'); %通信用シリアルポートの指定
pin = 11; %pin番号の指定

a.pinMode(pin, 'output'); %指定したpinを出力モードに変更
bl = 10; %点滅回数
t = 0.1; %待ち時間[sec]

for i = 1:bl
    a.digitalWrite(pin, 1); %pinに5Vを出力
    pause(t);
    a.digitalWrite(pin,0); %pinに0Vを出力
    pause(t);
end

delete(a); %指定したpinの開放