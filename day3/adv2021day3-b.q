ines:  read0 `$"C:\\tmp\\ac2021\\3\\inp.inp";
vv: "J"$''lines[;];

what: {[li; i; fun] $[fun[(sum li[;i]);(count li)%2]; 1; 0] };
filter: {[li; i; fun]
  nel: li where li[;i] = what[li; i; fun];
  $[1= count nel; raze nel; filter[nel; i+1; fun]]
};
ogr: 2 sv filter[vv; 0; {x >= y}];
co2: 2 sv filter[vv; 0; {x < y}];

ogr*co2
/6677951j - correct