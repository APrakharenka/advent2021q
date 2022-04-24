cont: read0`$"C:\\_git\\advent2021q\\day4\\inp.one";
nums: "J"$ "," vs cont[0];
boardsStr: -1_' 6 cut  2_cont,"\n";
boards: " " vs'' boardsStr;
boards: {x where not x like ""}''[boards];
boards: {"J"$x}''[boards];
marks: {{{0b}'[til 5]}'[til 5]}'[til count boards];
i: 0;
doMark: {[b; num]
  inds: raze {x,'\: til 5} til 5;
  {if[boards[z;x[0];x[1]] = y; marks[z;x[0];x[1]]: 1b] }'[inds;num;b];
};
usedNums: 1_enlist(1);
dones: 1_enlist(001b; -1);
while[(not all done'[marks]) & i< count nums;
  num: nums[i];
  usedNums:: usedNums,num;
  {[b] doMark[b;num]}'[til count boards];
  i:: i+1;
  dones:: dones,enlist(done'[marks]; num);
];
firstWin: boards where done'[marks];
firstWinInd: first (til count boards) where done'[marks];
res: 0;
unSum: {[b]
  inds: raze {x,'\: til 5} til 5;
  {[x;z] if[marks[z;x[0];x[1]] = 0b; res:: res + boards[z;x[0];x[1]]]}'[inds;b];
};
lastInd: first where last deltas (-2#dones[;0]);
unSum[lastInd];
res*num
/1827j correct