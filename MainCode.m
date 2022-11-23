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

touch = brick.TouchPressed(3);
distance = brick.UltrasonicDist(2);
color = brick.ColorCode(1);
disp(color);

while (color ~= 2)
        color = brick.ColorCode(1);
        distance = brick.UltrasonicDist(2);
        touch = brick.TouchPressed(3);
        disp(color);
       
    while(color ~= 3)
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

    while (color == 3)
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
        end
    end
    
end

brick.StopAllMotors();