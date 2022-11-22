global key 
InitKeyboard();

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
            brick.MoveMotor('B', 75);
            disp ('W Pressed!')

        case 's'
            brick.MoveMotor('B', -75);
            disp ('S Pressed!')
        
        %% Pause and End Functions
        case 0
            brick.MoveMotor('A', 0);
            brick.MoveMotor('B', 0);
            brick.MoveMotor('C', 0);
            brick.MoveMotor('D', 0);
            disp ('No Key Pressed!');

        case 'q'
            brick.MoveMotor('A', 0);
            brick.MoveMotor('B', 0);
            brick.MoveMotor('C', 0);
            brick.MoveMotor('D', 0);
            disp ('Exit Keyboard Control');
            break;
    end

end
CloseKeyboard();