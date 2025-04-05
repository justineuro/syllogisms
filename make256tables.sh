#!/bin/bash
#===================================================================================
#
#	 FILE:	make256tables.sh 
#
#	USAGE:	./make256tables.sh > [outputTeXcodes].txt
#
# DESCRIPTION:	Used for generating needed LaTeX codes for generating the 256 tables
#								validating all possible forms of CS
#
#      AUTHOR:	J.L.A. Uro (justineuro@gmail.com)
#     VERSION:	0.0.0
#     LICENSE:	Creative Commons Attribution 4.0 International License (CC-BY)
#     CREATED:	2025/03/28 16:42:10
#    REVISION:	
#==================================================================================

###
# Assign the symbols for the subject (S), middle term (M), and predicate (P)
###
S="S"
M="M"
P="P"

###
# Function for constructing the major premise of the CS given the Form: Figure-Mood[0]
###
assignMaj() # $fig $mood_i (i=1))
	case $1 in
	I) case $2 in 
			A) qMaj="All "; majS=$M; majConn=" is "; majP=$P;;
			E) qMaj="All "; majS=$M; majConn=" is "; majP="not $P";;
			I) qMaj="Some "; majS=$M; majConn=" is "; majP=$P;;
			O) qMaj="Some "; majS=$M; majConn=" is "; majP="not $P";;
			esac
			;;
	II) case $2 in 
			A) qMaj="All "; majS=$P; majConn=" is "; majP=$M;;
			E) qMaj="All "; majS=$P; majConn=" is "; majP="not $M";;
			I) qMaj="Some "; majS=$P; majConn=" is "; majP=$M;;
			O) qMaj="Some "; majS=$P; majConn=" is "; majP="not $M";;
			esac
			;;
	III) case $2 in 
			A) qMaj="All "; majS=$M; majConn=" is "; majP=$P;;
			E) qMaj="All "; majS=$M; majConn=" is "; majP="not $P";;
			I) qMaj="Some "; majS=$M; majConn=" is "; majP=$P;;
			O) qMaj="Some "; majS=$M; majConn=" is "; majP="not $P";;
			esac
			;;
	IV)  case $2 in 
			A) qMaj="All "; majS=$P; majConn=" is "; majP=$M;;
			E) qMaj="All "; majS=$P; majConn=" is "; majP="not $M";;
			I) qMaj="Some "; majS=$P; majConn=" is "; majP=$M;;
			O) qMaj="Some "; majS=$P; majConn=" is "; majP="not $M";;
			esac
			;;
	esac		

###
# Function for constructing the minor premise given the Form: Figure-Mood[1]
###
assignMin() # $fig $mood_i (i=2)
	case $1 in
	I) case $2 in 
			A) qMin="All "; minS=$S; minConn=" is "; minP=$M;;
			E) qMin="All "; minS=$S; minConn=" is "; minP="not $M";;
			I) qMin="Some "; minS=$S; minConn=" is "; minP=$M;;
			O) qMin="Some "; minS=$S; minConn=" is "; minP="not $M";;
			esac
			;;
	II) case $2 in 
			A) qMin="All "; minS=$S; minConn=" is "; minP=$M;;
			E) qMin="All "; minS=$S; minConn=" is "; minP="not $M";;
			I) qMin="Some "; minS=$S; minConn=" is "; minP=$M;;
			O) qMin="Some "; minS=$S; minConn=" is "; minP="not $M";;
			esac
			;;
	III) case $2 in 
			A) qMin="All "; minS=$M; minConn=" is "; minP=$S;;
			E) qMin="All "; minS=$M; minConn=" is "; minP="not $S";;
			I) qMin="Some "; minS=$M; minConn=" is "; minP=$S;;
			O) qMin="Some "; minS=$M; minConn=" is "; minP="not $S";;
			esac 
			;;
	IV)  case $2 in 
			A) qMin="All "; minS=$M; minConn=" is "; minP=$S;;
			E) qMin="All "; minS=$M; minConn=" is "; minP="not $S";;
			I) qMin="Some "; minS=$M; minConn=" is "; minP=$S;;
			O) qMin="Some "; minS=$M; minConn=" is "; minP="not $S";;
			esac 
			;;
	esac		

###
# Function for constructing the conclusion of the CS given the Form: Figure-Mood[3]
###
assignCon() # $mood_i (i=3)
	case $1 in 
		A) qCon="All "; conS=$S; conConn=" is "; conP=$P;;
		E) qCon="All "; conS=$S; conConn=" is "; conP="not $P";;
		I) qCon="Some "; conS=$S; conConn=" is "; conP=$P;;
		O) qCon="Some "; conS=$S; conConn=" is "; conP="not $P";;
	esac

###
# Function for constructing (symbolic) the major premise of the CS given the Form: Figure-Mood[0]
###
assignMajSym() # $fig $mood_i (i=1)
	case $1 in
	I) case $2 in 
			A) qMaj="\\forall"; majS=$M; majConn=">"; majP=$P;;
			E) qMaj="\\forall"; majS=$M; majConn=">"; majP="\\tilde~$P";;
			I) qMaj="\\exists"; majS=$M; majConn="\\wedge"; majP=$P;;
			O) qMaj="\\exists"; majS=$M; majConn="\\wedge"; majP="\\tilde~$P";;
			esac
			;;
	II) case $2 in 
			A) qMaj="\\forall"; majS=$P; majConn=">"; majP=$M;;
			E) qMaj="\\forall"; majS=$P; majConn=">"; majP="\\tilde~$M";;
			I) qMaj="\\exists"; majS=$P; majConn="\\wedge"; majP=$M;;
			O) qMaj="\\exists"; majS=$P; majConn="\\wedge"; majP="\\tilde~$M";;
			esac
			;;
	III) case $2 in 
			A) qMaj="\\forall"; majS=$M; majConn=">"; majP=$P;;
			E) qMaj="\\forall"; majS=$M; majConn=">"; majP="\\tilde~$P";;
			I) qMaj="\\exists"; majS=$M; majConn="\\wedge"; majP=$P;;
			O) qMaj="\\exists"; majS=$M; majConn="\\wedge"; majP="\\tilde~$P";;
			esac
			;;
	IV)  case $2 in 
			A) qMaj="\\forall"; majS=$P; majConn=">"; majP=$M;;
			E) qMaj="\\forall"; majS=$P; majConn=">"; majP="\\tilde~$M";;
			I) qMaj="\\exists"; majS=$P; majConn="\\wedge"; majP=$M;;
			O) qMaj="\\exists"; majS=$P; majConn="\\wedge"; majP="\\tilde~$M";;
			esac
	esac		

###
# Function for constructing (symbolic) the minor premise of the CS given the Form: Figure-Mood[1]
###
assignMinSym() # $fig $mood_i (i=2))
	case $1 in
	I) case $2 in 
			A) qMin="\\forall"; minS=$S; minConn=">"; minP=$M;;
			E) qMin="\\forall"; minS=$S; minConn=">"; minP="\\tilde~$M";;
			I) qMin="\\exists"; minS=$S; minConn="\\wedge"; minP=$M;;
			O) qMin="\\exists"; minS=$S; minConn="\\wedge"; minP="\\tilde~$M";;
			esac
			;;
	II) case $2 in 
			A) qMin="\\forall"; minS=$S; minConn=">"; minP=$M;;
			E) qMin="\\forall"; minS=$S; minConn=">"; minP="\\tilde~$M";;
			I) qMin="\\exists"; minS=$S; minConn="\\wedge"; minP=$M;;
			O) qMin="\\exists"; minS=$S; minConn="\\wedge"; minP="\\tilde~$M";;
			esac
			;;
	III) case $2 in 
			A) qMin="\\forall"; minS=$M; minConn=">"; minP=$S;;
			E) qMin="\\forall"; minS=$M; minConn=">"; minP="\\tilde~$S";;
			I) qMin="\\exists"; minS=$M; minConn="\\wedge"; minP=$S;;
			O) qMin="\\exists"; minS=$M; minConn="\\wedge"; minP="\\tilde~$S";;
			esac 
			;;
	IV)  case $2 in 
			A) qMin="\\forall"; minS=$M; minConn=">"; minP=$S;;
			E) qMin="\\forall"; minS=$M; minConn=">"; minP="\\tilde~$S";;
			I) qMin="\\exists"; minS=$M; minConn="\\wedge"; minP=$S;;
			O) qMin="\\exists"; minS=$M; minConn="\\wedge"; minP="\\tilde~$S";;
			esac 
			;;
	esac		

###
# Function for constructingf (symbolic) the conclusion of the CS given the Form: Figure-Mood[3]
###
assignConSym()
	case $1 in # $fig $mood_i (i=3)
		A) qCon="\\forall"; conS=$S; conConn=">"; conP=$P;;
		E) qCon="\\forall"; conS=$S; conConn=">"; conP="\\tilde~$P";;
		I) qCon="\\exists"; conS=$S; conConn="\\wedge"; conP=$P;;
		O) qCon="\\exists"; conS=$S; conConn="\\wedge"; conP="\\tilde~$P";;
	esac

### 
## 19 valid CS in Aristotelian logic (express def'n of CS): 
# I-AAA, EAE, AII, EIO, (AAI), (EAO)
# II-EAE, AEE, EIO, AOO, (EAE), (AEO)
# III-AAI, AII, IAI, EAO, OAO, EIO
# IV-AEE, AAI, IAI, EAO, EIO, (AEO)
#
## Only 15 of 19 unconditionally valid CS in Boolean logic;
# 4 conditionally valid CS in Boolean logic; needs Existential Import: 
# III-AAI, EAO
# IV-AAI, EAO
#
## 5 additional valid CS in modern logic due to loose def'n of CS;
# considered conditionally valid in Boolean logic
# I-AAI, EAO
# II-EAO, AEO
# IV-AEO
###

###
# The relevant LaTeX codes for constructing the 256 ATTM tables are echoed to stdout for 
# diagnostics but are eventually piped into an output file.
###

###
# Create minipage for a table (4 minipages per row, 4 rows per A4 page)
###
echo "\\noindent\\begin{minipage}[t]{3.25in}"

###
# For each of the 64 moods, for each of the 4 figures ...
###
nmood=0  # initialize counter for mood 1..64
for mood in "AAA" "AAE" "AAI" "AAO" "AEA" "AEE" "AEI" "AEO" "AIA" "AIE" "AII" "AIO" "AOA" "AOE" "AOI" "AOO" "EAA" "EAE" "EAI" "EAO" "EEA" "EEE" "EEI" "EEO" "EIA" "EIE" "EII" "EIO" "EOA" "EOE" "EOI" "EOO" "IAA" "IAE" "IAI" "IAO" "IEA" "IEE" "IEI" "IEO" "IIA" "IIE" "III" "IIO" "IOA" "IOE" "IOI" "IOO" "OAA" "OAE" "OAI" "OAO" "OEA" "OEE" "OEI" "OEO" "OIA" "OIE" "OII" "OIO" "OOA" "OOE" "OOI" "OOO"; do 
	figcount=0 # initialize counter for figure per mood 1..4
	for fig in "I" "II" "III" "IV" ; do
		nmood=$(( nmood + 1 )) # counter for mood 1..64
		figcount=$(( figcount+1 )) # counter for figure per mood 1..4
		#echo "Form: $fig-$mood"
			
			# Based on the mood, construct the premises and conclusion in words.
			for i in 0 1 2; do # slice from the mood the type of proposition for premises and conclusion
				mood_i=${mood:$i:1}
				if [ "$i" == "0" ]; then # construct major premise
					assignMaj $fig $mood_i 
				elif [ "$i" == "1" ]; then # construct minor premise
					assignMin $fig $mood_i
				else												# construct the conclusion
					assignCon $mood_i
				fi
			done
				
			###
			# Construct the CS in words.
			###
			#echo ""
			premise_one=`echo "\\phantom{\\therefore}\\mbox{${qMaj}${majS}${majConn}${majP}.}"`
			premise_two=`echo "\\underline{\\phantom{\\therefore}\\mbox{${qMin}${minS}${minConn}${minP}.}}"`
			#echo "-------------------"
			conclusion=`echo "\\therefore \mbox{${qCon}${conS}${conConn}${conP}.}"`
			#echo ""

			###
			# Re-assign the subject, middle, and predicate terms then construct the symbolic
			# version of the CS. 
			###
			S="S"
			M="M"
			P="P"

			# Based on the mood, construct the premises and conclusion in symbols.
			for i in 0 1 2; do # slice the type of proposition for premises and conclusion
				mood_i=${mood:$i:1}
				if [ "$i" == "0" ]; then # construct the major premise
					assignMajSym $fig $mood_i
				elif [ "$i" == "1" ]; then # construct the minor premise
 					assignMinSym $fig $mood_i
				else						# construct the conclusion
					assignConSym $mood_i
				fi
			done

			###
			# Construct the CS in symbols.
			###
			premise_one_sym=`echo "(${qMaj} x)(${majS}x ${majConn} ${majP}x)"`
			premise_two_sym=`echo "\\underline{(${qMin} x)(${minS}x ${minConn} ${minP}x)}"`
			#echo "-------------------"
			conclusion_sym=`echo "\\therefore(${qCon} x)(${conS}x ${conConn} ${conP}x)"`
			#echo ""

			###
			# Construct the ATTM table within a minipage.
			###
			echo "\\("
			echo "\\begin{array}{r|c|ccc|c|c|c|}" 
			
			# Construct the column headings 
			
			###
			# 15 unconditionally valid CS (valid in both Aristotelian and Boolean logic)
			###
			if [[ "$fig-$mood" = "I-AAA" || "$fig-$mood" = "I-EAE"|| "$fig-$mood" = "I-AII" || "$fig-$mood" = "I-EIO" || "$fig-$mood" = "II-EAE" || "$fig-$mood" = "II-AEE" || "$fig-$mood" = "II-EIO" || "$fig-$mood" = "II-AOO" || "$fig-$mood" =  "III-AII" || "$fig-$mood" = "III-IAI" || "$fig-$mood" = "III-OAO" || "$fig-$mood" = "III-EIO" || "$fig-$mood" = "IV-AEE" || "$fig-$mood" = "IV-IAI" || "$fig-$mood" = "IV-EIO" ]]; then
				echo "\\multicolumn{2}{c}{}&\\multicolumn{6}{l}{\\cellcolor{darkgoldenrod}\\mbox{Form: $fig-$mood}\; (15, 19, 24)} \\\\ \\cline{2-8}"
			###
			# 4 conditionally valid (valid in Aristotelian logic + express defn of CS; not in Boolean logic)	
			###
			elif [[ "$fig-$mood" = "III-AAI" || "$fig-$mood" = "III-EAO" || "$fig-$mood" = "IV-AAI" || "$fig-$mood" = "IV-EAO" ]]; then
				echo "\\multicolumn{2}{c}{}&\\multicolumn{6}{l}{\\cellcolor{gold(metallic)}\\mbox{Form: $fig-$mood}\; (19, 24) } \\\\ \\cline{2-8}"
			###
			# 5 conditionally valid (valid in modern logic = Aristotelina logic + loose defn of CS; not in Boolean logic)
			###
			elif [[ "$fig-$mood" = "I-AAI" || "$fig-$mood" = "I-EAO" || "$fig-$mood" = "II-EAO" ||"$fig-$mood" = "II-AEO" || "$fig-$mood" = "IV-AEO" ]]; then
				echo "\\multicolumn{2}{c}{}&\\multicolumn{6}{l}{\\cellcolor{silver}\\mbox{Form: $fig-$mood}\; (24)} \\\\ \\cline{2-8}"
			else
				echo "\\multicolumn{2}{c}{}&\\multicolumn{6}{l}{\\mbox{Form: $fig-$mood}} \\\\ \\cline{2-8}"
			fi
			echo "\\hspace{1in}	&	& \\exists & \\exists & \\exists & $qMaj & $qMin & $qCon\\\\ \\cline{3-8}"
			echo " 	&	& S & M & P &  ${majS} ${majConn} ${majP}  &  ${minS} ${minConn} ${minP}  &  ${conS} ${conConn} ${conP} \\\\ \\cline{2-8} \\cline{2-8}"
			#echo ""

			# Change logical connectors to lend expression to being evaluated to a boolean
			# Define the switch functions
			switchMajConn() 
				case $1 in
				">") majConn="|" ;;
				"\\wedge") majConn="&" ;;
				esac
				
			switchMinConn() 
				case $1 in
				">") minConn="|" ;;
				"\\wedge") minConn="&" ;;
				esac
						
			switchConConn() 
				case $1 in
				">") conConn="|" ;;
				"\\wedge") conConn="&" ;;
				esac
			
			# Switch connector ...
			switchMajConn $majConn
			switchMinConn $minConn
			switchConConn $conConn
			
			# Construct the 8 rows of the ATTM table
			vals="111 110 101 100 011 010 001 000"
			#tvals="100"
			icount=0 # initiate the row counter
			for tvals in $vals; do
				icount=$(( icount+1 )) # increment the row counter
				
				toBin() #S or M or P or \\tilde~S or \\tilde~P
					case $1 in
					"S") S=${tvals:0:1}; echo $S; S="S";;
					"M") M=${tvals:1:1}; echo $M; M="M";;
					"P") P=${tvals:2:1}; echo $P; P="P";;
					"\\tilde~$S") S=${tvals:0:1}; notS=`echo $(( "! S" ))`; echo $notS; S="S";; 
					"\\tilde~$M") M=${tvals:1:1}; notM=`echo $(( "! M" ))`; echo $notM; M="M";; 
					"\\tilde~$P") P=${tvals:2:1}; notP=`echo $(( "! P" ))`; echo $notP; P="P";; 
					esac
			
			# Obtain the boolean values of the terms
			majSbin=$(( `toBin $majS` ))
			majPbin=$(( `toBin $majP` ))
			minSbin=$(( `toBin $minS` ))
			minPbin=$(( `toBin $minP` ))
			conSbin=$(( `toBin $conS` ))
			conPbin=$(( `toBin $conP` ))
			
			# Obtain the boolean values of the premises and conclusion; 
			# format to indicate (yellow highlighting for a cell) if the row 
			# containing the cell will be deleted for evaluating validity 
			if [ "$majConn" = "|" ]; then 
				majPval=`echo $(( ! $majSbin $majConn $majPbin ))`
			else
				majPval=`echo $(( $majSbin $majConn $majPbin ))`
			fi
			if [[ ( "$majPval" = "0" ) && ( "$qMaj" = "\\forall" ) ]]; then
				majPval="\\cellcolor{yellow} "$majPval
			fi
			
			if [ "$minConn" = "|" ]; then 
				minPval=`echo $(( ! $minSbin $minConn $minPbin ))`
			else
				minPval=`echo $(( $minSbin $minConn $minPbin ))`
			fi
			if [[ ( "$minPval" = "0" ) && ( "$qMin" = "\\forall" ) ]]; then
				minPval="\\cellcolor{yellow} "$minPval
			fi
			
			if [ "$conConn" = "|" ]; then 
				conPval=`echo $(( ! $conSbin $conConn $conPbin ))`
			else
				conPval=`echo $(( $conSbin $conConn $conPbin ))`
			fi
			if [[ ( "$conPval" = "1" ) && ( "$qCon" = "\\exists" ) ]]; then
				conPval="\\cellcolor{yellow} "$conPval
			fi
			
			# include the CS is words in symbols in the ATTM table 
			if [ "$icount" == "1" ]; then echo -n "$premise_one"; fi
			if [ "$icount" == "2" ]; then echo -n "$premise_two"; fi
			if [ "$icount" == "3" ]; then echo -n "$conclusion"; fi
			if [ "$icount" == "5" ]; then echo -n "$premise_one_sym"; fi
			if [ "$icount" == "6" ]; then echo -n "$premise_two_sym"; fi
			if [ "$icount" == "7" ]; then echo -n "$conclusion_sym"; fi
			if [ "$icount" == "8" ]; then 
				echo -n "   & $icount & ${tvals:0:1} & ${tvals:1:1} & ${tvals:2:1} &   $majPval   &   $minPval   &   $conPval   \\\\ \\cline{2-8}"
				echo -e "\\\\cline{2-8} \n\\\\end{array}"
			else
				echo "   & $icount & ${tvals:0:1} & ${tvals:1:1} & ${tvals:2:1} &   $majPval   &   $minPval   &   $conPval  \\\\ \\cline{2-8}"
			fi
		done # 8 object types
		echo "\\)"
		if [ "$figcount" == "4" ]; then 
			if [ "$(( $nmood % 16))" == "0" ]; then
				echo "\\end{minipage}"
				echo ""
				echo "\\newpage % $nmood"
				echo ""
				if [ "$nmood" -lt "256" ]; then 
					echo "\\noindent\\begin{minipage}[t]{3.25in}"
				fi
			else
				echo "\\end{minipage}"
				echo ""
				echo "\${}\$\\\\"
				echo "\${}\$\\\\"
				echo "\\noindent\\begin{minipage}[t]{3.25in}"
			fi
		else
			echo "\\end{minipage}\\begin{minipage}[t]{3.25in}"
		fi
	done # fig
done # mood
###
##
#
