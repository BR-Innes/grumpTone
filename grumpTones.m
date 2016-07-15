function grumpTones(theme) 
%% grumpTones(theme) 
% Plays snippets of a variety of Game Grumps related themes w/ tones. 
% Input argument 'theme' (a number) specifies the theme you want to play:
% grumpTones(1) = Game Grumps Theme (default) 
% grumpTones(2) = Game Grumps Animated Theme
% grumpTones(3) = Steam Train Theme

%~Play 'Game Grumps Theme' if no input
if nargin < 1 
    theme = 1; 
end 

%~Select theme according to input
if theme == 1
    %~Game Grumps Theme ('...and we're the Game Grumps!') 
    rawFreqs = [261.63, 293.67, 329.63, 392.00, 0, 349.23];
    timeNotes = [0.65, 0.5, 0.1, 0.3, 0.03, 0.3];
elseif theme == 2
    %~Game Grumps Animated 
    rawFreqs = [415.3, 466.16, 523.25, 554.37, 0, 277.18];
    timeNotes = [0.15, 0.15, 0.15, 0.15, 0.25, 0.2]; 
elseif theme == 3
    %~Steam Train Theme ('...so hop aboard the Steam Train!')
    rawFreqs = [523.25, 0, 523.25, 0, 523.25, 0, 523.25, 587.3, 466.16, ...
        392];
    timeNotes = [0.1, 0.03, 0.1, 0.03, 0.1, 0.03, 0.25, 0.15, 0.4, 0.7];
end 

%~Make the notes and play them
notes = [rawFreqs; timeNotes];  
    for i = 1:length(notes)
        playtone(notes(1, i), notes(2, i)); 
    end 
end 

%~Function that generates the notes/pauses
function playtone(f, d)
    if f == 0  
        pause(d)
    else 
        s = 8000; 
        n = d*s; 	
        t = 1:n;
        tone = sin(2*pi*f*t/s);
        sound(tone, s);
        pause(d); 
    end 
end 