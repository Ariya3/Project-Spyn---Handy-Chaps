global key
InitKeyboard();

a = 0;
color = 1;
distance = brick.UltrasonicDist(3);

while 1
    pause(0.1);
    if a == 0
        pause(0.1);
        brick.MoveMotor('A', -40);
        brick.MoveMotor('C', -40);
        
        distance = brick.UltrasonicDist(3);
        color = brick.ColorColor(4);
    end
    
    %---------------------------------
    if (distance > 5)  %gap
        
        pause(0.85);
        brick.StopMotor('A');
        brick.StopMotor('C');
        
        brick.MoveMotor('A', 19.25);
        brick.MoveMotor('C', -19.25);
        
        pause(1.5);
        brick.StopMotor('A');
        brick.StopMotor('C');
        
        brick.MoveMotor('A', -40);
        brick.MoveMotor('C', -44);
        pause(2);
    else
        brick.MoveMotor('A', -40);
        brick.MoveMotor('C', -44);
    end
    %-------------------------------------
    if color == 5 %stopsign
        brick.StopAllMotors();
        pause(2);
    %-------------------------------------
    elseif color == 2 %usercontrol blue
        while 1
            pause(0.1);
            brick.StopMotor('A');
            brick.StopMotor('C');
            %If this doesn't initially work, try setting a to 1
            switch key
                case 'uparrow'
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('C', -50);
                case 'downarrow'
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('C', 50);
                case 'leftarrow'
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('C', 50);
                case 'rightarrow'
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('C', -50);
                case 'w'
                    brick.MoveMotor('B', 20);
                case 's'
                    brick.MoveMotor('B', -10);
                case 'x'
                    brick.StopMotor('A');
                    brick.StopMotor('C');
                    brick.StopMotor('B');
                case 'q'
                    break;
            end
        end
    %---------------------------------------
    elseif color == 3 %usercontrol green
        while 1
            pause(0.1);
            brick.StopMotor('A');
            brick.StopMotor('C');
            %If this doesn't initially work, try setting a to 1
            switch key
                case 'uparrow'
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('C', -50);
                case 'downarrow'
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('C', 50);
                case 'leftarrow'
                    brick.MoveMotor('A', -50);
                    brick.MoveMotor('C', 50);
                case 'rightarrow'
                    brick.MoveMotor('A', 50);
                    brick.MoveMotor('C', -50);
                case 'w'
                    brick.MoveMotor('B', 20);
                case 's'
                    brick.MoveMotor('B', -10);
                case 'x'
                    brick.StopMotor('A');
                    brick.StopMotor('C');
                    brick.StopMotor('B');
                case 'q'
                    break;
            end
        end
    end
end

CloseKeyboard();