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

    %% starts keyboard control
    if(color == 2 || color == 5)
        color = brick.ColorCode(1);
        while 1
            pause(0.1);
            switch key
                % Wheel Direction
                case 'uparrow'
                    brick.MoveMotor('A', -30);
                    brick.MoveMotor('C', -30);
                    disp ('Up Arrow Pressed!');

                case 'downarrow'
                    brick.MoveMotor('A', 30);
                    brick.MoveMotor('C', 30);
                    disp ('Down Arrow Pressed!');

                case 'leftarrow'
                    brick.MoveMotor('A', 30);
                    brick.MoveMotor('C', -30)
                    disp ('Left Arrow Pressed!');

                case 'rightarrow'
                    brick.MoveMotor('A', -30);
                    brick.MoveMotor('C', 30)
                    disp ('Right Arrow Pressed!');

                    % Lift Controls
                case 'w'
                    brick.MoveMotor('B', 25);
                    disp ('W Pressed!')

                case 's'
                    brick.MoveMotor('B', -25);
                    disp ('S Pressed!')

                    % Pause
                case 0
                    brick.MoveMotor('A', 0);
                    brick.MoveMotor('B', 0);
                    brick.MoveMotor('C', 0);
                    brick.MoveMotor('D', 0);
                    disp ('No Key Pressed!');

                    %switches back to auton
                case'p'
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('C', -50);
                    pause(1);
                    brick.StopAllMotors();
                    break;

            end
        end

    end

    %% autonomous code
    %moves forward
    if (distance <= 45)
        brick.MoveMotor('B', 0);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        disp(distance);

    %turn right
    elseif (distance > 45)
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        pause(1.3);
        brick.MoveMotor('A', -25);
        brick.MoveMotor('C', 25);
        pause(1.87);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        pause(2.5);
        brick.StopMotor('A');
        brick.StopMotor('C');
        disp(distance);
    end

    %turns left
    if (touch == 1)
        brick.MoveMotor('A', 50);
        brick.MoveMotor('C', 50);
        pause(1.25);
        brick.MoveMotor('A', 25);
        brick.MoveMotor('C', -25);
        pause(1.45);
    end

    %stop sign
    if (color == 4)
        brick.StopAllMotors();
        pause(2);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        disp(color);

    %break condition
    elseif (color == 3) %exit
        brick.MoveMotor('A', 0);
        brick.MoveMotor('C', 0);
        break;
    end

end

CloseKeyboard();

% rightWheel = c 
% left = a 
% list = b 
% color = 1
% dist = 2
% touch = 3