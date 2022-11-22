% NaC = 0
% black = 1
% blue = 2
% green = 3
% yellow = 4
% red = 5
% white = 6
% brown = 7

color = brick.ColorCode(1);
while (color ~= 2)
        color = brick.ColorCode(1);
        distance = brick.UltrasonicDist(2);
        touch = brick.TouchPressed(3);
       

        if (touch == 1)
            brick.MoveMotor('A', 50);
            brick.MoveMotor('C', 50);
            pause(.25);
            brick.MoveMotor('A', 25);
            brick.MoveMotor('C', -25);
            pause(2.5);
        end

        if (distance <= 35)
            brick.MoveMotor('B', 0);
            brick.MoveMotor('A', -50);
            brick.MoveMotor('C', -50);
            disp(distance);
    
        elseif (distance > 35)
            brick.MoveMotor('A', -50);
            brick.MoveMotor('C', -50);
            pause(1);
            brick.MoveMotor('A', -25);
            brick.MoveMotor('C', 25);
            pause(3);
            brick.MoveMotor('A', -50);
            brick.MoveMotor('C', -50);
            pause(.25);
            brick.StopMotor('A');
            brick.StopMotor('C');
            disp(distance);
        end
    
        
    


        if (color == 5) %stop sign
            brick.StopAllMotors();
            pause(1);
            brick.MoveMotor('A', -50);
            brick.MoveMotor('C', -50);
            disp(color);
        end
   
    
    
end

brick.StopAllMotors();