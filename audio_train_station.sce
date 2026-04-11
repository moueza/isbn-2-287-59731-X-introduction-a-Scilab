//intelligence https://chatgpt.com/c/699df554-6528-832c-b2f4-20bec6651a37 
// ==========================
// Paramètres
// ==========================

fs = 44100;
t = 0:1/fs:0.25;

// fréquences des notes
C  = 523.25;
E  = 659.25;
G  = 783.99;
C2 = 1046.5;

// enveloppe
env = exp(-4*t);

// génération des notes
note1 = sin(2*%pi*C*t).*env;
note2 = sin(2*%pi*E*t).*env;
note3 = sin(2*%pi*G*t).*env;
note4 = sin(2*%pi*C2*t).*env;

// silence
silence = zeros(1, fs*0.05);

// mélodie
motus = [note1 silence note2 silence note3 silence note4];

// lecture
playsnd(motus', fs);
