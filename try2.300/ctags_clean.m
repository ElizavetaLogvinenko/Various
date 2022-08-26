(* ::Package:: *)

(* ::Input:: *)
(*SetDirectory@NotebookDirectory[];*)


(* ::Input:: *)
(*ExpandFileName["C:\\Users\\Andrey\\Desktop\\11.2"]*)


(* ::Input:: *)
(*list=FileNames["./output/ctags*.out","",2];*)


(* ::Input:: *)
(*data=Import["./output/ctags"<>ToString[1000]<>".out","Table"];*)


(* ::Input:: *)
(*Sort[DeleteDuplicates[Flatten@data]] //Last*)
(*fibersI=Import["./output/fib.out","Table"];*)
(*types=First@Import["./output/types.out","Table"];*)
(*permute=RandomSample[Range[M]];*)
(*changes=Table[i-> permute[[i]],{i,1,M}];*)
(*permute2=RandomSample[Range[M]];*)
(*changes2=Table[i-> permute2[[i]],{i,1,M}];*)
(*(*{1,1,1}(0.6(x/.changes)/M+If[x\[Equal]0,0,0.4])-{0.3,0.3,0.3}hue[(x/.changes2)/M]*)*)
(*(*data=Import["./output/ctags"<>ToString[100#]<>".out","Table"]&/@Range[12];*)*)
(*(*ImageAssemble@Partition[Map[Image[Map[ColorsReplace,#,{2}]\[Transpose]]&,data],3]*)*)
(*Clear[ColorsReplace]*)
(*ColorsReplace[x_]:=(ColorsReplace[x]=\!\(\**)
(*TagBox[GridBox[{*)
(*{"\[Piecewise]", GridBox[{*)
(*{*)
(*RowBox[{"{", *)
(*RowBox[{"0", ",", "0", ",", "0"}], "}"}], *)
(*RowBox[{"x", "==", "0"}]},*)
(*{*)
(*RowBox[{*)
(*RowBox[{*)
(*RowBox[{"{", *)
(*RowBox[{"0", ",", "1", ",", "0"}], "}"}], *)
(*RowBox[{"(", *)
(*RowBox[{*)
(*FractionBox["1", "3"], "+", *)
(*RowBox[{*)
(*FractionBox["2", "3"], *)
(*FractionBox[*)
(*RowBox[{"x", "/.", "changes"}], "M"]}]}], ")"}]}], "+", *)
(*RowBox[{*)
(*RowBox[{"{", *)
(*RowBox[{*)
(*FractionBox["1", "3"], ",", "0", ",", "0"}], "}"}], *)
(*RowBox[{"(", *)
(*FractionBox[*)
(*RowBox[{"x", "/.", "changes2"}], "M"], ")"}]}]}], *)
(*RowBox[{*)
(*RowBox[{"types", "[", *)
(*RowBox[{"[", "x", "]"}], "]"}], "==", "1"}]},*)
(*{*)
(*RowBox[{*)
(*RowBox[{*)
(*RowBox[{"{", *)
(*RowBox[{"0", ",", "0", ",", "1"}], "}"}], *)
(*RowBox[{"(", *)
(*RowBox[{*)
(*FractionBox["1", "3"], "+", *)
(*RowBox[{*)
(*FractionBox["2", "3"], *)
(*FractionBox[*)
(*RowBox[{"x", "/.", "changes"}], "M"]}]}], ")"}]}], "+", *)
(*RowBox[{*)
(*RowBox[{"{", *)
(*RowBox[{*)
(*FractionBox["1", "3"], ",", "0", ",", "0"}], "}"}], *)
(*RowBox[{"(", *)
(*FractionBox[*)
(*RowBox[{"x", "/.", "changes2"}], "M"], ")"}]}]}], "True"}*)
(*},*)
(*AllowedDimensions->{2, Automatic},*)
(*Editable->True,*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}},*)
(*Selectable->True]}*)
(*},*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}}],*)
(*"Piecewise",*)
(*DeleteWithContents->True,*)
(*Editable->False,*)
(*SelectWithContents->True,*)
(*Selectable->False]\))*)


(* ::Input:: *)
(*M=400*)


(* ::Input:: *)
(*400*)


(* ::Input:: *)
(*400*)


(* ::Input:: *)
(*hue[x_]:=If[x==0,{0,0,0},{\!\(\**)
(*TagBox[GridBox[{*)
(*{"\[Piecewise]", GridBox[{*)
(*{*)
(*RowBox[{"2", "-", *)
(*RowBox[{"6", "x"}]}], *)
(*RowBox[{*)
(*RowBox[{"1", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"2", "/", "6"}]}]},*)
(*{"0", *)
(*RowBox[{*)
(*RowBox[{"2", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"4", "/", "6"}]}]},*)
(*{*)
(*RowBox[{*)
(*RowBox[{"6", "x"}], "-", "4"}], *)
(*RowBox[{*)
(*RowBox[{"4", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"5", "/", "6"}]}]},*)
(*{"1", "True"}*)
(*},*)
(*AllowedDimensions->{2, Automatic},*)
(*Editable->True,*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}},*)
(*Selectable->True]}*)
(*},*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}}],*)
(*"Piecewise",*)
(*DeleteWithContents->True,*)
(*Editable->False,*)
(*SelectWithContents->True,*)
(*Selectable->False]\),\!\(\**)
(*TagBox[GridBox[{*)
(*{"\[Piecewise]", GridBox[{*)
(*{*)
(*RowBox[{"6", "x"}], *)
(*RowBox[{*)
(*RowBox[{"0", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"1", "/", "6"}]}]},*)
(*{"1", *)
(*RowBox[{*)
(*RowBox[{"1", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"3", "/", "6"}]}]},*)
(*{*)
(*RowBox[{"4", "-", *)
(*RowBox[{"6", "x"}]}], *)
(*RowBox[{*)
(*RowBox[{"3", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"4", "/", "6"}]}]},*)
(*{"0", "True"}*)
(*},*)
(*AllowedDimensions->{2, Automatic},*)
(*Editable->True,*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}},*)
(*Selectable->True]}*)
(*},*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}}],*)
(*"Piecewise",*)
(*DeleteWithContents->True,*)
(*Editable->False,*)
(*SelectWithContents->True,*)
(*Selectable->False]\),\!\(\**)
(*TagBox[GridBox[{*)
(*{"\[Piecewise]", GridBox[{*)
(*{"0", *)
(*RowBox[{*)
(*RowBox[{"0", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"2", "/", "6"}]}]},*)
(*{*)
(*RowBox[{*)
(*RowBox[{"6", "x"}], "-", "2"}], *)
(*RowBox[{*)
(*RowBox[{"2", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"3", "/", "6"}]}]},*)
(*{*)
(*RowBox[{"6", "-", *)
(*RowBox[{"6", "x"}]}], *)
(*RowBox[{*)
(*RowBox[{"5", "/", "6"}], "<", "x", "<=", *)
(*RowBox[{"6", "/", "6"}]}]},*)
(*{"1", "True"}*)
(*},*)
(*AllowedDimensions->{2, Automatic},*)
(*Editable->True,*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.84]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}},*)
(*Selectable->True]}*)
(*},*)
(*GridBoxAlignment->{"Columns" -> {{Left}}, "ColumnsIndexed" -> {}, "Rows" -> {{Baseline}}, "RowsIndexed" -> {}},*)
(*GridBoxItemSize->{"Columns" -> {{Automatic}}, "ColumnsIndexed" -> {}, "Rows" -> {{1.}}, "RowsIndexed" -> {}},*)
(*GridBoxSpacings->{"Columns" -> {Offset[0.27999999999999997`], {Offset[0.35]}, Offset[0.27999999999999997`]}, "ColumnsIndexed" -> {}, "Rows" -> {Offset[0.2], {Offset[0.4]}, Offset[0.2]}, "RowsIndexed" -> {}}],*)
(*"Piecewise",*)
(*DeleteWithContents->True,*)
(*Editable->False,*)
(*SelectWithContents->True,*)
(*Selectable->False]\)}];*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*indexes=Import["./output/ctags2000.out","Table"]\[Transpose];*)


(* ::Input:: *)
(*conts=Import["./output/contactM2000.out","Table"]\[Transpose];*)


(* ::Input:: *)
(*{Lx,Ly}=Dimensions[indexes];*)


(* ::Input:: *)
(*Invert[x_]:={1,1,1}-x;*)


(* ::Input:: *)
(*cells=Map[ColorsReplace,indexes,{2}];*)


(* ::Input:: *)
(*BorderQ[x_,i_,j_]:=Module[{n,m,Q=1},*)
(*For[n=-1,n<=1,For[m=-1,m<=1,*)
(*If[x[[i+n,j+m]]!=x[[i,j]],Q=0]*)
(* m++]n++]; Q];*)


(* ::Input:: *)
(*outerConts=ArrayPad[Table[If[conts[[i,j]]==1,1-BorderQ[indexes,i,j],0],{i,2,Lx-1},{j,2,Ly-1}],1];*)


(* ::Input:: *)
(*Image[ConstantArray[{1,0,0},{Lx,Ly}]outerConts+cells Map[(1-#)&,outerConts]]*)


(* ::Input:: *)
(*{Lx,Ly}*)


(* ::Input:: *)
(*data=Map[If[#>0&&types[[#]]==1,#,0]&,indexes,{2}];*)


(* ::Input:: *)
(*contsI=conts;*)
(**)


(* ::Input:: *)
(*\[Sigma]=0; proc=0.3;Counts[arr_]:=Module[{uni=DeleteDuplicates[arr]},{Map[Count[arr,#]&,uni],uni}\[Transpose]];*)
(*Replacement[arr_]:=Module[{c=Counts[Flatten@arr]},Sort[c,#1[[1]]>#2[[1]]&]\[Transpose][[2,1]]];*)
(*RepConts[arr_]:=If[Total[Flatten@arr]<(\[Sigma]+1),0,1];*)
(*ContsW[arr_]:=Total[Flatten@arr]/(\[Sigma]+1)^2;*)


(* ::Input:: *)
(*If[\[Sigma]==0,*)
(**)
(*indexes=data;*)
(*conts=contsI,*)
(*indexes=Table[Replacement[data[[i;;i+\[Sigma],j;;j+\[Sigma]]]],{i,1,Dimensions[data][[1]]-\[Sigma],\[Sigma]+1},{j,1,Dimensions[data][[2]]-\[Sigma],\[Sigma]+1}];*)
(*conts=Table[RepConts[contsI[[i;;i+\[Sigma],j;;j+\[Sigma]]]] ,{i,1,Dimensions[contsI][[1]]-\[Sigma],\[Sigma]+1},{j,1,Dimensions[contsI][[2]]-\[Sigma],\[Sigma]+1}];*)
(*contsW=Table[ContsW[contsI[[i;;i+\[Sigma],j;;j+\[Sigma]]]] ,{i,1,Dimensions[contsI][[1]]-\[Sigma],\[Sigma]+1},{j,1,Dimensions[contsI][[2]]-\[Sigma],\[Sigma]+1}];*)
(*fibers=Table[RepConts[fibersI[[i;;i+\[Sigma],j;;j+\[Sigma]]]] ,{i,1,Dimensions[fibersI][[1]]-\[Sigma],\[Sigma]+1},{j,1,Dimensions[fibersI][[2]]-\[Sigma],\[Sigma]+1}]*)
(*];*)


(* ::Input:: *)
(*{Lx,Ly}=Dimensions[indexes];*)


(* ::Input:: *)
(*Invert[x_]:={1,1,1}-x;*)


(* ::Input:: *)
(*cells=Map[ColorsReplace,indexes,{2}];*)


(* ::Input:: *)
(*BorderQ[x_,i_,j_]:=Module[{n,m,Q=1},*)
(*For[n=-1,n<=1,For[m=-1,m<=1,*)
(*If[x[[i+n,j+m]]!=x[[i,j]],Q=0]*)
(* m++]n++]; Q];*)


(* ::Input:: *)
(*outerConts=ArrayPad[Table[If[conts[[i,j]]==1,1-BorderQ[indexes,i,j],0],{i,2,Lx-1},{j,2,Ly-1}],1];*)


(* ::Input:: *)
(*Image[ConstantArray[{1,0,0},{Lx,Ly}]outerConts+cells Map[(1-#)&,outerConts]]*)


(* ::Input:: *)
(*vertBord=ArrayPad[Map[If[#!=0,1,0]&,indexes[[2;;]]-indexes[[;;-2]],{2}] Map[If[#!=0,1,0]&,indexes[[2;;]],{2}] Map[If[#!=0,1,0]&,indexes[[;;-2]],{2}],{{1,0},{0,0}}]\[Transpose];vert=ArrayPad[Map[If[#==0,1,0]&,indexes[[2;;]]-indexes[[;;-2]],{2}] Map[If[#!=0,1,0]&,indexes[[2;;]],{2}],{{1,0},{0,0}}]\[Transpose]+2 vertBord;*)


(* ::Input:: *)
(*horBord=ArrayPad[Map[If[#!=0,1,0]&,indexes[[;;,2;;]]-indexes[[;;, ;;-2]],{2}] Map[If[#!=0,1,0]&,indexes[[;;,2;;]],{2}] Map[If[#!=0,1,0]&,indexes[[;;, ;;-2]],{2}],{{0,0},{1,0}}]\[Transpose];*)
(*hor=ArrayPad[Map[If[#==0,1,0]&,indexes[[;;,2;;]]-indexes[[;;, ;;-2]],{2}] Map[If[#!=0,1,0]&,indexes[[;;,2;;]],{2}],{{0,0},{1,0}}]\[Transpose]+2 horBord;*)


(* ::Input:: *)
(*Image[((vert\[Transpose])~Join~(hor\[Transpose]))/2]*)


(* ::Input:: *)
(*Dimensions[vert ]*)


(* ::Input:: *)
(*Clear[Subscript[c, in],Subscript[c, L],Subscript[c, T]];*)


(* ::Input:: *)
(*Subscript[c, in]=1; Subscript[c, L]=0.22; Subscript[c, T]=0.06;*)


(* ::Input:: *)
(*vertR=(vert/.{2->Subscript[c, T],1->Subscript[c, in]})+vertBord conts\[Transpose] (Subscript[c, L]-Subscript[c, T]);*)
(*horR=(hor/.{2->Subscript[c, T],1->Subscript[c, in]})+horBord conts\[Transpose](Subscript[c, L]-Subscript[c, T]);*)


(* ::Input:: *)
(*Max[horR]*)


(* ::Input:: *)
(*DeleteDuplicates[Flatten@(Map[If[#!=0,1,0]&,horBord conts\[Transpose] ,{2}]hor)]//N*)


(* ::Input:: *)
(*TotalPar[arr_]:=If[Total[arr]==0,0,Times@@arr/Total[arr]];*)
(*FindRVert[arr_]:=Module[{c=Map[TotalPar,arr]},Total[c]]*)


(* ::Input:: *)
(*(*horRsmall=ArrayPad[Table[FindRVert[horR\[LeftDoubleBracket]i;;i+dl-1,j-l1;;j+l2\[RightDoubleBracket]],{i,1+l1,Ly-dl+1,dl},{j,1+l1,Lx-l2,dl}],{{1,0},{0,0}}];*)
(*vertRsmall=ArrayPad[Table[FindRVert[vertR\[LeftDoubleBracket]i-l1;;i+l2,j;;j+dl-1\[RightDoubleBracket]\[Transpose]],{i,1+l1,Ly-l2,dl},{j,1+l1,Lx-dl+1,dl}],{{0,1},{1,0}}];*)
(*indexesRsmall=Table[indexes\[LeftDoubleBracket]j,i\[RightDoubleBracket],{i,1+l1,Ly,dl},{j,1+l1,Lx,dl}];*)*)


(* ::Input:: *)
(*IfAny[arr_]:=If[Total[Flatten@arr]!=0,1,0];*)
(*IfHalf[arr_]:=If[Total[Flatten@arr]>=dl^2/2,1,0];*)
(*IfLine[arr_]:=If[Total[Flatten@arr]>=dl,1,0];*)


(* ::Input:: *)
(*(*contsRsmall=ArrayPad[Table[IfLine@outerConts\[LeftDoubleBracket]j-l1;;j+l2,i-l1;;i+l2\[RightDoubleBracket],{i,1+l1,Ly-l2,dl},{j,1+l1,Lx-l2,dl}],{{1,0},{0,0}}];*)*)


(* ::Input:: *)
(**)
(**)
(**)
(**)
(**)
(**)


(* ::Input:: *)
(*{Lx,Ly}=Dimensions[indexes];*)


(* ::Input:: *)
(*niceCells=(ConstantArray[{1,0,0},{Lx,Ly}]outerConts+cells Map[(1-#)&,outerConts]);*)


(* ::Input:: *)
(*leaveX=32 50; leaveY =32 50; shiftx=-5;shifty=-5;*)
(* cutX=Floor[(First@Dimensions[indexes]-leaveX)/2]+1;*)
(*cutY=Floor[(Last@Dimensions[indexes]-leaveY)/2]+1;*)
(*halfX=If[OddQ[First@Dimensions[indexes]-leaveX],1,0];*)
(*halfY=If[OddQ[Last@Dimensions[indexes]-leaveY],1,0];*)
(*Image[niceCells[[cutX+shiftx;;-cutX+shiftx-halfX,cutY+shifty;;-cutY+shifty-halfY]]]*)


(* ::Input:: *)
(*ind=indexes[[cutX+shiftx;;-cutX+shiftx-halfX,cutY+shifty;;-cutY+shifty-halfY]];*)


(* ::Input:: *)
(*endsCut=conts[[cutX+shiftx;;-cutX+shiftx-halfX,cutY+shifty;;-cutY+shifty-halfY]]\[Transpose];*)


(* ::Input:: *)
(*indCut=Map[If[#!=0,1,0]&,ind,{2}]\[Transpose];*)


(* ::Input:: *)
(*Dv=ArrayPad[vertR\[Transpose][[cutX+shiftx;;-cutX+shiftx-halfX,cutY+shifty;;-cutY+shifty-halfY]]\[Transpose],1];*)
(*Dh=ArrayPad[horR\[Transpose][[cutX+shiftx;;-cutX+shiftx-halfX,cutY+shifty;;-cutY+shifty-halfY]]\[Transpose],1];*)


(* ::Input:: *)
(*Dimensions[%81]*)


(* ::Input:: *)
(*{Lx,Ly}=Dimensions[Dv]-{2,2}*)


(* ::Input:: *)
(*(*{Lx,Ly}={3,3};*)
(*Dv=Dh=ConstantArray[1,{5,5}];*)*)


(* ::Input:: *)
(*X[i_]:=Mod[i-1,Lx]+1;*)
(*Y[i_]:=Floor[(i-1)/Lx]+1;*)


(* ::Input:: *)
(*A=SparseArray[Table[{i,i}->-(Dh[[X[i+1]+1,Y[i+1]+1]]If[X[i]==Lx,0,1]+Dh[[X[i]+1,Y[i]+1]]If[X[i]==1,0,1]+Dv[[X[i+Lx]+1,Y[i+Lx]+1]]If[Y[i]==Ly,0,1]+Dv[[X[i]+1,Y[i]+1]]If[Y[i]==1,0,1]),{i,1,Lx Ly}]~Join~*)
(*Table[If[X[i]!=Lx,{i+1,i}-> Dh[[X[i+1]+1,Y[i+1]+1]],{3,1}->0],{i,1,Lx Ly-1}]~Join~*)
(*Table[{i+Lx,i}->Dv[[X[i+Lx]+1,Y[i+Lx]+1]],{i,1,Lx Ly-Lx}]];*)


(* ::Input:: *)
(*Ar=ArrayRules[A];*)


(* ::Input:: *)
(*Aint=Map[#[[1]]&,Ar][[;;-2]];*)
(*Areal=Map[#[[2]]&,Ar][[;;-2]];*)


(* ::Input:: *)
(*Gather[Flatten@endsCut][[;;,1]]*)


(* ::Input:: *)
(*Gather[Flatten@indCut][[;;,1]]*)


(* ::Input:: *)
(**)


(* ::Input:: *)
(*filename="./maps/cells.bin";*)
(*DeleteFile[filename];*)
(*BinaryWrite[filename,Dimensions@indCut,"Integer32"]; *)
(*BinaryWrite[filename,Flatten@(indCut\[Transpose]),"Integer8"];Close[filename]*)


(* ::Input:: *)
(*filename="./maps/A.bin";*)
(*DeleteFile[filename];*)
(*BinaryWrite[filename,{Lx,Ly,Length@(Flatten@Aint),Length@(Flatten@Areal)},"Integer32"]; *)
(*BinaryWrite[filename,Flatten@Aint,"Integer32"];*)
(*BinaryWrite[filename,Flatten@Areal,"Real64"];Close[filename]*)


(* ::Input:: *)
(*filename="./maps/na.bin";*)
(*DeleteFile[filename];*)
(*BinaryWrite[filename,Dimensions@endsCut,"Integer32"]; *)
(*BinaryWrite[filename,Flatten@(endsCut\[Transpose]),"Integer8"]; Close[filename]*)


(* ::Input:: *)
(*files=FileNames["../nrvm-discrete/test/*.png"];*)
(*filesT=FileNames["../nrvm-discrete/testT/*.png"];*)
