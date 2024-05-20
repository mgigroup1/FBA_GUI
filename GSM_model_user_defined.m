% user-defined model
% creat a structure for storing all the info.
model = struct();
% stoichiometric matrix
model.S= [
    2, -1, 0, 0, 0, 0, 0, 0, 0, 0, -2;  % 2a -> b + 2k
    0, 1, 0, 0, -1, -1, -1, -1, 0, -1, 0;  % b -> e + f + g + h + j
    2, 0, 0, 1, 0, -2, -2, 0, -1, -2, 0;  % 2a + d -> 2f + 2g + i + 2j
    0, 1, -1, -1, 0, 0, 0, 0, 0, 0, 0;  % b -> c + d
    6, -1, 0, 0, -2, -2, -2, -2, 0, -2, -6;  % Carbon balance
];
% the tag name for the mets and rxns
model.mets = {'1', '2', '3', '4', '5'}';
model.rxns = {'a','b','c','d','e','f','g','h','i','j','k'}';
% set a larve positive or negative value for the lb and ub.
model.lb = [0,0,0,-1000,0,-1000,0,-1000,0,0,0]'; % d,f, h reactions are reversible.
model.ub = [1000,1000,1000,1000,1000,1000,1000,1000,1000,1000,1000]';
% revisibility
model.rev = [0,0,0,1,0,1,0,1,0,0,0]'; % rev = 1
% S*v = b, 
model.b = [0,0,1.75,0,0]';
% The objective vector. When the coefficient of the first element =1, we
% say a is the objective. The vector can be defined in the GUI.
model.c = [0,0,0,0,0,0,0,0,0,0,0]';
% name the model
modelJoint = model;
% save the file (.mat)


