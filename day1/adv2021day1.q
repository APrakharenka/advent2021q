
cont: read0`$"C:\\_git\\advent2021q\\day1\\inp.one";
cont;
li: "J"$'cont;
del: deltas li;
res: -1 + count del where del > 0;
res