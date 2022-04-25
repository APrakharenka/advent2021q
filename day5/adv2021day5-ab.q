cont: read0`$"C:\\_git\\advent2021q\\day5\\inp.one";
ds: " -> " vs/: cont;
x1: {"J"$x[;0]} "," vs' ds[;0];
y1: {"J"$x[;1]} "," vs' ds[;0];
x2: {"J"$x[;0]} "," vs' ds[;1];
y2: {"J"$x[;1]} "," vs' ds[;1];
t: ([] x1; y1; x2; y2);
size: 1+max( x1 y1 x2 y2);
field: {{0}' [til size]}'[til size];
/deca: select from t where  (x1 = x2) | (y1 = y2);
deca: t; /for B
step: {di: y - x; $[di=0; 0; $[di>0;1;-1]]};
points: 1_enlist((-1;-1));
inRange: {[x;mi;ma] (x >= min(mi;ma)) & x <= max(mi;ma)};
{
  ll: deca[x];
  stepX: step[ll[`x1]; ll[`x2]];
  stepY: step[ll[`y1]; ll[`y2]];
  cX: ll[`x1]; /min (ll[`x1];ll[`x2]);
  cY: ll[`y1]; /min (ll[`y1];ll[`y2]);
  /while[(cX <= (max (ll[`x1];ll[`x2]))) & cY <= (max (ll[`y1];ll[`y2]));
  while[inRange[cX;ll[`x1];ll[`x2]] & inRange[cY;ll[`y1];ll[`y2]];
    field[cX; cY]:: field[cX; cY] + 1;
    points:: points,enlist((cX;cY));
    cX+: stepX;
    cY+: stepY;
  ];
}' [til count deca];
sum {count x where x > 1}'[field]
/ 5147j - correct - took maybe 1 minute

/B
/(Roundtrip: 02:48.484)
/16925j


flip field

inRange[8;7;1]