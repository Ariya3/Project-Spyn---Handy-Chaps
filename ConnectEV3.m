%% connect brick 
global brick

brick = ConnectBrick('MAURICE')

%% play tone and get battery level
brick.playTone(100, 800, 500);

v = brick.GetBattVoltage()