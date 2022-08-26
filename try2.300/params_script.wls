#!/usr/bin/env wolframscript
(* ::Package:: *)

fibersI=Import["./output/fib.out","Table"];
types=First@Import["./output/types.out","Table"];
indexes=Import["./output/ctags900.out","Table"];

mCM=Map[If[#>0&&types[[#]]==1,#,0]&,indexes,{2}];
mFB=Map[If[#>0&&types[[#]]==2,#,0]&,indexes,{2}];
(*F[x_]:={Mean[x],StandardDeviation[x]};*)
F[x_]:=Mean[x];
legsC=Table[Module[{mCell=Map[If[#==n,0,1]&,indexes,{2}]},{n,CountLegs[ImageCrop@Image[mCell\[Transpose]]],types[[n]]}],{n,1,Length@types-1}];
legsCM=Select[legsC,#[[3]]==1&][[;;,2]];
legsFB=Select[legsC,#[[3]]==2&][[;;,2]];

hor=Map[If[#==0,0,1]&,indexes[[2;;]]-indexes[[;;-2]],{2}];
vert=Map[If[#==0,0,1]&,indexes[[;;,2;;]]-indexes[[;;,;;-2]],{2}];
bord=Map[If[#==0,0,1]&,ArrayPad[hor,{{1,0},{0,0}}]+ArrayPad[hor,{{0,1},{0,0}}]+ArrayPad[vert,{{0,0},{1,0}}]+ArrayPad[vert,{{0,0},{0,1}}],{2}];
contsCM=Map[If[#>0&&types[[#]]==1,1,0]&,indexes,{2}]conts bord;
contsFB=Map[If[#>0&&types[[#]]==2,1,0]&,indexes,{2}]conts bord;
Ncm=Length@Position[types,1];
Nfb=Length@Position[types,2];

params=<<"params.txt";

newline={params[[3;;]],{F@(ComponentMeasurements[mFB,"Area"][[;;,2]]2.5^2),
newline={params[[3;;]],{F@(ComponentMeasurements[mCM,"Area"][[;;,2]]2.5^2),
F[ComponentMeasurements[mCM,"ConvexCoverage"][[;;,2]]],
F[(1-ComponentMeasurements[mCM,"CaliperElongation"][[;;,2]])^-1],N@F[legsCM],Total[Flatten@contsCM]/Ncm}, 
{F@(ComponentMeasurements[mFB,"Area"][[;;,2]]2.5^2),
F[ComponentMeasurements[mFB,"ConvexCoverage"][[;;,2]]],
F[(1-ComponentMeasurements[mFB,"CaliperElongation"][[;;,2]])^-1],N@F[legsFB]}};
F[(1-ComponentMeasurements[mFB,"CaliperElongation"][[;;,2]])^-1],N@F[legsFB],Total[Flatten@contsFB]/Nfb}};

If[Position[FileNames[], "output.txt"]=={},

	newline>>"output.txt",
	out=<<"output.txt";
	(newline~Join~out)>>"output.txt"
	]
Exit[]
