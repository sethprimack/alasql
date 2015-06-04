/*
//
// alasqlparser.jison
// SQL Parser for AlaSQL
// (c) 2014-2015, Andrey Gershun
// 
//
*/

%lex
%options case-insensitive
%%

\`\`([^\`])+\`\`						return 'AA'
\[\?\]									return 'AB'
'@['									return 'AC'
\[([^\]])*?\]							return 'AD'
\`([^\`])*?\`	   						return 'AD'

N(['](\\.|[^']|\\\')*?['])+             return 'AF'
X(['](\\.|[^']|\\\')*?['])+             return 'AF'
(['](\\.|[^']|\\\')*?['])+              return 'AH'
(["](\\.|[^"]|\\\")*?["])+              return 'AH'

"--"(.*?)($|\r\n|\r|\n)							return /* return COMMENT */

\s+                                             /* skip whitespace */
'||'											return 'AJ'
'&&'											return 'AK'
'ABSOLUTE'                                 		return 'AL'
'ACTION'                                      	return 'AM'
'ADD'                                      		return 'AN'
'AGGR'                                     		return 'AO'
'ALL'                                      		return 'AP'
'ALTER'                                    		return 'AQ'
'AND'											return 'AK'
'ANTI'											return 'AW'
'ANY'											return 'DT'
'APPLY'											return 'AU'
'ARRAY'                                     	return 'AV'
'AS'                                      		return 'AW'
'ASSERT'                                      	return 'AX'
'ASC'                                      		return 'AY'
'ATTACH'                                      	return 'AZ'
AUTO(_)?INCREMENT                               return 'Aa'
'AVG'                                      		return 'Ab'

'BEGIN'											return 'Ac'
'BETWEEN'										return 'Ad'
'BREAK'											return 'Ae'
NOT\s+BETWEEN									return 'NOT_BETWEEN'
NOT\s+LIKE									    return 'NOT_LIKE'
'BY'											return 'Af'

'CASE'											return 'Ag'
'CAST'											return 'Ah'
'CHECK'											return 'Ai'
'CLASS'											return 'Ag'
'CLOSE'											return 'Ak'
'COLLATE'										return 'Al'
COLUMN											return 'Am'
COLUMNS 										return 'Am'
"COMMIT"										return 'Ao'
"CONSTRAINT"									return 'Ap'
"CONTENT"										return 'Aq'
"CONTINUE"										return 'Ar'
"CONVERT"										return 'As'
"CORRESPONDING"									return 'At'
"COUNT"											return 'Au'
'CREATE'										return 'Av'
"CROSS"											return 'Aw'
'CUBE'											return 'Ax'
"CURRENT_TIMESTAMP"								return 'CURRENT_TIMESTAMP'
"CURSOR"										return 'Ay'
DATABASE(S)?									return 'Az'
'DECLARE'                                       return 'A0'
'DEFAULT'                                       return 'A1'
'DELETE'                                        return 'A2'
'DELETED'                                       return 'A3'
'DESC'                                          return 'AY'
'DETACH'										return 'A5'
'DISTINCT'                                      return 'A6'
DOUBLE\s+PRECISION								return 'A7'
'DROP'											return 'A8'
'ECHO'											return 'A9'
'EDGE'											return 'BA'
'END'											return 'BB'
'ENUM'											return 'BC'
'ELSE'											return 'BD'
'EXCEPT'										return 'BE'
'EXISTS'										return 'BF'
'EXPLAIN'                                       return 'BG'
'FALSE'											return 'BH'
'FETCH'											return 'BI'
'FIRST'											return 'BJ'
'FOREIGN'										return 'BK'
'FROM'                                          return 'BL'
'GO'                                      		return 'BM'
'GRAPH'                                      	return 'BN'
'GROUP'                                      	return 'BO'
'GROUPING'                                     	return 'BP'
'HAVING'                                        return 'BQ'
'HELP'											return 'BR'
'IF'											return 'BS'
'IDENTITY'										return 'Aa'
'IS'											return 'BU'
'IN'											return 'BV'
'INDEX'											return 'BW'
'INNER'                                         return 'BX'
'INSERT'                                        return 'BY'
'INSERTED'                                      return 'BZ'
'INTERSECT'                                     return 'Ba'
'INTO'                                         	return 'Bb'
'JOIN'                                         	return 'Bc'
'KEY'											return 'Bd'
'LAST'											return 'Be'
'LET'											return 'Bf'
'LEFT'											return 'Bg'
'LIKE'											return 'Bh'
'LIMIT'											return 'Bi'
'MATCHED'										return 'Bg'
'MATRIX'										return 'Bk'	
"MAX"											return 'Bl'
"MERGE"											return 'Bm'
"MIN"											return 'Bn'
"MINUS"											return 'BE'
"MODIFY"										return 'Bp'
'NATURAL'										return 'Bq'
'NEXT'											return 'Br'
'NEW'											return 'Bs'
'NOCASE'										return 'Bt'
'NO'											return 'Bu'
'NOT'											return 'Bv'
'NULL'											return 'Bw'
'OFF'											return 'Bx'
'ON'											return 'By'
'ONLY'											return 'Bz'
'OFFSET'										return 'B0'
'OPEN'											return 'B1'
'OPTION'										return 'B2'
'OR'											return 'AJ'
'ORDER'	                                      	return 'B4'
'OUTER'											return 'B5'
'OVER'											return 'B6'
'PATH'                                        	return 'B7'
'PARTITION'										return 'B8'
'PERCENT'                                       return 'B9'
'PLAN'                                        	return 'CA'
'PRIMARY'										return 'CB'
'PRINT'                                        	return 'CC'
'PRIOR'                                        	return 'CD'
'QUERY'                                        	return 'CE'
'READ'		                                    return 'CF'
'RECORDSET'                                     return 'CG'
'REDUCE'                                        return 'CH'
'REFERENCES'                                    return 'CI'
'RELATIVE'                                      return 'CJ'
'REMOVE'                                        return 'CK'
'RENAME'                                        return 'CL'
'REQUIRE'                                       return 'CM'
'RESTORE'                                       return 'CN'
'RETURNS'                                       return 'CO'
'RIGHT'                                        	return 'CP'
'ROLLBACK'										return 'CQ'
'ROLLUP'										return 'CR'
'ROW'											return 'CS'
SCHEMA(S)?                                      return 'Az'
'SEARCH'                                        return 'CU'
'SELECT'                                        return 'CV'
'SEMI'                                        	return 'CW'
SET 	                                       	return 'CX'
SETS                                        	return 'CX'
'SHOW'                                        	return 'CZ'
'SOME'                                        	return 'Ca'
'SOURCE'										return 'Cb'
'STRATEGY'										return 'Cc'
'STORE'                                        	return 'Cd'
'SUM'											return 'Ce'
'TABLE'											return 'Cf'
'TABLES'										return 'Cf'
'TARGET'										return 'Ch'
'TEMP'											return 'Ci'
'TEMPORARY'										return 'Ci'
'TEXTSTRING'									return 'Ck'
'THEN'											return 'Cl'
'TIMEOUT'										return 'Cm'
'TO'											return 'Cn'
'TOP'											return 'Co'
'TRAN'											return 'Cp'
'TRANSACTION'									return 'Cp'
'TRUE'						  					return 'Cr'
'TRUNCATE'					  					return 'Cs'
'UNION'                                         return 'Ct'
'UNIQUE'                                        return 'Cu'
'UPDATE'                                        return 'Cv'
'USE'											return 'Cw'
/* 'USER'										return 'Cx' */
'USING'                                         return 'Cy'
VALUE(S)?                                      	return 'Cz'
'VERTEX'										return 'C0'
'VIEW'											return 'C1'
'WHEN'                                          return 'C2'
'WHERE'                                         return 'C3'
'WHILE'                                         return 'C4'
'WITH'                                          return 'C5'
'WORK'                                          return 'Cp'  /* Is this keyword required? */

(\d*[.])?\d+[eE]\d+								return 'C7'
(\d*[.])?\d+									return 'C7'

'->'											return 'C9'
'#'												return 'DA'
'+'												return 'DB'
'-' 											return 'DC'
'*'												return 'DD'
'/'												return 'DE'
'%'												return 'DF'
'!==='											return 'DG'
'==='											return 'DH'
'!=='											return 'DI'
'=='											return 'DJ'
'>='											return 'DK'
'>'												return 'DL'
'<='											return 'DM'
'<>'											return 'DN'
'<'												return 'DO'
'='												return 'DP'
'!='											return 'DN'
'('												return 'DR'
')'												return 'DS'
'@'												return 'DT'
'{'												return 'DU'
'}'												return 'DV'

']'												return 'DW'

':-'											return 'DX'
'?-'											return 'DY'
'.'												return 'DZ'
','												return 'Da'
'::'											return 'Db'
':'												return 'Dc'
';'												return 'Dd'
'$'												return 'De'
'?'												return 'Df'
'!'												return 'Dg'
'^'												return 'Dh'

[a-zA-Z_][a-zA-Z_0-9]*                     		return 'A7'

<<EOF>>               							return 'Dg'
.												return 'Dk'

/lex
%left Da 
%left Db 
%left AJ 
/* %left AK */
%left AK Ad NOT_BETWEEN
/*%left AND*/
%left DL DK DO DM DP DN DJ DI DH DG 
%left BV 
%left Bv 
%left BU 
%left Bh NOT_LIKE
%left DB DC 
%left DD DE DF 
%left Dh 
%left DZ C9 Dg 
%left DA 

%ebnf
%start main
%%

	: A7 
		{
			if (yy.casesensitive) $$ = $1;
			else $$ = $1.toLowerCase();
		}
	| AD 
		{ $$ = doubleq($1.substr(1,$1.length-2)); }
	;

main
	: Dl Dg 
		{ return new yy.Statements({statements:$1}); }
	;

	: Dl (SEMICOLON|GO) Dn 
		{ $$ = $1; if($3) $1.push($3); }
	| Dn 
		{ $$ = [$1]; }
	| Dm 
		{ $$ = [$1]; }
	;

	: BG Dn 
		{ $$ = $2; $2.explain = true; }
	| BG CE CA Dn 
		{ $$ = $4;  $4.explain = true;}
	;

	: Do 
		{ 
			$$ = $1;

			// TODO combine exists and queries
		    if(yy.exists) $$.exists = yy.exists;
		    delete yy.exists;
		    if(yy.queries) $$.queries = yy.queries;
			delete yy.queries;
		}
	;

	: { $$ = undefined; }
	| AlterTable	
	| AttachDatabase	
	| FW 
	| CreateIndex
	| CreateGraph
	| CreateTable
	| Ff 
	| GW 
	| CreateVertex
	| GG 
	| Delete
	| FV 
	| FZ 
	| Fa 
	| DropTable
	| Fh 
	| If
	| Insert
	| GK 
	| FU 
	| Select
	| Fe 
	| Fc 
	| ShowDatabases
	| Fd 
	| Fb 
	| GJ 
	| WithSelect

	| F4 
	| F2 
	| F3 
	| EndTransaction
	| FY 
	| Update
	| Help
	| EX 

	| Fn 
	| Fo 
	| F7 
	| F8 
	| F9 
	| GA 
	| GB 
	| GC 
	| Fx 
	| Fm 
	| Gh 
	| Gk 

/* PLugins */

	| GD 

/*
	| Store
	| F5 

	| DeclareCursor
	| Fi 
	| Fk 
	| Fg 

	| CreateTrigger
	| DropTrigger
	| SavePoint
	| Reindex
	| StoreDatabase
	| StoreTable
	| RestoreDatabase
	| RestoreTable

	| F7 
	| BulkInsert

	| CreateFunction
	| CreateProcedure
	| Loop
	| ForLoop
*/
	;

/* C5 */

WithSelect
	: C5 Dp Select
		{ $$ = new yy.WithSelect({withs: $2, select:$3}); }
	;

	: Dp Da Dq 
		{ $1.push($3); $$=$1; }
	| Dq 
		{ $$ = [$1]; }
	;

	: Gl AW DR Select DS 
		{ $$ = {name:$1, select:$4}; }
	;

/* CV */

Select
	: SelectClause RemoveClause? D4 D5 EH EI EN EQ EM 
		{   
			yy.extend($$,$1); yy.extend($$,$2); yy.extend($$,$3); yy.extend($$,$4); 
		    yy.extend($$,$5); yy.extend($$,$6);yy.extend($$,$7); 
		    yy.extend($$,$8); yy.extend($$,$9); 
		    $$ = $1;
/*		    if(yy.exists) $$.exists = yy.exists;
		    delete yy.exists;
		    if(yy.queries) $$.queries = yy.queries;
			delete yy.queries;
*/		}
	| CU SearchSelector* D4 SearchFrom? 
	/* SearchLimit? SearchStrategy? SearchTimeout? */
		{
			$$ = new yy.Search({selectors:$2, from:$4});
			yy.extend($$,$3);
		}
	;

	: CK COLUMN? Ds 
		{ $$ = {removecolumns:$3}; } 
	;

	: Ds Da Dt 
		{ $$ = $1; $$.push($3); }
	| Dt 
		{ $$ = [$1]; }
	;

	: EV 
		{ $$ = $1; }
	| Bh Ek 
		{ $$ = {like:$2}; }	
	;

	: Gl 
		{ $$ = {srchid:"PROP", args: [$1]}; }

	| B4 Af DR EO DS 
		{ $$ = {srchid:"ORDERBY", args: $4}; }
	| B4 Af DR DIRECTION? DS 
		{
			var dir = $4;
			if(!dir) dir = 'ASC';
			$$ = {srchid:"ORDERBY", args: [{expression: new yy.Column({columnid:'_'}), direction:dir}]};
		}

	| C9 Gl 
		{ $$ = {srchid:"APROP", args: [$2]}; }
	| Dh 
		{ $$ = {selid:"ROOT"};}
	| DP EW 
		{ $$ = {srchid:"EQ", args: [$2]}; }
	| Bh EW 
		{ $$ = {srchid:"LIKE", args: [$2]}; }
	| DR SearchSelector+ DS 
		{ $$ = {selid:"WITH", args: $2}; }
	| C5 DR SearchSelector+ DS 
		{ $$ = {selid:"WITH", args: $3}; }
	| Gl DR ExprList? DS 
		{ $$ = {srchid:$1.toUpperCase(), args:$3}; }	
	| C3 DR EW DS 
		{ $$ = {srchid:"WHERE", args:[$3]}; }	
	| Ag DR Gl DS 
		{ $$ = {srchid:"CLASS", args:[$3]}; }	
	| C7 
		{ $$ = {srchid:"PROP", args: [$1]}; }
	| AH 
		{ $$ = {srchid:"NAME", args: [$1.substr(1,$1.length-2)]}; }
	| DE 
		{ $$ = {srchid:"CHILD"}; }
	| C0 
		{ $$ = {srchid:"VERTEX"}; }
	| BA 
		{ $$ = {srchid:"EDGE"}; }
	| Dg 
		{ $$ = {srchid:"REF"}; }
	| DA Gl 
		{ $$ = {srchid:"SHARP", args:[$2]}; }	
	| DF Gl 
		{ $$ = {srchid:"ATTR", args:((typeof $2 == 'undefined')?undefined:[$2])}; }	
	| DF DE 
		{ $$ = {srchid:"ATTR"}; }	
	| DL 
		{ $$ = {srchid:"OUT"}; }
	| DO 
		{ $$ = {srchid:"IN"}; }
	| De 
		{ $$ = {srchid:"CONTENT"}; } /* TODO Decide! */
/*	| A2 DR DS 
		{ $$ = {srchid:"DELETE"}; }
*/	| DZ DOT 
		{ $$ = {srchid:"PARENT"}; }
	| Fp 
		{ $$ = {srchid:"EX",args:[new yy.Json({value:$1})]}; }
	| DT Gl 
		{ $$ = {srchid:"AT", args:[$2]}; }	
	| AW DT Gl 
		{ $$ = {srchid:"AS", args:[$3]}; }	
	| Cn DT Gl 
		{ $$ = {srchid:"TO", args:[$3]}; }	
	| CX DR Ex DS 
		{ $$ = {srchid:"SET", args:$3}; }	

	| Cz 
		{ $$ = {srchid:"VALUE"}; }	
	| Dc Gl 
		{ $$ = {srchid:"CLASS", args:[$2]}; }	
	| Du Dw 
		{ $$ = {selid:$2,args:[$1] }; }

	| Bv DR SearchSelector* DS 
		{ $$ = {selid:"NOT",args:$3 }; }
	| BS DR SearchSelector* DS 
		{ $$ = {selid:"IF",args:$3 }; }
	| Ef DR SearchSelector* DS 
		{ $$ = {selid:$1,args:$3 }; }
	| (DISTINCT|UNIQUE) DR SearchSelector* DS 
		{ $$ = {selid:'DISTINCT',args:$3 }; }
	| Ct DR Dv DS 
		{ $$ = {selid:'UNION',args:$3 }; }
	| Ct AP DR Dv DS 
		{ $$ = {selid:'UNIONALL',args:$4 }; }
	| AP DR SearchSelector* DS 
		{ $$ = {selid:'ALL',args:[$3] }; }
	| DT DR SearchSelector* DS 
		{ $$ = {selid:'ANY',args:[$3] }; }
	| Ba DR Dv DS 
		{ $$ = {selid:'INTERSECT',args:$3 }; }
	| BE DR Dv DS 
		{ $$ = {selid:'EXCEPT',args:$3 }; }
	| AK DR Dv DS 
		{ $$ = {selid:'AND',args:$3 }; }
	| AJ DR Dv DS 
		{ $$ = {selid:'OR',args:$3 }; }
	| B7 DR Du DS 
		{ $$ = {selid:'PATH',args:[$3] }; }
	| CO DR ES DS 
		{ $$ = {srchid:'RETURNS',args:$3 }; }
	;

	: Dv Da SearchSelector*
		{ $$ = $1; $$.push($3);}
	| SearchSelector*
		{ $$ = [$1]; }
	;

	: DB 
		{ $$ = "PLUS"; }
	| DD 
		{ $$ = "STAR"; }
	| Df 
		{ $$ = "QUESTION"; }
	;

	: BL EW 
		{ $$ = $2; }
	;

/*
SearchLet
	: Bf 
	;

	: C4 EW 
	;
	: Bi EW 
	;

	: Cc Gl 
	;

	: Cm EW 
	;	

*/

SelectClause
	: 
	/*

		{ $$ = new yy.Select({ columns:new yy.Column({columnid:'_'}), modifier: 'COLUMN' }); }
	| 
*/

 D2 A6 D3 ES  
		{ $$ = new yy.Select({ columns:$4, distinct: true }); yy,extend($$, $1); yy.extend($$, $3); }
	| D2 Cu D3 ES  
		{ $$ = new yy.Select({ columns:$4, distinct: true }); yy,extend($$, $1);yy.extend($$, $3); }
	| D2  AP D3 ES  
		{ $$ = new yy.Select({ columns:$4, all:true }); yy,extend($$, $1);yy.extend($$, $3); }
	| D2 D3 ResultColumns?  
		{ 
			if(!$3) {
				$$ = new yy.Select({columns:[new yy.Column({columnid:'_',})], modifier:'COLUMN'});
			} else {
				$$ = new yy.Select({ columns:$3 }); yy,extend($$, $1);yy.extend($$, $2); 
			}
		}
/*	| 
		{ $$ = new yy.Select({columns:[new yy.Column({columnid:'_', modifier:'COLUMN'})]});}
*/	;

	: CV 
		{ $$ = undefined; }
	| CV Cz 
		{ $$ = {modifier:'VALUE'}}
	| CV CS 
		{ $$ = {modifier:'ROW'}}
	| CV Am 
		{ $$ = {modifier:'COLUMN'}}
	| CV Bk 
		{ $$ = {modifier:'MATRIX'}}
	| CV Ck 
		{ $$ = {modifier:'TEXTSTRING'}}
	| CV BW 
		{ $$ = {modifier:'INDEX'}}
	| CV CG 
		{ $$ = {modifier:'RECORDSET'}}
	;

	: Co Ei PERCENT?
		{ $$ = {top: $2, percent:(typeof $3 != 'undefined'?true:undefined)}; }
	| Co DR Ei DS 
		{ $$ = {top: $3}; }
	| { $$ = undefined; }
	;

	: {$$ = undefined; }
	| Bb EA 
		{$$ = {into: $2} }
	| Bb Eg 
		{$$ = {into: $2} }
	| Bb Eo 
		{$$ = {into: $2} }
	| Bb Em 
		{$$ = {into: $2} }
	| Bb AH 
		{ 
			var s = $2;
			s = s.substr(1,s.length-2);
			var x3 = s.substr(-3).toUpperCase();
			var x4 = s.substr(-4).toUpperCase();
			if(s[0] == '#') {
				$$ = {into: new yy.FuncValue({funcid: 'HTML', args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]})};
			} else if(x3=='XLS' || x3 == 'CSV' || x3=='TAB') {
				$$ = {into: new yy.FuncValue({funcid: x3, args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]})};
			} else if(x4=='XLSX' || x4 == 'JSON') {
				$$ = {into: new yy.FuncValue({funcid: x4, args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]})};
			}
		}
	;

	: BL D7 
		{ $$ = { from: $2 }; } 
/*	| BL D8 EB 
		{ $$ = { from: [$2], joins: $3 }; }
*/	| BL D7 EB 
		{ $$ = { from: $2, joins: $3 }; }
/*	| BL DR D8 EB DS 
		{ $$ = { from: [$3], joins: $4 }; }
*/	| BL DR D7 EB DS 
		{ $$ = { from: $3, joins: $4 }; }
	|
		{ $$ = undefined; }
	;

	: Aw AU DR Select DS Gl 
		{ $$ = new yy.Apply({select: $4, applymode:'CROSS', as:$6}); }
	| Aw AU DR Select DS AW Gl 
		{ $$ = new yy.Apply({select: $4, applymode:'CROSS', as:$7}); }
/*		{ 
			if(!yy.exists) yy.exists = [];
			$$ = new yy.Apply({select: $4, applymode:'CROSS', as:$7,existsidx:yy.exists.length});
			yy.exists.push($3);

		 }
*/	| B5 AU DR Select DS Gl 
		{ $$ = new yy.Apply({select: $4, applymode:'OUTER', as:$6}); }
	| B5 AU DR Select DS AW Gl 
		{ $$ = new yy.Apply({select: $4, applymode:'OUTER', as:$7}); }
	;

	: D8 
		{ $$ = [$1]; }
	| D7 Da D8 
		{ $$ = $1; $1.push($3); }
	;

	: DR Select DS Gl 
		{ $$ = $2; $$.as = $4 }	
	| DR Select DS AW Gl 
		{ $$ = $2; $$.as = $5 }	
	| DR Select DS /* default alias */
		{ $$ = $2; $$.as = 'default' }	

	| Fp AS? Literal?
		{ $$ = new yy.Json({value:$1}); $1.as = $3 }

	| EA Gl 
		{ $$ = $1; $1.as = $2 }
	| EA AW Gl 
		{ $$ = $1; $1.as = $3 }
	| EA 
		{ $$ = $1; }

	| Eo Gl 
		{ $$ = $1; $1.as = $2; }
	| Eo AW Gl 
		{ $$ = $1; $1.as = $3; }
	| Eo 
		{ $$ = $1; $1.as = 'default'; }

	| Eg 
		{ $$ = $1; $1.as = 'default'; }
	| Eg Gl 
		{ $$ = $1; $1.as = $2; }
	| Eg AW Gl 
		{ $$ = $1; $1.as = $3; }

	| Em 
		{ $$ = $1; $1.as = 'default'; }
	| Em Gl 
		{ $$ = $1; $1.as = $2; }
	| Em AW Gl 
		{ $$ = $1; $1.as = $3; }

	| D9 
		{ $$ = $1; $1.as = 'default'; }
	| D9 Gl 
		{ $$ = $1; $1.as = $2; }
	| D9 AW Gl 
		{ $$ = $1; $1.as = $3; }
	;

	: AH 
		{ 
			var s = $1;
			s = s.substr(1,s.length-2);
			var x3 = s.substr(-3).toUpperCase();
			var x4 = s.substr(-4).toUpperCase();
			var r;
			if(s[0] == '#') {
				r = new yy.FuncValue({funcid: 'HTML', args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]});
			} else if(x3=='XLS' || x3 == 'CSV' || x3=='TAB') {
				r = new yy.FuncValue({funcid: x3, args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]});
			} else if(x4=='XLSX' || x4 == 'JSON') {
				r = new yy.FuncValue({funcid: x4, args:[new yy.StringValue({value: s}), new yy.Json({value:{headers:true}})]});
			} else {
				throw new Error('Unknown string in BL clause');
			};
			$$ = r;
		}
	;

	: Gl DZ Gl 
		{ 	
			if($1 == 'INFORMATION_SCHEMA') {
				$$ = new yy.FuncValue({funcid: $1, args:[new yy.StringValue({value:$3})]});
			} else {
				$$ = new yy.Table({databaseid: $1, tableid:$3});
			}
		}
	| Gl 
		{ $$ = new yy.Table({tableid: $1});}
	;

	: EB EC 
		{ $$ = $1; $1.push($2); } 
	| EB D6 
		{ $$ = $1; $1.push($2); } 
	| EC 
	 	{ $$ = [$1]; }
	| D6 
	 	{ $$ = [$1]; }
	;

	: EE ED EG 
		{ $$ = new yy.Join($1); yy.extend($$, $2); yy.extend($$, $3); }
	;

	: EA 
		{ $$ = {table: $1}; }
	| EA Gl 
		{ $$ = {table: $1, as: $2 } ; }
	| EA AW Gl 
		{ $$ = {table: $1, as: $3 } ; }
	| Fp AS? Literal?
		{ $$ = {json:new yy.Json({value:$1,as:$3})}; }
	| Eo Gl 
		{ $$ = {param: $1, as: $2 } ; }
	| Eo AW Gl 
		{ $$ = {param: $1, as: $3 } ; }
	| DR Select DS Gl 
		{ $$ = {select: $1, as: $4} ; }
	| DR Select DS AW Gl 
		{ $$ = {select: $1, as: $5 } ; }
	| Eg 
		{ $$ = {funcid:$1, as:'default'}; }
	| Eg Gl 
		{ $$ = {funcid:$1, as: $2}; }
	| Eg AW Gl 
		{ $$ = {funcid:$1, as: $3}; }

	| Em 
		{ $$ = {variable:$1,as:'default'}; }
	| Em Gl 
		{ $$ = {variable:$1,as:$2}; }
	| Em AW Gl 
		{ $$ = {variable:$1,as:$3} }
	;

	: EF 
		{ $$ = { joinmode: $1 } ; }
	| Bq EF 
		{ $$ = {joinmode: $1, natural:true} ; }
	;

	: Bc 
		{ $$ = "INNER"; }
	| BX Bc 
		{ $$ = "INNER"; }
	| Bg Bc 
		{ $$ = "LEFT"; }
	| Bg B5 Bc 
		{ $$ = "LEFT"; }
	| CP Bc 
		{ $$ = "RIGHT"; }
	| CP B5 Bc 
		{ $$ = "RIGHT"; }
	| B5 Bc 
		{ $$ = "OUTER"; }
	| FULL B5 Bc 
		{ $$ = "OUTER"; }
	| CW Bc 
		{ $$ = "SEMI"; }
	| AW Bc 
		{ $$ = "ANTI"; }
	| Aw Bc 
		{ $$ = "CROSS"; }
	;

	: By EW 
		{ $$ = {on: $2}; }
	| Cy E2 
		{ $$ = {using: $2}; }
	|
		{ $$ = undefined; }
	;

	: { $$ = undefined; }
	| C3 EW 
		{ $$ = {where: new yy.Expression({expression:$2})}; }
	;

	: { $$ = undefined; }
	| BO Af EJ EL 
		{ $$ = {group:$3}; yy.extend($$,$4); }
	;

	: EK 
		{ $$ = [$1]; }
	| EJ Da EK 
		{ $$ = $1; $1.push($3); }
	;

	: BP CX DR EJ DS 
		{ $$ = new yy.GroupExpression({type:'GROUPING SETS', group: $4}); }
	| CR DR EJ DS 
		{ $$ = new yy.GroupExpression({type:'ROLLUP', group: $3}); }
	| Ax DR EJ DS 
		{ $$ = new yy.GroupExpression({type:'CUBE', group: $3}); }
	| EW 
		{ $$ = $1; }
	;


	: { $$ = undefined; }
	| BQ EW 
		{ $$ = {having:$2}}
	;

	:   { $$ = undefined; }
	| Ct Select
		{ $$ = {union: $2} ; }
	| Ct AP Select
		{ $$ = {unionall: $3} ; }
	| BE Select
		{ $$ = {except: $2} ; }
	| Ba Select
		{ $$ = {intersect: $2} ; }
	| Ct At Select
		{ $$ = {union: $3, corresponding:true} ; }
	| Ct AP At Select
		{ $$ = {unionall: $4, corresponding:true} ; }
	| BE At Select
		{ $$ = {except: $3, corresponding:true} ; }
	| Ba At Select
		{ $$ = {intersect: $3, corresponding:true} ; }
	;

	: { $$ = undefined; }
	| B4 Af EO 
		{ $$ = {order:$3}}
	;

	: EP 
		{ $$ = [$1]; }
	| EO Da EP 
		{ $$ = $1; $1.push($3)}
	;

	: EW 
		{ $$ = new yy.Expression({expression: $1, direction:'ASC'}) }
	| EW AY 
		{ $$ = new yy.Expression({expression: $1, direction:$2.toUpperCase()}) }
	| EW Al Bt 
		{ $$ = new yy.Expression({expression: $1, direction:'ASC', nocase:true}) }
	| EW Al Bt AY 
		{ $$ = new yy.Expression({expression: $1, direction:$4.toUpperCase(), nocase:true}) }
	;

	: { $$ = undefined; }
	| Bi Ei ER 
		{ $$ = {limit:$2}; yy.extend($$, $3)}
	;

	: { $$ = undefined; }
	| B0 Ei 
		{ $$ = {offset:$2}}
	;


	: ES Da ET 
		{ $1.push($3); $$ = $1; }
	| ET 
		{ $$ = [$1]; }
	;

	: EW AW Gl 
		{ $1.as = $3; $$ = $1;}
	| EW Gl 
		{ $1.as = $2; $$ = $1;}
	| EW AW C7 
		{ $1.as = $3; $$ = $1;}
	| EW C7 
		{ $1.as = $2; $$ = $1;}
	| EW AW Ek 
		{ $1.as = $3; $$ = $1;}
	| EW Ek 
		{ $1.as = $2; $$ = $1;}
	| EW 
		{ $$ = $1; }
	;

	: Gl DZ Gl DZ DD 
		{ $$ = new yy.Column({columid: $5, tableid: $3, databaseid:$1}); }	
	| Gl DZ DD 
		{ $$ = new yy.Column({columnid: $3, tableid: $1}); }	
	| DD 
		{ $$ = new yy.Column({columnid:$1}); }
	;

	: Gl DZ Gl DZ Gl 
		{ $$ = new yy.Column({columnid: $5, tableid: $3, databaseid:$1});}	
	| Gl DZ Gl 
		{ $$ = new yy.Column({columnid: $3, tableid: $1});}	
	| Gl DZ Cz 
		{ $$ = new yy.Column({columnid: $3, tableid: $1});}	
	| Gl 
		{ $$ = new yy.Column({columnid: $1});}	
	;

	: Eb 
		{ $$ = $1; }
	| Eg 
		{ $$ = $1; }
	| Et 
		{ $$ = $1; }
	| EV 
		{ $$ = $1; }
	| EU 
		{ $$ = $1; }
	| Ei 
		{ $$ = $1; }
	| Eg 
		{ $$ = $1; }
	| Ek 
		{ $$ = $1; }
	| El 
		{ $$ = $1; }
	| Eo 
		{ $$ = $1; }
	| Em 
		{ $$ = $1; }
	| En 
		{ $$ = $1; }
	| Ep 
		{ $$ = $1; }
	| EZ 
		{ $$ = $1; }
	| Fp 
		{ $$ = new yy.Json({value:$1}); }			
/*	| AC Ft 
		{ $$ = new yy.Json({value:$2}); }
*/	| EY 
		{ $$ = $1; }
/*	| DT DR EW DS 
		{ $$ = new yy.FuncValue({funcid: 'CLONEDEEP', args:[$3]}); }			
*/
/*	| DT DR Fp DS 
		{ $$ = new yy.Json({value:$3}); }			
*/	| DR Select DS 
		{
			if(!yy.queries) yy.queries = []; 
			yy.queries.push($2);
			$2.queriesidx = yy.queries.length;
			$$ = $2;
		}
	| DR Insert DS 
		{
			if(!yy.queries) yy.queries = []; 
			yy.queries.push($2);
			$2.queriesidx = yy.queries.length;
			$$ = $2;
		}
	| DR (CreateVertex|CreateEdge) DS 
		{
			if(!yy.queries) yy.queries = []; 
			yy.queries.push($2);
			$2.queriesidx = yy.queries.length;
			$$ = $2;
		}

	| EX 
		{$$ = $1}
	| CURRENT_TIMESTAMP
		{ $$ = new yy.FuncValue({funcid:'CURRENT_TIMESTAMP'});}
/*	| Cx 
		{ $$ = new yy.FuncValue({funcid:'USER'});}
*/	;

	: AA 
		{ $$ = new yy.JavaScript({value:$1.substr(2,$1.length-4)}); }		
	;

	: Bs Gl 
		{ $$ = new yy.FuncValue({funcid:$2, newid:true}); }
	| Bs Eg 
		{ $$ = $2; yy.extend($$,{newid:true}); }
	;


	: Ah DR EW AW FN DS 
		{ $$ = new yy.Convert({expression:$3}) ; yy.extend($$,$5) ; }
	| Ah DR EW AW FN Da C7 DS 
		{ $$ = new yy.Convert({expression:$3, style:$7}) ; yy.extend($$,$5) ; }
	| As DR FN Da EW DS 
		{ $$ = new yy.Convert({expression:$5}) ; yy.extend($$,$3) ; }
	| As DR FN Da EW Da C7 DS 
		{ $$ = new yy.Convert({expression:$5, style:$7}) ; yy.extend($$,$3) ; }
	;

	: Ei 
		{ $$ = $1; }
	| Ek 
		{ $$ = $1; }
	| Eg 
		{ $$ = $1; }
	| El 
		{ $$ = $1; }
	| Eo 
		{ $$ = $1; }
	| Eg 
		{ $$ = $1; }
	| CURRENT_TIMESTAMP
		{ $$ = new yy.FuncValue({funcid:'CURRENT_TIMESTAMP'}); }	
/*	| Cx 
		{ $$ = new yy.FuncValue({funcid:'USER'}); }	
*/	;


	: Ef DR Eh DS Ec 
		{
		  if($3.length > 1 && ($1.toUpperCase() == 'MAX' || $1.toUpperCase() == 'MIN')) {
		  	$$ = new yy.FuncValue({funcid:$1,args:$3});
		  } else {
			$$ = new yy.AggrValue({aggregatorid: $1.toUpperCase(), expression: $3.pop(), over:$5}); 
		  } 
		}
	| Ef DR A6 EW DS Ec 
		{ $$ = new yy.AggrValue({aggregatorid: $1.toUpperCase(), expression: $4, distinct:true, over:$6}); }
	| Ef DR AP EW DS Ec 
		{ $$ = new yy.AggrValue({aggregatorid: $1.toUpperCase(), expression: $4,
		 over:$6}); }
	;

	:
		{$$ = undefined; }
	| B6 DR Ed DS 
		{ $$ = new yy.Over(); yy.extend($$,$3); }
	| B6 DR Ee DS 
		{ $$ = new yy.Over(); yy.extend($$,$3); }
	| B6 DR Ed Ee DS 
		{ $$ = new yy.Over(); yy.extend($$,$3); yy.extend($$,$4);}
	;

	: B8 Af EJ 
		{ $$ = {partition:$3}; }
	;
	: B4 Af EO 
		{ $$ = {order:$3}; }
	;
	: Ce { $$ = "SUM"; }
	| Au { $$ = "COUNT"; } 
	| Bn { $$ = "MIN"; }
	| Bl { $$ = "MAX"; }
	| Ab { $$ = "AVG"; }
	| BJ { $$ = "FIRST"; }
	| Be { $$ = "LAST"; }
	| AO { $$ = "AGGR"; }
	| AV { $$ = "ARRAY"; }
/*	| CH { $$ = "REDUCE"; } */
	;

	: Gl DR (DISTINCT|ALL)? Eh DS 
		{ 
			var funcid = $1;
			var exprlist = $4;
			if(exprlist.length > 1 && (funcid.toUpperCase() == 'MIN' || funcid.toUpperCase() == 'MAX')) {
					$$ = new yy.FuncValue({funcid: funcid, args: exprlist}); 
			} else if(alasql.aggr[$1]) {
		    	$$ = new yy.AggrValue({aggregatorid: 'REDUCE', 
                      funcid: funcid, expression: exprlist.pop(),distinct:($3=='DISTINCT') });
		    } else {
			    $$ = new yy.FuncValue({funcid: funcid, args: exprlist}); 
			};
		}
	| Gl DR DS 
		{ $$ = new yy.FuncValue({ funcid: $1 }) }
	;

	: EW 
		{ $$ = [$1]; }
	| Eh Da EW 
		{ $1.push($3); $$ = $1 }
	;

	: C7 
		{ $$ = new yy.NumValue({value:+$1}); }
	;

	: Cr 
		{ $$ = new yy.LogicValue({value:true}); }
	| BH 
		{ $$ = new yy.LogicValue({value:false}); }
	;

	: AH 
		{ $$ = new yy.StringValue({value: $1.substr(1,$1.length-2).replace(/(\\\')/g,"'").replace(/(\'\')/g,"'")}); }
	| AF 
		{ $$ = new yy.StringValue({value: $1.substr(2,$1.length-3).replace(/(\\\')/g,"'").replace(/(\'\')/g,"'")}); }
	;

	: Bw 
		{ $$ = new yy.NullValue({value:undefined}); }
	;

	: DT Gl 
		{ $$ = new yy.VarValue({variable:$2}); }
	;

	: BF DR Select DS 
		{ 
			if(!yy.exists) yy.exists = [];
			$$ = new yy.ExistsValue({value:$3, existsidx:yy.exists.length}); 
			yy.exists.push($3);
		}
	;


	: De (Literal|NUMBER)
		{ $$ = new yy.ParamValue({param: $2}); }
/*	| De C7 
		{ $$ = new yy.ParamValue({param: $2}); }
*/	| Dc Gl 
		{ $$ = new yy.ParamValue({param: $2}); }
	| Df 
		{ 
			if(typeof yy.question == 'undefined') yy.question = 0; 
			$$ = new yy.ParamValue({param: yy.question++}); 
		}
	| AB 
		{ 
			if(typeof yy.question == 'undefined') yy.question = 0; 
			$$ = new yy.ParamValue({param: yy.question++, array:true}); 
		}
	;


	: Ag EW Eq Es BB 
		{ $$ = new yy.CaseValue({expression:$2, whens: $3, elses: $4}); }
	| Ag Eq Es BB 
		{ $$ = new yy.CaseValue({whens: $2, elses: $3}); }
	;

	: Eq Er 
		{ $$ = $1; $$.push($2); }
	| Er 
		{ $$ = [$1]; }
	;

	: C2 EW Cl EW 
		{ $$ = {when: $2, then: $4 }; }
	;

	: BD EW 
		{ $$ = $2; }
	| 
		{ $$ = undefined; } 
	; 

	: EW Bh EW 
		{ $$ = new yy.Op({left:$1, op:'LIKE', right:$3}); }
	| EW NOT_LIKE EW 
		{ $$ = new yy.Op({left:$1, op:'NOT LIKE', right:$3 }); }
	| EW DB EW 
		{ $$ = new yy.Op({left:$1, op:'+', right:$3}); }
	| EW DC EW 
		{ $$ = new yy.Op({left:$1, op:'-', right:$3}); }
	| EW DD EW 
		{ $$ = new yy.Op({left:$1, op:'*', right:$3}); }
	| EW DE EW 
		{ $$ = new yy.Op({left:$1, op:'/', right:$3}); }
	| EW DF EW 
		{ $$ = new yy.Op({left:$1, op:'%', right:$3}); }
	| EW Dh EW 
		{ $$ = new yy.Op({left:$1, op:'^', right:$3}); }

	| EW C9 Gl 
		{ $$ = new yy.Op({left:$1, op:'->' , right:$3}); }
	| EW C9 Ei 
		{ $$ = new yy.Op({left:$1, op:'->' , right:$3}); }
	| EW C9 DR EW DS 
		{ $$ = new yy.Op({left:$1, op:'->' , right:$4}); }
	| EW C9 Eg 
		{ $$ = new yy.Op({left:$1, op:'->' , right:$3}); }

	| EW Dg Gl 
		{ $$ = new yy.Op({left:$1, op:'!' , right:$3}); }
	| EW Dg Ei 
		{ $$ = new yy.Op({left:$1, op:'!' , right:$3}); }
	| EW Dg DR EW DS 
		{ $$ = new yy.Op({left:$1, op:'!' , right:$4}); }
	| EW Dg Eg 
		{ $$ = new yy.Op({left:$1, op:'!' , right:$3}); }




	| EW DL EW 
		{ $$ = new yy.Op({left:$1, op:'>' , right:$3}); }
	| EW DK EW 
		{ $$ = new yy.Op({left:$1, op:'>=' , right:$3}); }
	| EW DO EW 
		{ $$ = new yy.Op({left:$1, op:'<' , right:$3}); }
	| EW DM EW 
		{ $$ = new yy.Op({left:$1, op:'<=' , right:$3}); }
	| EW DP EW 
		{ $$ = new yy.Op({left:$1, op:'=' , right:$3}); }
	| EW DJ EW 
		{ $$ = new yy.Op({left:$1, op:'==' , right:$3}); }
	| EW DH EW 
		{ $$ = new yy.Op({left:$1, op:'===' , right:$3}); }
	| EW DN EW 
		{ $$ = new yy.Op({left:$1, op:'!=' , right:$3}); }
	| EW DI EW 
		{ $$ = new yy.Op({left:$1, op:'!==' , right:$3}); }
	| EW DG EW 
		{ $$ = new yy.Op({left:$1, op:'!===' , right:$3}); }

	| EW Ev Ew DR Select DS 
		{ 
			if(!yy.queries) yy.queries = []; 
			$$ = new yy.Op({left:$1, op:$2 , allsome:$3, right:$5, queriesidx: yy.queries.length}); 
			yy.queries.push($5);  
		}

	| EW Ev Ew DR Eh DS 
		{ 
			$$ = new yy.Op({left:$1, op:$2 , allsome:$3, right:$5}); 
		}

	| EW AK EW 
		{ 
			if($1.op == 'BETWEEN1') {

				if($1.left.op == 'AND') {
					$$ = new yy.Op({left:$1.left.left,op:'AND',right:
						new yy.Op({left:$1.left.right, op:'BETWEEN', 
							right1:$1.right, right2:$3})
					});
				} else {
					$$ = new yy.Op({left:$1.left, op:'BETWEEN', 
						right1:$1.right, right2:$3});
				}

			} else if($1.op == 'NOT BETWEEN1') {
				if($1.left.op == 'AND') {
					$$ = new yy.Op({left:$1.left.left,op:'AND',right:
						new yy.Op({left:$1.left.right, op:'NOT BETWEEN', 
							right1:$1.right, right2:$3})
					});
				} else {
					$$ = new yy.Op({left:$1.left, op:'NOT BETWEEN', 
						right1:$1.right, right2:$3});
				}
			} else {
				$$ = new yy.Op({left:$1, op:'AND', right:$3});
			}


		}
	| EW AJ EW 
		{ $$ = new yy.Op({left:$1, op:'OR' , right:$3}); }
	| Bv EW 
		{ $$ = new yy.UniOp({op:'NOT' , right:$2}); }
	| DC EW 
		{ $$ = new yy.UniOp({op:'-' , right:$2}); }
	| DB EW 
		{ $$ = new yy.UniOp({op:'+' , right:$2}); }
	| DA EW 
		{ $$ = new yy.UniOp({op:'#' , right:$2}); }
	| DR EW DS 
		{ $$ = new yy.UniOp({right: $2}); }

	| EW BV DR Select DS 
		{ 
			if(!yy.queries) yy.queries = []; 
			$$ = new yy.Op({left: $1, op:'IN', right:$4, queriesidx: yy.queries.length});
			yy.queries.push($4);  
		}

	| EW Bv BV DR Select DS 
		{ 
			if(!yy.queries) yy.queries = []; 
			$$ = new yy.Op({left: $1, op:'NOT IN', right:$5, queriesidx: yy.queries.length});
			yy.queries.push($5);  
		}

	| EW BV DR Eh DS 
		{ $$ = new yy.Op({left: $1, op:'IN', right:$4}); }

	| EW Bv BV DR Eh DS 
		{ $$ = new yy.Op({left: $1, op:'NOT IN', right:$5}); }

	| EW BV DR DS 
		{ $$ = new yy.Op({left: $1, op:'IN', right:[]}); }

	| EW Bv BV DR DS 
		{ $$ = new yy.Op({left: $1, op:'NOT IN', right:[]}); }

	| EW BV Eu 
		{ $$ = new yy.Op({left: $1, op:'IN', right:$3}); }

	| EW Bv BV Eu 
		{ $$ = new yy.Op({left: $1, op:'NOT IN', right:$4}); }


	/* 
		Hack - it impossimle to parse Ad AK and AK expressions with grammar. 
		At least, I do not know how.
	*/
	| EW Ad EW 
		{ 	
/*			var expr = $3;
			if(expr.left && expr.left.op == 'AND') {
				$$ = new yy.Op({left:new yy.Op({left:$1, op:'BETWEEN', right:expr.left}), op:'AND', right:expr.right }); 
			} else {
*/
				$$ = new yy.Op({left:$1, op:'BETWEEN1', right:$3 }); 
//			}
		}
	| EW NOT_BETWEEN EW 
		{
//			var expr = $3;
//			if(expr.left && expr.left.op == 'AND') {
//				$$ = new yy.Op({left:new yy.Op({left:$1, op:'NOT BETWEEN', right:expr.left}), op:'AND', right:expr.right }); 
//			} else {
				$$ = new yy.Op({left:$1, op:'NOT BETWEEN1', right:$3 }); 
//			}
		}
	| EW BU EW 
		{ $$ = new yy.Op({op:'IS' , left:$1, right:$3}); }
	| EW Db FN 
		{ $$ = new yy.Convert({expression:$1}) ; yy.extend($$,$3) ; }
	;

	: EV 
		{ $$ = $1;}
	| Eg 
		{ $$ = $1;}
	| DT DR EW DS 
		{ $$ = $3;}	
	;

	: DL { $$ = $1; }
	| DK { $$ = $1; }
	| DO { $$ = $1; }
	| DM { $$ = $1; }
	| DP { $$ = $1; }
	| DN { $$ = $1; }
	;

	: AP 
		{ $$ = 'ALL'; }
	| Ca 
		{ $$ = 'SOME'; }
	| DT 
		{ $$ = 'ANY'; }
	;

/* PART TWO */

/* Cv */

Update
	: Cv EA CX Ex C3 EW 
		{ $$ = new yy.Update({table:$2, columns:$4, where:$6}); }
	| Cv EA CX Ex 
		{ $$ = new yy.Update({table:$2, columns:$4}); }
	;

	: Ey 
		{ $$ = [$1]; }
	| Ex Da Ey 
		{ $$ = $1; $1.push($3); }
	;

	: EV DP EW 
/* TODO Replace columnid with column */
		{ $$ = new yy.SetColumn({column:$1, expression:$3})}
	;

/* A2 */

Delete
	: A2 BL EA C3 EW 
		{ $$ = new yy.Delete({table:$3, where:$5});}
	| A2 BL EA 
		{ $$ = new yy.Delete({table:$3});}
	;

/* BY */

Insert
	: BY Ez EA Cz ValuesListsList
		{ $$ = new yy.Insert({into:$3, values: $5}); }
	| BY Ez EA A1 Cz 
		{ $$ = new yy.Insert({into:$3, default: true}) ; }
	| BY Ez EA DR E2 DS Cz ValuesListsList
		{ $$ = new yy.Insert({into:$3, columns: $5, values: $8}); }
	| BY Ez EA Select
		{ $$ = new yy.Insert({into:$3, select: $4}); }
	| BY Ez EA DR E2 DS Select
		{ $$ = new yy.Insert({into:$3, columns: $5, select: $7}); }
	;

	:
	| Bb 
	;
/*
TableParamFunc
	: EA 
		{ $$ = $1; }
	| Eo 
		{ $$ = $1; }
	| Eg 
		{ $$ = $1; }
	;
*/

ValuesListsList
	: DR E0 DS 
		{ $$ = [$2]; }
	| Fp 
		{ $$ = [$1]; }
	| Eo 
		{ $$ = [$1]; }
	| ValuesListsList Da DR E0 DS 
		{$$ = $1; $1.push($4)}
	| ValuesListsList Da Fp 
		{$$ = $1; $1.push($3)}
	| ValuesListsList Da Eo 
		{$$ = $1; $1.push($3)}
	;

	: EW 
		{ $$ = [$1]; }
	| E0 Da EW 
		{$$ = $1; $1.push($3)}
	;

	: Ei 
	| Ek 
	| Eg 
	| El 
	| DateValue
	| Eo 
	;

	: EV 
		{ $$ = [$1]; }
	| E2 Da EV 
		{$$ = $1; $1.push($3)}
	;

/* Av Cf */

CreateTable
	:  Av E6 E3 E7 EA DR E8 DS E4 
		{ 
			$$ = new yy.CreateTable({table:$5}); 
			yy.extend($$,$2); 
			yy.extend($$,$3); 
			yy.extend($$,$4); 
			yy.extend($$,$7); 
			yy.extend($$,$9); 
		}
	| Av E6 E3 E7 EA 
		{ 
			$$ = new yy.CreateTable({table:$5}); 
			yy.extend($$,$2); 
			yy.extend($$,$3); 
			yy.extend($$,$4); 
		}		
;

	: Cf 
		{ $$ = undefined; }
	| Ag 
		{ $$ = {class:true}; }
	;

	:
	| E5 
	;

	: E5 CreateTableOption
	| CreateTableOption
	;

/* TODO: Remove this section */
CreateTableOption
	: A1 
	| A7 DP Gl 
	| Aa DP Ei 
	;

	: { $$ = undefined; }
	| Ci 
		{ $$ = {temporary:true}; }
	;

	: { $$ = undefined; }
	| BS Bv BF 
		{ $$ = {ifnotexists: true}; }
	;

	: ColumnDefsList Da E9 
		{ $$ = {columns: $1, constraints: $3}; }	
	| ColumnDefsList
		{ $$ = {columns: $1}; }	
	| AW Select
		{ $$ = {as: $2} }
	;

	: FA 
		{ $$ = [$1];}
	| E9 Da FA 
		{ $1.push($3); $$ = $1; }
	;

	: FB FD 
		{ $2.constraintid = $1; $$ = $2; }
	| FB FE 
		{ $2.constraintid = $1; $$ = $2; }
	| FB FJ 
		{ $2.constraintid = $1; $$ = $2; }
	| FB FK 
		{ $2.constraintid = $1; $$ = $2; }
	| FB FC 
		{ $2.constraintid = $1; $$ = $2; }
	;

	:   { $$ = undefined; }
	| Ap Gl 
		{ $$ = $2; }
	;

 	: Ai DR EW DS 
		{ $$ = {type: 'CHECK', expression: $3}; }
	;

	: CB Bd Literal? DR FL DS 
		{ $$ = {type: 'PRIMARY KEY', columns: $5, clustered:($3+'').toUpperCase()}; }
	;

	: BK Bd DR FL DS CI EA ParColsList? 
	     FG 
		{ $$ = {type: 'FOREIGN KEY', columns: $4, fktable: $7, fkcolumns: $8}; }
	;

	: DR FL DS 
		{ $$ = $2; }
	;

	:
		{ $$ = undefined; }
	| FH FI 
		{ $$ = undefined; }
	;

	: By A2 Bu AM 
		{$$ = undefined; }
	;
	: By Cv Bu AM 
		{$$ = undefined; }
	;

	: Cu Literal? DR E2 DS 
		{ 
			$$ = {type: 'UNIQUE', columns: $4, clustered:($2+'').toUpperCase()};
		}
	;

	: BW Gl DR E2 DS 
	| Bd Gl DR E2 DS 
	;	
	: Gl 
		{ $$ = [$1]; }
	| AH 
		{ $$ = [$1]; }
	| FL Da Gl 
		{ $$ = $1; $1.push($3); }
	| FL Da AH 
		{ $$ = $1; $1.push($3); }
	;

/*
OrderedColsList
	: Gl 
		{ $$ = [$1]; }
	| AH 
		{ $$ = [$1]; }
	| OrderedColsList Da Gl 
		{ $$ = $1; $1.push($3); }
	| OrderedColsList Da AH 
		{ $$ = $1; $1.push($3); }
	;
*/
ColumnDefsList
	: FM 
		{ $$ = [$1];}
	| ColumnDefsList Da FM 
		{ $1.push($3); $$ = $1; }
	;

	: Gl FN FP 
		{ $$ = new yy.ColumnDef({columnid:$1}); yy.extend($$,$2); yy.extend($$,$3);}
	| Gl ColumnConstraints
		{ $$ = new yy.ColumnDef({columnid:$1}); yy.extend($$,$2); }
	| Gl 
		{ $$ = new yy.ColumnDef({columnid:$1, dbtypeid: ''}); }
	;

	: A7 DR FO Da C7 DS 
		{ $$ = {dbtypeid: $1, dbsize: $3, dbprecision: +$5} }
	| A7 DR FO DS 
		{ $$ = {dbtypeid: $1, dbsize: $3} }
	| A7 
		{ $$ = {dbtypeid: $1} }
	| BC DR E0 DS 
		{ $$ = {dbtypeid: 'ENUM', enumvalues: $3} }
	;

	: C7 
		{ $$ = +$1; }
	| Bl 
		{ $$ = "MAX"; }
	;

	: {$$ = undefined}
	| FQ 
		{ $$ = $1; }
	;


	: FQ FS 
		{ 
			yy.extend($1,$2); $$ = $1;
		}
	| FS 
		{ $$ = $1; }
	;

	: DR Gl DS 
		{ $$ = $2; }
	;

	: CB Bd 
		{$$ = {primarykey:true};}
	| BK Bd CI EA ParLiteral?
		{$$ = {foreignkey:{table:$4, columnid: $5}};}
	| CI EA ParLiteral?
		{$$ = {foreignkey:{table:$2, columnid: $3}};}
	| Aa DR Ei Da Ei DS 
		{ $$ = {identity: {value:$3,step:$5}} }
	| Aa 
		{ $$ = {identity: {value:1,step:1}} }
	| A1 Ea 
		{$$ = {default:$2};}
	| A1 DR EW DS 
		{$$ = {default:$3};}
	| Bw 
		{$$ = {null:true}; }
	| Bv Bw 
		{$$ = {notnull:true}; }
	| FC 
		{$$ = {check:$1}; }
	| Cu 
		{$$ = {unique:true}; }
	;

/* A8 Cf */

DropTable
	: A8 (TABLE|CLASS) FT EA 
		{ $$ = new yy.DropTable({table:$4,type:$2}); yy.extend($$, $3); }
	;

	: { $$ = undefined; }
	| BS BF 
		{ $$ = {ifexists: true};}
	;

/* AQ Cf */

AlterTable
	: AQ Cf EA CL Cn Gl 
		{ $$ = new yy.AlterTable({table:$3, renameto: $6});}
	| AQ Cf EA AN Am FM 
		{ $$ = new yy.AlterTable({table:$3, addcolumn: $6});}
	| AQ Cf EA Bp Am FM 
		{ $$ = new yy.AlterTable({table:$3, modifycolumn: $6});}
	| AQ Cf EA CL Am Gl Cn Gl 
		{ $$ = new yy.AlterTable({table:$3, renamecolumn: $6, to: $8});}
	| AQ Cf EA A8 Am Gl 
		{ $$ = new yy.AlterTable({table:$3, dropcolumn: $6});}
	;

	: CL Cf EA Cn Gl 
		{ $$ = new yy.AlterTable({table:$3, renameto: $5});}
	;

/* DATABASES */

AttachDatabase
	: AZ Gl Az Gl 
		{ $$ = new yy.AttachDatabase({databaseid:$4, engineid:$2.toUpperCase() });}
	| AZ Gl Az Gl DR Eh DS 
		{ $$ = new yy.AttachDatabase({databaseid:$4, engineid:$2.toUpperCase(), args:$6 });}
	| AZ Gl Az Gl AW Gl 
		{ $$ = new yy.AttachDatabase({databaseid:$4, engineid:$2.toUpperCase(), as:$6 });}
	| AZ Gl Az Gl DR Eh DS AW Gl 
		{ $$ = new yy.AttachDatabase({databaseid:$4, engineid:$2.toUpperCase(), as:$9, args:$6});}
	;

	: A5 Az Gl 
		{ $$ = new yy.DetachDatabase({databaseid:$3});}
	;

	: Av Az E7 Gl 
		{ $$ = new yy.CreateDatabase({databaseid:$4 }); yy.extend($$,$4); }
	| Av Gl Az E7 Gl FX 
		{ $$ = new yy.CreateDatabase({engineid:$2.toUpperCase(), databaseid:$5, as:$6 }); yy.extend($$,$4); }
	| Av Gl Az E7 Gl DR Eh DS FX 
		{ $$ = new yy.CreateDatabase({engineid:$2.toUpperCase(), databaseid:$5, args:$7, as:$9 }); yy.extend($$,$4); }
	| Av Gl Az E7 Ek FX 
		{ $$ = new yy.CreateDatabase({engineid:$2.toUpperCase(), 
		    as:$6, args:[$5] }); yy.extend($$,$4); }
	;

	:	
		{$$ = undefined;}
	| AW Gl 
		{ $$ = $1; }
	;
	
	: Cw Az Gl 
		{ $$ = new yy.UseDatabase({databaseid: $3 });}	
	| Cw Gl 
		{ $$ = new yy.UseDatabase({databaseid: $2 });}	
	;

	: A8 Az FT Gl 
		{ $$ = new yy.DropDatabase({databaseid: $4 }); yy.extend($$,$3); }	
	| A8 Gl Az FT Gl 
		{ $$ = new yy.DropDatabase({databaseid: $5, engineid:$2.toUpperCase() }); yy.extend($$,$4); }	
	| A8 Gl Az FT Ek 
		{ $$ = new yy.DropDatabase({databaseid: $5, engineid:$2.toUpperCase() }); yy.extend($$,$4); }	
	;

/* INDEXES */

CreateIndex
	:
	 Av BW Gl By EA DR EO DS 
		{ $$ = new yy.CreateIndex({indexid:$3, table:$5, columns:$7})}
	| 

 Av Cu BW Gl By EA DR EO DS 
		{ $$ = new yy.CreateIndex({indexid:$4, table:$6, columns:$8, unique:true})}
	;

	: A8 BW Gl 
		{ $$ = new yy.DropIndex({indexid:$3});}
	;

/* CZ COMMAND */

ShowDatabases
	: CZ Az 
		{ $$ = new yy.ShowDatabases();}
	| CZ Az Bh Ek 
		{ $$ = new yy.ShowDatabases({like:$4});}
	| CZ Gl Az 
		{ $$ = new yy.ShowDatabases({engineid:$2.toUpperCase() });}
	| CZ Gl Az Bh Ek 
		{ $$ = new yy.ShowDatabases({engineid:$2.toUpperCase() , like:$5});}
	;

	: CZ Cf 
		{ $$ = new yy.ShowTables();}
	| CZ Cf Bh Ek 
		{ $$ = new yy.ShowTables({like:$4});}
	| CZ Cf BL Gl 
		{ $$ = new yy.ShowTables({databaseid: $4});}
	| CZ Cf BL Gl Bh Ek 
		{ $$ = new yy.ShowTables({like:$6, databaseid: $4});}
	;

	: CZ Am BL EA 
		{ $$ = new yy.ShowColumns({table: $4});}
	| CZ Am BL EA BL Gl 
		{ $$ = new yy.ShowColumns({table: $4, databaseid:$6});}
	;

	: CZ BW BL EA 
		{ $$ = new yy.ShowIndex({table: $4});}
	| CZ BW BL EA BL Gl 
		{ $$ = new yy.ShowIndex({table: $4, databaseid: $6});}
	;

	: CZ Av Cf EA 
		{ $$ = new yy.ShowCreateTable({table: $4});}
	| CZ Av Cf EA BL Gl 
		{ $$ = new yy.ShowCreateTable({table: $4, databaseid:$6});}
	;

	:  Av E6 C1 E7 EA DR E2 DS AW Select SubqueryRestriction?
		{
			$$ = new yy.CreateTable({table:$5,view:true,select:$10,viewcolumns:$7}); 
			yy.extend($$,$2); 
			yy.extend($$,$4); 
		}
	| Av E6 C1 E7 EA AW Select SubqueryRestriction?
		{ 
			$$ = new yy.CreateTable({table:$5,view:true,select:$7}); 
			yy.extend($$,$2); 
			yy.extend($$,$4); 
		}
	;

	: C5 CF Bz 
	| C5 Ai B2 
	| C5 Ai B2 Ap FA 
	;


	: A8 C1 FT EA 
		{ $$ = new yy.DropTable({table:$4, view:true}); yy.extend($$, $3); }
	;
/*
DeclareCursor
	: A0 Gl Ay FOR Select
		{ $$ = new yy.DeclareCursor({cursorid:$2, select:$5}); }
	;

	: B1 Gl 
		{ $$ = new yy.OpenCursor({cursorid:$2}); }
	;

	: Ak Gl 
		{ $$ = new yy.CloseCursor({cursorid:$2}); }
	;

	: BI Fl BL Gl 
		{ $$ = new yy.FetchCursor({cursorid:$4}); yy.extend($$,$2); }
	;

	: Br 
		{ $$ = {direction: 'NEXT'}; }
	| CD 
		{ $$ = {direction: 'PRIOR'}; }
	| BJ 
		{ $$ = {direction: 'FIRST'}; }
	| Be 
		{ $$ = {direction: 'LAST'}; }
	| AL Ei 
		{ $$ = {direction: 'ABSOLUTE', num:$2}; }
	| CJ Ei 
		{ $$ = {direction: 'RELATIVE', num:$2}; }
	;
*/

Help
	: BR Ek 
		{ $$ = new yy.Help({subject:$2.value.toUpperCase()} ) ; }
	| BR 
		{ $$ = new yy.Help() ; }
	;

	: DP EW 
		{ $$ = new yy.ExpressionStatement({expression:$2}); }
	;

	: Cb Ek 
		{ $$ = new yy.Source({url:$2.value}); }
	;

	: AX Fp 
		{ $$ = new yy.Assert({value:$2}); }
	| AX Ea 
		{ $$ = new yy.Assert({value:$2.value}); }
	| AX AH Da Fp 
		{ $$ = new yy.Assert({value:$4, message:$2}); }
	;

	: DT DR EW DS 
		{ $$ = $3; }
	| DT Ek 
		{ $$ = $2.value; }
	| DT Ei 
		{ $$ = +$2.value; }
	| DT Eg 
		{ $$ = (!!$2.value); }
	| DT Eo 
		{ $$ = $2; }
	| Fs 
		{ $$ = $1; }
	| DT Fs 
		{ $$ = $2; }
	| AC Ft 
		{ $$ = $2; }
	;

	: Fp 
		{ $$ = $1; }
	| Fr 
		{ $$ = $1; }
	;

	: Ei 
		{ $$ = +$1.value; }
	| Ek 
		{ $$ = ""+$1.value; }
	| Eg 
		{ $$ = $1.value; }
	| EV 
		{ $$ = $1; }	
	| El 
		{ $$ = $1.value; }
	| Eo 
		{ $$ = $1; }
	| Eg 
		{ $$ = $1; }
	| DR EW DS 
		{ $$ = $2}
	;


	: DU Fu DV 
		{ $$ = $2; }
	| DU Fu Da DV 
		{ $$ = $2; }
	| DU DV 
		{ $$ = {}; }
	;

	: Fw DW 
		{ $$ = $1; } 
	| Fw Da DW 
		{ $$ = $1; } 
	| DW 
		{ $$ = []; }
	;

	: Fu Da Fv 
		{ yy.extend($1,$3); $$ = $1; }
	| Fv 
		{ $$ = $1; }
	;

	: AH Dc Fq 
		{ $$ = {}; $$[$1.substr(1,$1.length-2)] = $3; }
	| C7 Dc Fq 
		{ $$ = {}; $$[$1] = $3; }		
	| Gl Dc Fq 
		{ $$ = {}; $$[$1] = $3; }		
/*	| AH Dc Eo 
		{ $$ = {}; $$[$1.substr(1,$1.length-2)] = $3; }	
	| C7 Dc Eo 
		{ $$ = {}; $$[$1] = $3; }		
	| A7 Dc Eo 
		{ $$ = {}; $$[$1] = $3; }		
*/	;

	: Fw Da Fq 
		{ $1.push($3); $$ = $1; }
	| Fq 
		{ $$ = [$1]; }
	;

	: CX Gl F1 
		{ $$ = new yy.SetVariable({variable:$2.toLowerCase(), value:$3});}
	| CX Fy Gl DP EW 
		{ $$ = new yy.SetVariable({variable:$3, expression:$5, method:$2});}
	| CX Fy Gl Fz DP EW 
		{ $$ = new yy.SetVariable({variable:$3, props: $4, expression:$6, method:$2});}
	;

	: DT 
		{$$ = '@'; }
	| De 
		{$$ = '$'; }
	;

	: Fz C9 F0 
		{ $1.push($3); $$ = $1; }
	| C9 F0 
		{ $$ = [$2]; }
	;

	: Gl 
		{ $$ = $1; }
	| C7 
		{ $$ = $1; }
	| DR EW DS 
		{ $$ = $2; }
	;

	: By 
		{ $$ = true; }
	| Bx 
		{ $$ = false; }
	;

	: Ao Cp 
		{ $$ = new yy.CommitTransaction(); }
	;

	: CQ Cp 
		{ $$ = new yy.RollbackTransaction(); }
	;

	: Ac Cp 
		{ $$ = new yy.BeginTransaction(); }
	;

/*
Store
	: Cd 
		{ $$ = new yy.Store(); }
	| Cd Gl 
		{ $$ = new yy.Store({databaseid: $2}); }
	;

	: CN 
		{ $$ = new yy.Restore(); }
	| CN Gl 
		{ $$ = new yy.Restore({databaseid: $2}); }
	;	
*/

If
	: 
/* BS EW Dn 
		{ $$ = new yy.If({expression:$2,thenstat:$3}); 
			if($3.exists) $$.exists = $3.exists;
			if($3.queries) $$.queries = $3.queries;
		}
	| 

*/
 BS EW Dn F6 
		{ $$ = new yy.If({expression:$2,thenstat:$3, elsestat:$4}); 
			if($3.exists) $$.exists = $3.exists;
			if($3.queries) $$.queries = $3.queries;
		}

	| BS EW Dn 
		{ 
			$$ = new yy.If({expression:$2,thenstat:$3}); 
			if($3.exists) $$.exists = $3.exists;
			if($3.queries) $$.queries = $3.queries;
		}
	;

	: BD Dn 
		{$$ = $2;}
	;

	: C4 EW Dn 
		{ $$ = new yy.While({expression:$2,loopstat:$3}); 
			if($3.exists) $$.exists = $3.exists;
			if($3.queries) $$.queries = $3.queries;
		}
	;

	: Ar 
		{ $$ = new yy.Continue(); } 
	;

	: Ae 
		{ $$ = new yy.Break(); } 
	;

	: Ac Dl BB 
		{ $$ = new yy.BeginEnd({statements:$2}); } 
	;

	: CC Eh 
		{ $$ = new yy.Print({exprs:$2});}	
	| CC Select
		{ $$ = new yy.Print({select:$2});}	
	;

	: CM GE 
		{ $$ = new yy.Require({paths:$2}); }
	| CM GF 
		{ $$ = new yy.Require({plugins:$2}); }
	;

/* For test plugin system */

Plugin
	: A9 {$$ = $1.toUpperCase(); }
	| Gl {$$ = $1.toUpperCase(); }
	;

	: A9 EW 
		{ $$ = new yy.Echo({expr:$2}); }
	;


	: GE Da Ek 
		{ $1.push($3); $$ = $1; }
	| Ek 
		{ $$ = [$1]; }
	;

	: GF Da Plugin
		{ $1.push($3); $$ = $1; }
	| Plugin
		{ $$ = [$1]; }
	;


	: A0 GH 
		{ $$ = new yy.Declare({declares:$2}); }
	;

	: GI 
		{ $$ = [$1]; }
	| GH Da GI 
		{ $1.push($3); $$ = $1; }
	;

	: DT Gl FN 
		{ $$ = {variable: $2}; yy.extend($$,$3); }
	| DT Gl AW FN 
		{ $$ = {variable: $2}; yy.extend($$,$4); }
	| DT Gl FN DP EW 
		{ $$ = {variable: $2, expression:$5}; yy.extend($$,$3);}
	| DT Gl AW FN DP EW 
		{ $$ = {variable: $2, expression:$6}; yy.extend($$,$4);}
	;

	: Cs Cf EA 
		{ $$ = new yy.TruncateTable({table:$3});}
	;

	: Bm GL GM GN GO GT 
		{ 
			$$ = new yy.Merge(); yy.extend($$,$2); yy.extend($$,$3); 
			yy.extend($$,$4);
			yy.extend($$,{matches:$5});yy.extend($$,$6);
		}
	;

	: D8 
		{ $$ = {into: $1}; }
	| Bb D8 
		{ $$ = {into: $2}; }
	;

	: Cy D8 
		{ $$ = {using: $2}; }
	;

	: By EW 
		{ $$ = {on:$2}; }
	;

	: GO GP 
		{ $$ = $1; $$.push($2); }
	| GO GR 
		{ $$ = $1; $$.push($2); }
	| GP 
		{ $$ = [$1]; }
	| GR 
		{ $$ = [$1]; }
	;

	: C2 Bg Cl GQ 
		{ $$ = {matched:true, action:$4} }
	| C2 Bg AK EW Cl GQ 
		{ $$ = {matched:true, expr: $4, action:$6} }
	;

	: A2 
		{ $$ = {delete:true}; }
	| Cv CX Ex 
		{ $$ = {update:$3}; }
	;

	: C2 Bv Bg Cl GS 
		{ $$ = {matched:false, bytarget: true, action:$5} }
	| C2 Bv Bg Af Ch Cl GS 
		{ $$ = {matched:false, bytarget: true, action:$7} }
	| C2 Bv Bg AK EW Cl GS 
		{ $$ = {matched:false, bytarget: true, expr:$5, action:$7} }
	| C2 Bv Bg Af Ch AK EW Cl GS 
		{ $$ = {matched:false, bytarget: true, expr:$7, action:$9} }
	| C2 Bv Bg Af Cb Cl GS 
		{ $$ = {matched:false, bysource: true, action:$7} }
	| C2 Bv Bg Af Cb AK EW Cl GQ 
		{ $$ = {matched:false, bysource: true, expr:$7, action:$9} }
	;

	: BY Cz ValuesListsList
		{ $$ = {insert:true, values:$3}; }
	| BY DR E2 DS Cz ValuesListsList
		{ $$ = {insert:true, values:$6, columns:$3}; }
	| BY A1 Cz 
		{ $$ = {insert:true, defaultvalues:true}; }
	| BY DR E2 DS A1 Cz 
		{ $$ = {insert:true, defaultvalues:true, columns:$3}; }
	;

	: 
	| OUTPUT ES 
		{ $$ = {output:{columns:$2}} }
	| OUTPUT ES Bb Fy Gl 
		{ $$ = {output:{columns:$2, intovar: $5, method:$4}} }
	| OUTPUT ES Bb EA 
		{ $$ = {output:{columns:$2, intotable: $4}} }
	| OUTPUT ES Bb EA DR E2 DS 
		{ $$ = {output:{columns:$2, intotable: $4, intocolumns:$6}} }
	;

/*
CreateVertex
	: Av C0 
		{ $$ = new yy.CreateVertex(); }
	| Av C0 CX Ex 
		{ $$ = new yy.CreateVertex({set: $4}); }
	| Av C0 Gl CX Ex 
		{ $$ = new yy.CreateVertex({class:$3, set: $5}); }
	| Av C0 Aq Eh 
		{ $$ = new yy.CreateVertex({content: $4}); }
	| Av C0 Gl Aq Eh 
		{ $$ = new yy.CreateVertex({class:$3, content: $5}); }
	| Av C0 Gl Select
		{ $$ = new yy.CreateVertex({class:$3, select:$4}); }
	| Av C0 Select
		{ $$ = new yy.CreateVertex({select:$4}); }
	;
*/
CreateVertex
	: Av C0 Literal? SharpValue? StringValue? GV 
		{
			$$ = new yy.CreateVertex({class:$3,sharp:$4, name:$5}); 
			yy.extend($$,$6); 
		}
	;

	: DA Gl 
		{ $$ = $2; }
	;

	: 
		{$$ = undefined; }
	| CX Ex 
		{ $$ = {sets:$2}; }
	| Aq Eh 
		{ $$ = {content:$2}; }
	| Select
		{ $$ = {select:$1}; }
	;

	: Av BA StringValue? BL EW Cn EW GV 
		{
			$$ = new yy.CreateEdge({from:$5,to:$7,name:$3});
			yy.extend($$,$8); 
		}
/*	| Av BA StringValue? BL EW Cn EW 
		{
			$$ = new yy.CreateEdge({from:$5,to:$7,name:$3});
		}
*/	;


/*
	: Av BA Literal? 
 BL EW 
 Cn EW 
	(SET Ex | Aq Expression)?

	{ 
		$$ = new yy.CreateEdge({class:$3, from:$5, to:$7}); 
		if(typeof $8 != 'undefined') {
			$$.type = $8;
			$$.expre = $9;
		}
	}

	;
*/

CreateGraph
	: Av BN GX 
		{ $$ = new yy.CreateGraph({graph:$3}); }
	| Av BN BL EW 
		{ $$ = new yy.CreateGraph({from:$4}); }
	;

	: GX Da GY 
		{ $$ = $1; $$.push($3); }
	| GY 
		{ $$ = [$1]; }
	;
	: Gc Json? GraphAsClause? 
		{ 
			$$ = $1; 
			if($2) $$.json = new yy.Json({value:$2});
			if($3) $$.as = $3;
		}
	| (GraphElement|GraphVar) DL Gc Json? GraphAsClause? DL (GraphElement|GraphVar) 
		{ 
			$$ = {source:$1, target: $7};
			if($4) $$.json = new yy.Json({value:$4});
			if($5) $$.as = $5;
			yy.extend($$,$3);
			;
		}
	| Gl DR GX DS 
	;

	: Fy Gl 
		{ $$ = {vars:$2, method:$1}; }
	;

	: AW Fy Gl 
		{ $$ = $3; }
	;

	: Fy Gl 
		{ $$ = $2; }
	;

	:  Literal? SharpLiteral? STRING? ColonLiteral? 
		{ 
			var s3 = $3;
			$$ = {prop:$1, sharp:$2, name:(typeof s3 == 'undefined')?undefined:s3.substr(1,s3.length-2), class:$4}; 
		}
	;

	: Dc Gl 
		{ $$ = $2; }
	;

	: DA Gl 
		{ $$ = $2; }
	| DA C7 
		{ $$ = +$2; }
	;

	: A2 C0 EW (WHERE Expression)?
	;

	: A2 BA EW (FROM Expression)? (TO Expression)? (WHERE Expression)?
	;

	: Gg DX Gi 
		{ $$ = new yy.AddRule({left:$1, right:$3}); }
	| DX Gi 
		{ $$ = new yy.AddRule({right:$2}); }
	;

	: Gi Da Gg 
		{ $$ = $1; $$.push($3); } 
	| Gg 
		{ $$ = [$1]; }
	;

	: Gl 
		{ $$ = new yy.Term({termid:$1}); }
	| Gl DR Gi DS 
		{ $$ = new yy.Term({termid:$1,args:$3}); }
	;

	: DY Eg 
	;
