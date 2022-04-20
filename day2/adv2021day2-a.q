cont: read0`$"C:\\_git\\advent2021q\\day2\\inp.one";
cont: " " vs' cont;
cont: {(`$x[0];"J"$x[1])}'[cont];
t: flip `dir`val!flip cont;
tots: select sum val by dir from t;
hor: tots[`forward];
vert: tots[`down] - tots[`up];
hor*vert
/val	1714680  -  correct





