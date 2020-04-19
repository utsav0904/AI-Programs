%Weight
kgtog(X,Y):-Y is X*1000.
gtokg(X,Y):-Y is X/1000.

gtomg(X,Y):-Y is X*1000.
mgtog(X,Y):-Y is X/1000.

kgtomg(X,Y):-kgtog(X,Z),gtomg(Z,Y).
mgtokg(X,Y):-mgtog(X,Z),gtokg(Z,Y).

%Distance
kmtom(X,Y):-Y is X*1000.
mtokm(X,Y):-Y is X/1000.

mtocm(X,Y):-Y is X*100.
cmtom(X,Y):-Y is X/100.

cmtomm(X,Y):-Y is X*10.
mmtocm(X,Y):-Y is X/10.

kmtocm(X,Y):-kmtom(X,Z),mtocm(Z,Y).
cmtokm(X,Y):-cmtom(X,Z),mtokm(Z,Y).

kmtomm(X,Y):-kmtocm(X,Z),cmtomm(Z,Y).
mmtokm(X,Y):-mmtocm(X,Z),cmtokm(Z,Y).

mtomm(X,Y):-mtocm(X,Z),cmtomm(Z,Y).
mmtom(X,Y):-mmtocm(X,Z),cmtom(Z,Y).

%Volume
ltoml(X,Y):-Y is X*1000.
mltol(X,Y):-Y is X/1000.

%Area
sqkmtosqm(X,Y):-Y is X*1000000.
sqmtosqkm(X,Y):-Y is X/1000000.

%Angle
degtorad(X,Y):-Y is X*0.0174533.
radtodeg(X,Y):-Y is X*57.29580406904963.

%Time
sectomin(X,Y):-Y is X*60.
mintosec(X,Y):-Y is X/60.

sectohr(X,Y):-Y is X/3600.
hrtosec(X,Y):-Y is X*3600.

hrtomin(X,Y):-Y is X/60.
mintohr(X,Y):-Y is X*60.

%Temperature
ctof(X,Y):-Y is X*1.8+32.
ctok(X,Y):-Y is X+273.15.

ftoc(X,Y):-Y is (X-32)*(5/9).
ftok(X,Y):-Y is (X+459.67)*5/9.

ktoc(X,Y):-Y is X+273.15.
ktof(X,Y):-Y is X*9/5+459.67.