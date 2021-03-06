function [ output ] = mono16raw2mat( x,step)
%MONO16RAW2MAT Converts raw mono 16 data in x to a matlab matrix

b1 = double(x(1:2:end)); % Least significant byte
b2 = double(x(2:2:end)); % Most significant byte

%% Find cols for Mono16 where 16bit values
% are stored as 2 8bit values
assert(isequal(mod(step,2),0));
cols = step/2;


%% Collect output
output = reshape(b1+256*b2,length(b1)/cols,cols);
output = output';
end

