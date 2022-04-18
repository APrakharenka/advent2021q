
cont: read0`$"C:\\_git\\advent2021q\\day1\\inp.one";
cont;
li: "J"$'cont;
coc: til count li-2;
thr: {[ll; i] ll[i]+ll[i+1]+ll[i+2]};
sus: li thr/: coc;
sus: sus where sus > 0;
res: count sus where sus < next sus;
res



