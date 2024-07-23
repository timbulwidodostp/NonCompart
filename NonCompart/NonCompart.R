# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Noncompartmental Analysis for Pharmacokinetic Data Use NonCompart With (In) R Software
install.packages("NonCompart")
install.packages("ncar")
library("NonCompart")
library("ncar")
NonCompart=read.csv("https://raw.githubusercontent.com/timbulwidodostp/NonCompart/main/NonCompart/NonCompart.csv",sep = ";")
# Estimation Noncompartmental Analysis for Pharmacokinetic Data Use NonCompart With (In) R Software
tblNCA(NonCompart,key="Subject",colTime="Time",colConc="conc",dose=320,adm="Extravascular",dur=0,doseUnit="mg",timeUnit="h",concUnit="mg/L",down="Linear")
Time=NonCompart[NonCompart$Subject==8,"Time"]
Concentration=NonCompart[NonCompart$Subject==8,"conc"]
Res=sNCA(Time,Concentration,dose=320,concUnit="mg/L")
IntAUC(Time,Concentration,t1=0.5,t2 =11,Res)
# Noncompartmental Analysis for Pharmacokinetic Data Use NonCompart With (In) R Software
# Olah Data Semarang
# WhatsApp : +6285227746673
# IG : @olahdatasemarang_
# Finished