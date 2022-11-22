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
    touch = brick.TouchPressed(3);
   
    if (color == 5)

         brick.StopAllMotors();
         pause(2);
         brick.MoveMotor('A', -50);
         brick.MoveMotor('C', -50);
        disp(color);
    
    elseif (color == 4) %handycap pickup color
        brick.MoveMotor('A', 50);
        brick.MoveMotor('C', -50);
        disp(color);

    elseif (touch == 1)
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        disp(color);
    else
        brick.MoveMotor('B', 0);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        disp(color);
    end

end
