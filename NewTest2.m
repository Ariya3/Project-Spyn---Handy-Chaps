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
    color = brick.ColorCode(1)
   
    if (color == 5)
        disp(color);
        brick.MoveMotor('A', 0);
        brick.MoveMotor('C', 0);
        pause(1);
        brick.MoveMotor('B', 0);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        pause(1);
    
    elseif (color == 2) %handycap pickup color
        while 1 
            pause(0.1);
            switch key
               %% Wheel Direction
                case 'uparrow'
                    brick.MoveMotor('A', -100);
                    brick.MoveMotor('C', -100);
                    
                case 'downarrow'
                    brick.MoveMotor('A', 100);
                    brick.MoveMotor('C', 100);
                    
                case 'leftarrow'
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('C', -50)
                    
                case 'rightarrow'
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('C', 50)
                    
                %% Lift Controls
                case 'w'
                    brick.MoveMotor('B', 25);
                    
                case 's'
                    brick.MoveMotor('B', -25);
                    
                %% Pause and End Functions
                case 0
                    brick.MoveMotor('A', 0);
                    brick.MoveMotor('B', 0);
                    brick.MoveMotor('C', 0);
                    brick.MoveMotor('D', 0);
                   
                case 'q'
                    brick.MoveMotor('A', 0);
                    brick.MoveMotor('B', 0);
                    brick.MoveMotor('C', 0);
                    brick.MoveMotor('D', 0);
                    break;
            end
        end

    elseif (color == 6)
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
        disp(color);
    else
        brick.MoveMotor('B', 0);
        brick.MoveMotor('A', -50);
        brick.MoveMotor('C', -50);
    end

end

CloseKeyboard();