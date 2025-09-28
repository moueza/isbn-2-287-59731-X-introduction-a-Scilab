// Points
X = [0 1 2 3];
Y = [0 1 0 -1];
Z = [0 0 1 2];

// Nouvelle figure
clf;
scf();

// Boucle sur chaque segment
n = length(X);
for k = 1:n-1
    param3d1([X(k) X(k+1)], [Y(k) Y(k+1)], [Z(k) Z(k+1)]);
    e = gce();               // récupère la polyline créée
    e.thickness = 3;         // épaisseur
    e.foreground = k+2;      // couleur différente
end

xtitle("Segments colorés individuellement");
