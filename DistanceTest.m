% NaC = 0
% black = 1
% blue = 2
% green = 3
% yellow = 4
% red = 5
% white = 6
% brown = 7

while 1
    color = brick.ColorCode(1);
    distance = brick.UltrasonicDist(2);
    touch = brick.TouchPressed(3);
   
    if (distance <= 50)
        brick.MoveMotor('B', 0);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        disp(distance);

    elseif (distance > 50)
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', 50);
        pause(0.65);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        pause(.25);
        brick.StopMotor('A');
        brick.StopMotor('C');
        disp(distance);
    end

    if (touch == 1)
        brick.MoveMotor('A', 50);
        brick.MoveMotor('C', 50);
        pause(.25);
        brick.MoveMotor('A', 50);
        brick.MoveMotor('C', -50);
        pause(.5);
    end

    if (color == 5)
        brick.MoveMotor('A', 0);
        brick.MoveMotor('C', 0);
        break;
    end

end
