%for Statement
disp('For Loop');
for i =1:1:10
        disp(i)
end

% while Statement
disp('While Loop');
testVariable = 1;
while testVariable <= 10
    disp(testVariable)
    testVariable = testVariable + 1;
end

%switch statement
disp('Switch Loop');
testVariable = 5;
switch testVariable
    case 5
        disp(100)
    case 2
        disp(2012)
    otherwise
        fprintf('Not matched')
end