% NaC = 0
% black = 1
% blue = 2
% green = 3
% yellow = 4
% red = 5
% white = 6
% brown = 7

while 1
touch = brick.TouchPressed(3);
distance = brick.UltrasonicDist(2);
color = brick.ColorCode(1);

%run forward
brick.MoveMotor('A', -50);
brick.MoveMotor('C', - 50);

    %turn left
        %push button
    if (touch == 1)
        brick.MoveMotor('A', 50);
        brick.MoveMotor('C', - 50);
        pause(.05);
        disp(touch);
    end

%turn right
        %distance sensor
    if (distance > 20)
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', 50);
        pause(.5);
        disp(distance);

        if (touch == 1)
            brick.MoveMotor('A', 50);
            brick.MoveMotor('C', - 50);
            pause(.05);
            disp(touch);
        end   
    end

    %stop sign
    x = 0;
    while (x < 80)
    color = brick.ColorCode(1);
    x = x + 1;
        if (color == 4)
            brick.MoveMotor('A', 0);
            brick.MoveMotor('C', 0);
            pause(.5);
            brick.MoveMotor('A', -25);
            brick.MoveMotor('c', -25);
            pause(1);
        end
    end
end


