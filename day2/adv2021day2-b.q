cont: read0`$"C:\\_git\\advent2021q\\day2\\inp.one";
cont: " " vs' cont;
cont: {(`$x[0];"J"$x[1])}'[cont];
t: flip `dir`val!flip cont;
f: {[dir; val; pre] 
    if[dir = `forward; :0]
    if[dir = `down; :0 + val]
    if[dir = `up; :0 - val]

};
t: update aim: 0 from t;
t: update aim2: f'[dir; val; prev aim] from t;
t: update aim3: sums aim2 from t;
t: update forw: sums val from t where dir = `forward;
t: update depth: aim3*val from t where dir = `forward;
t: update depthSum: sums depth from t where dir = `forward;
select (last forw) * last depthSum from t

/1963088820 - correct
