// Fenstergroesse definierern
size(800, 600);

// Fuellfarbe fuer Objekte definieren
fill(255, 150, 0);
// Rechteck zeichnen x, y Koordinate, breite, hoehe
rect(0, 0, 80, 50);
// Konturfarbe festlegen
stroke(255, 0, 0);

rect(400, 300, 100, 100);

// zeichne Rechtecke von linker oberen Ecke
rectMode(CENTER);

// Konturstaerke auf 3px festlegen
strokeWeight(3);
rect(400, 300, 100, 100);

fill(255, 0, 0, 100);

// Ellipsen von der linken oberen Ecke referenziert zeichnen
ellipseMode(CORNER);

// keine Fuellung zeichnen
noFill();
ellipse(0, 0, 80, 80);

// keine Kontur zeichnen
noStroke();
fill(#FF9300);
ellipse(500, 200, 100, 100);
