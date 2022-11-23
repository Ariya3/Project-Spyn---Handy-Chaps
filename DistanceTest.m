% NaC = 0
% black = 1
% blue = 2
% green = 3
% yellow = 4
% red = 5
% white = 6
% brown = 7
global key 
InitKeyboard();

while 1
    
    color = brick.ColorCode(1);
    distance = brick.UltrasonicDist(2);
    touch = brick.TouchPressed(3);
    disp(color);
    if(color == 3)
color = brick.ColorCode(1);


while 1
    pause(0.1);
    switch key
       %% Wheel Direction
        case 'uparrow'
            brick.MoveMotor('A', -100);
            brick.MoveMotor('C', -100);
            disp ('Up Arrow Pressed!');

        case 'downarrow'
            brick.MoveMotor('A', 100);
            brick.MoveMotor('C', 100);
            disp ('Down Arrow Pressed!');

        case 'leftarrow'
            brick.MoveMotor('A', 50);
            brick.MoveMotor('C', -50)
            disp ('Left Arrow Pressed!');

        case 'rightarrow'
            brick.MoveMotor('A', -50);
            brick.MoveMotor('C', 50)
            disp ('Right Arrow Pressed!');
        
        %% Lift Controls
        case 'w'
            brick.MoveMotor('B', 25);
            disp ('W Pressed!')

        case 's'
            brick.MoveMotor('B', -25);
            disp ('S Pressed!')
        
        %% Pause and End Functions
        case 0
            brick.MoveMotor('A', 0);
            brick.MoveMotor('B', 0);
            brick.MoveMotor('C', 0);
            brick.MoveMotor('D', 0);
            disp ('No Key Pressed!');

        
            
        case'p'
            brick.StopAllMotors();
            break;

    end
end

    end
    if (distance <= 45)
        brick.MoveMotor('B', 0);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -48);
        disp(distance);

    elseif (distance > 45)
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -48.25);
        pause(1);
        brick.MoveMotor('A', -25);
        brick.MoveMotor('C', 25);
        pause(1.75);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -48.25);
        pause(2.5);
        brick.StopMotor('A');
        brick.StopMotor('C');
        disp(distance);
    end

    if (touch == 1)
        brick.MoveMotor('A', 50);
        brick.MoveMotor('C', 48.25);
        pause(1.5);
        brick.MoveMotor('A', 25);
        brick.MoveMotor('C', -25);
        pause(1.35);
    end

    if (color == 4) %stop sign
        brick.StopAllMotors();
        pause(1);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -48.25);
        disp(color);

    elseif (color == 5) %exit
        brick.MoveMotor('A', 0);
        brick.MoveMotor('C', 0);
        break;
    end

end

CloseKeyboard();