while 1
    distance = brick.UltrasonicDist(2);

    brick.MoveMotor('A', -50);
    brick.MoveMotor('C', -50);

    if (distance <= 20)
            brick.MoveMotor('A', 50);
            brick.MoveMotor('C', -50);
            pause(.25);
            disp(distance);
    end
end
