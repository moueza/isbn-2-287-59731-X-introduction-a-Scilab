//intelligence https://chatgpt.com/c/699df554-6528-832c-b2f4-20bec6651a37 
// ======================================
// JINGLE MOTUS VALIDATION (fidèle)
// ======================================

fs = 44100;

// fonction note avec enveloppe réaliste
function y = note(f, duree)

    t = 0:1/fs:duree;

    // enveloppe ADSR simplifiée
    attack = exp(-8*t);
    sustain = ones(t);
    release = exp(-6*(duree - t));

    env = attack .* release;

    // ajoute 2 harmoniques pour son TV
    y = ( ...
        sin(2*%pi*f*t) + ...
        0.5*sin(2*%pi*2*f*t) + ...
        0.3*sin(2*%pi*3*f*t) ...
        ) .* env;

endfunction


// ======================================
// notes Motus exactes
// ======================================

G4 = 783.99;
C5 = 1046.5;
E5 = 1318.5;
G5 = 1568.0;


// rythme réel Motus
n1 = note(G4, 0.12);
n2 = note(C5, 0.12);
n3 = note(E5, 0.12);
n4 = note(G5, 0.35);


// silences courts
s = zeros(1, fs*0.03);


// assemblage
motus = [n1 s n2 s n3 s n4];


// ======================================
// lecture
// ======================================

playsnd(motus', fs);
