function grumpTone(octave)
    if nargin < 1
        octave = 1; 
    end 
    
    if octave == 1
        %~ Octave Higher
        rawFreqs = [415.3, 466.16, 523.25, 554.37, 0, 277.18];
    elseif octave == 2 
        %~ Octave Lower
        rawFreqs = [207.65, 233.08, 261.63, 277.18, 0, 138.59];
    end 
     
    timeNotes = [0.15, 0.15, 0.15, 0.15, 0.25, 0.2]; 
    notes = [rawFreqs; timeNotes];  
    for i = 1:length(notes)
        playtone(notes(1, i), notes(2, i)); 
    end 
end 

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