#DETERMINING THE STATISTICAL DISTRIBUTIONS OF THE VARIOUS MATERIAL PROPERTIES
#SET THE WORKING DIRRECTORY BY CLICKING SESSION, SET WORK DIRECTORY, CHOOSE DIRECTORY


# Note:load the experimental data set by set
KVH_2.0_0_NP  <-  read.csv("KVH_2.0_0_not_predrilled.csv",header = TRUE, sep = ",")

KVH_2.5_0_NP  <-  read.csv("KVH_2.5_0_not_predrilled.csv",header = TRUE, sep = ",")

KVH_2.5_90_P  <-  read.csv("KVH_2.5_90_predrilled.csv",header = TRUE, sep = ",")

KVH_2.8_0_NP  <-  read.csv("KVH_2.8_0_not_predrilled.csv",header = TRUE, sep = ",")

KVH_2.8_0_P <-  read.csv("KVH_2.8_0_predrilled.csv",header = TRUE, sep = ",")

KVH_3.1_0_NP  <-  read.csv("KVH_3.1_0_not_predrilled.csv",header = TRUE, sep = ",")

LVL_2.5_0_NP  <-  read.csv("LVL_2.5_0_not_predrilled.csv",header = TRUE, sep = ",")

OSB_2.5_0_NP  <-  read.csv("OSB_2.5_0_not_predrilled.csv",header = TRUE, sep = ",")

OSB_2.5_0_P <-  read.csv("OSB_2.5_0_predrilled.csv",header = TRUE, sep = ",")

OSB_2.8_0_NP  <-  read.csv("OSB_2.8_0_not_predrilled.csv",header = TRUE, sep = ",")

OSB_2.8_0_P <-  read.csv("OSB_2.8_0_predrilled.csv",header = TRUE, sep = ",")

#Data from Westermann's Tests

KVH_2.0_0_NP_Westermann <-  read.csv("KVH_2.0_0_not_predrilled_Westermann.csv",header = TRUE, sep = ",")
KVH_2.0_0_NP_Til_Ho_Westermann  <-  read.csv("KVH_2.0_0_not_predrilled_Til_Ho_Westermann.csv",header = TRUE, sep = ",")
KVH_3.5_0_NP  <-  read.csv("KVH_3.5_0_not_predrilled.csv",header = TRUE, sep = ",")
KVH_5.5_0_NP  <-  read.csv("KVH_5.5_0_not_predrilled.csv",header = TRUE, sep = ",")
KVH_7.0_0_NP  <-  read.csv("KVH_7.0_0_not_predrilled.csv",header = TRUE, sep = ",")

GME_2.5_0_NP  <-  read.csv("GME_2.5_0_not_predrilled.csv", header = TRUE,sep = ",")
GME_3.0_0_NP  <-  read.csv("GME_3.0_0_not_predrilled.csv", header = TRUE,sep = ",")
GME_4.5_0_NP  <-  read.csv("GME_4.5_0_not_predrilled.csv", header = TRUE,sep = ",")
GME_6.0_0_NP  <-  read.csv("GME_6.0_0_not_predrilled.csv", header = TRUE,sep = ",")
GME_8.0_0_NP  <-  read.csv("GME_8.0_0_not_predrilled.csv", header = TRUE,sep = ",")

KVH_3.5_0_VG  <-  read.csv("KVH_3.5_0_predrilled.csv",header = TRUE, sep = ",")
KVH_5.5_0_VG  <-  read.csv("KVH_5.5_0_predrilled.csv",header = TRUE, sep = ",")
KVH_7.0_0_VG  <-  read.csv("KVH_7.0_0_predrilled.csv",header = TRUE, sep = ",")

GME_3.5_0_VG  <-  read.csv("GME_3.5_0_predrilled.csv",header = TRUE, sep = ",")
GME_5.5_0_VG  <-  read.csv("GME_5.5_0_predrilled.csv",header = TRUE, sep = ",")
GME_7.0_0_VG  <-  read.csv("GME_7.0_0_predrilled.csv",header = TRUE, sep = ",")

#Separating the density from the embedment strength data set by set 
Emb_KVH_2.0_0_NP  <-  KVH_2.0_0_NP$Embstrength_KVH_2.0_0_not.predrilled
Den_KVH_2.0_0_NP  <-  KVH_2.0_0_NP$Den_KVH_2.0_0_not.predrilled


Emb_KVH_2.5_0_NP  <-  KVH_2.5_0_NP$Embstrength_KVH_2.5_0_not.predrilled..min..max.and.Ho.
Den_KVH_2.5_0_NP  <-  KVH_2.5_0_NP$Den_KVH_2.5_0_not.predrilled..min..max.and.Ho.


Emb_KVH_2.5_90_P  <-  KVH_2.5_90_P$Embstrength_KVH_2.5_90_not.predrilled
Den_KVH_2.5_90_P  <-  KVH_2.5_90_P$Den_KVH_2.5_90_not.predrilled


Emb_KVH_2.8_0_NP  <-  KVH_2.8_0_NP$Embstrength_KVH_2.8_0_not_predrilled..min.and.max.
Den_KVH_2.8_0_NP  <-  KVH_2.8_0_NP$Den_KVH_2.8_0_not_predrilled..min.and.max.

Emb_KVH_2.8_0_P <-  KVH_2.8_0_P$Embstrength_KVH_2.8_0_predrilled..min.and.max.
Den_KVH_2.8_0_P <-  KVH_2.8_0_P$Den_KVH_2.8_0_predrilled..min.and.max.

Emb_KVH_3.1_0_NP  <-  KVH_3.1_0_NP$Embstrength_KVH_3.1_0_not.predrilled
Den_KVH_3.1_0_NP  <-  KVH_3.1_0_NP$Den_KVH_3.1_0_not.predrilled

Emb_LVL_2.5_0_NP  <-  LVL_2.5_0_NP$Embstrength_LVL_2.5_0_not.predrilled_.middle.and.edge.
Den_LVL_2.5_0_NP  <-  LVL_2.5_0_NP$Den_LVL_2.5_0_not.predrilled_.middle.and.edge.

Emb_OSB_2.5_0_NP  <-  OSB_2.5_0_NP$Embstrength_OSB_2.5_0_not_predrilled
Den_OSB_2.5_0_NP  < -OSB_2.5_0_NP$Den_OSB_2.5_0_not_predrilled

Emb_OSB_2.5_0_P <-  OSB_2.5_0_P$Embedment_OSB_2.5_0_predrilled
Den_OSB_2.5_0_P < -OSB_2.5_0_P$Den_OSB_2.5_0_predrilled

Emb_OSB_2.8_0_NP  <-  OSB_2.8_0_NP$Embstrength_OSB_2.8_0_not_predrilled
Den_OSB_2.8_0_NP  <-  OSB_2.8_0_NP$Den_OSB_2.8_0_not_predrilled

Emb_OSB_2.8_0_P <-  OSB_2.8_0_P$Embstrength_OSB_2.8_0_predrilled
Den_OSB_2.8_0_P < -OSB_2.8_0_P$Den_OSB_2.8_0_predrilled




#Gmelina and Data from Westermann's tests...NP (not predrilled).....VG (predrilled)

Emb_KVH_2.0_0_NP_Westermann <-  KVH_2.0_0_NP_Westermann$Embstrength_KVH_2.0_0_not.predrilled
Emb_KVH_2.0_0_NP_Til_Ho_Westermann  <-  KVH_2.0_0_NP_Til_Ho_Westermann$Embstrength_KVH_2.0_0_not.predrilled
Emb_KVH_3.5_0_NP  <-  KVH_3.5_0_NP$Embstrength_KVH_3.5_0_not.predrilled
Emb_KVH_5.5_0_NP  <-  KVH_5.5_0_NP$Embstrength_KVH_5.5_0_not.predrilled
Emb_KVH_7.0_0_NP  <-  KVH_7.0_0_NP$Embstrength_KVH_7.0_0_not.predrilled
Den_KVH_2.0_0_NP_Westermann <-  KVH_2.0_0_NP_Westermann$Den_KVH_2.0_0_not.predrilled
Den_KVH_2.0_0_NP_Til_Ho_Westermann  <-  KVH_2.0_0_NP_Til_Ho_Westermann$Den_KVH_2.0_0_not.predrilled
Den_KVH_3.5_0_NP  <-  KVH_3.5_0_NP$Den_KVH_3.5_0_not.predrilled
Den_KVH_5.5_0_NP  <-  KVH_5.5_0_NP$Den_KVH_5.5_0_not.predrilled
Den_KVH_7.0_0_NP  <-  KVH_7.0_0_NP$Den_KVH_7.0_0_not.predrilled

Emb_KVH_3.5_0_VG  <-  KVH_3.5_0_VG$Embstrength_KVH_3.5_0_predrilled
Emb_KVH_5.5_0_VG  <-  KVH_5.5_0_VG$Embstrength_KVH_5.5_0_predrilled
Emb_KVH_7.0_0_VG  <-  KVH_7.0_0_VG$Embstrength_KVH_7.0_0_predrilled
Den_KVH_3.5_0_VG  <-  KVH_3.5_0_VG$Den_KVH_3.5_0_predrilled
Den_KVH_5.5_0_VG  <-  KVH_5.5_0_VG$Den_KVH_5.5_0_predrilled
Den_KVH_7.0_0_VG  <-  KVH_7.0_0_VG$Den_KVH_7.0_0_predrilled

Emb_GME_2.5_0_NP  <-  GME_2.5_0_NP$Embstrength_GME_2.5_0_not.predrilled
Emb_GME_3.0_0_NP  <-  GME_3.0_0_NP$Embstrength_GME_3.0_0_not.predrilled
Emb_GME_4.5_0_NP  <-  GME_4.5_0_NP$Embstrength_GME_4.5_0_not.predrilled
Emb_GME_6.0_0_NP  <-  GME_6.0_0_NP$Embstrength_GME_6.0_0_not.predrilled
Emb_GME_8.0_0_NP  <-  GME_8.0_0_NP$Embstrength_GME_8.0_0_not.predrilled
Den_GME_2.5_0_NP  <-  GME_2.5_0_NP$DEn_GME_2.5_0_not.predrilled
Den_GME_3.0_0_NP  <-  GME_3.0_0_NP$Den_GME_3.0_0_not.predrilled
Den_GME_4.5_0_NP  <-  GME_4.5_0_NP$Den_GME_4.5_0_not.predrilled
Den_GME_6.0_0_NP  <-  GME_6.0_0_NP$Den_GME_6.0_0_not.predrilled
Den_GME_8.0_0_NP  <-  GME_8.0_0_NP$Den_GME_8.0_0_not.predrilled

Emb_GME_3.5_0_VG  <-  GME_3.5_0_VG$Embstrength_GME_3.5_0_predrilled
Emb_GME_5.5_0_VG  <-  GME_5.5_0_VG$Embstrength_GME_5.5_0_predrilled
Emb_GME_7.0_0_VG  <-  GME_7.0_0_VG$Embstrength_GME_7.0_0_predrilled
Den_GME_3.5_0_VG  <-  GME_3.5_0_VG$Den_GME_3.5_0_predrilled
Den_GME_5.5_0_VG  <-  GME_5.5_0_VG$Den_GME_5.5_0_predrilled
Den_GME_7.0_0_VG  <-  GME_7.0_0_VG$Den_GME_7.0_0_predrilled

#determine the logarthm of each entry
logEmb_KVH_2.0_0_NP <-  log(Emb_KVH_2.0_0_NP,base = 2.718)
logDen_KVH_2.0_0_NP <-  log(Den_KVH_2.0_0_NP,base = 2.718)
logEmb_KVH_2.5_0_NP <-  log(Emb_KVH_2.5_0_NP ,base = 2.718) 
logDen_KVH_2.5_0_NP <-  log(Den_KVH_2.5_0_NP, base = 2.718)
logEmb_KVH_2.5_90_P <-  log(Emb_KVH_2.5_90_P,base = 2.718)
logDen_KVH_2.5_90_P <-  log(Den_KVH_2.5_90_P,base = 2.718)
logEmb_KVH_2.8_0_NP <-  log(Emb_KVH_2.8_0_NP,base = 2.718)
logDen_KVH_2.8_0_NP <-  log(Den_KVH_2.8_0_NP,base = 2.718)
logEmb_KVH_2.8_0_P  <-  log(Emb_KVH_2.8_0_P,base = 2.718)
logDen_KVH_2.8_0_P  <-  log(Den_KVH_2.8_0_P,base = 2.718)
logEmb_KVH_3.1_0_NP <-  log(Emb_KVH_3.1_0_NP,base = 2.718)
logDen_KVH_3.1_0_NP <-  log(Den_KVH_3.1_0_NP,base = 2.718)
logEmb_LVL_2.5_0_NP <-  log(Den_LVL_2.5_0_NP,base = 2.718)
logDen_LVL_2.5_0_NP <-  log(Den_LVL_2.5_0_NP,base = 2.718)
logEmb_OSB_2.5_0_NP <-  log(Emb_OSB_2.5_0_NP,base = 2.718)
logDen_OSB_2.5_0_NP <-  log(Den_OSB_2.5_0_NP,base = 2.718)
logEmb_OSB_2.5_0_P  <-  log(Emb_OSB_2.5_0_P,base = 2.718)
logDen_OSB_2.5_0_P  <-  log(Den_OSB_2.5_0_P,base = 2.718)
logEmb_OSB_2.8_0_NP <-  log(Emb_OSB_2.8_0_NP,base = 2.718)
logDen_OSB_2.8_0_NP <-  log(Den_OSB_2.5_0_NP,base = 2.718)
logEmb_OSB_2.8_0_P  <-  log(Emb_OSB_2.8_0_P,base = 2.718)
logDen_OSB_2.8_0_P  <-  log(Den_OSB_2.8_0_P,base = 2.718)



logEmb_KVH_2.0_0_NP_Westermann  <-  log(Emb_KVH_2.0_0_NP_Westermann,base = 2.718)
logEmb_KVH_2.0_0_NP_Til_Ho_Westermann <-  log(Emb_KVH_2.0_0_NP_Til_Ho_Westermann,base = 2.718)
logEmb_KVH_3.5_0_NP <-  log(Emb_KVH_3.5_0_NP,base = 2.718)
logEmb_KVH_5.5_0_NP <-  log(Emb_KVH_5.5_0_NP,base = 2.718)
logEmb_KVH_7.0_0_NP <-  log(Emb_KVH_7.0_0_NP,base = 2.718)
logDen_KVH_2.0_0_NP_Westermann  <-  log(Den_KVH_2.0_0_NP_Westermann,base = 2.718)
logDen_KVH_2.0_0_NP_Til_Ho_Westermann <-  log(Den_KVH_2.0_0_NP_Til_Ho_Westermann,base = 2.718)
logDen_KVH_3.5_0_NP <-  log(Den_KVH_3.5_0_NP,base = 2.718)
logDen_KVH_5.5_0_NP <-  log(Den_KVH_5.5_0_NP,base = 2.718)
logDen_KVH_7.0_0_NP <-  log(Den_KVH_7.0_0_NP,base = 2.718)

logEmb_KVH_3.5_0_VG <-  log(Emb_KVH_3.5_0_VG,base = 2.718)
logEmb_KVH_5.5_0_VG <-  log(Emb_KVH_5.5_0_VG,base = 2.718)
logEmb_KVH_7.0_0_VG <-  log(Emb_KVH_7.0_0_VG,base = 2.718)
logDen_KVH_3.5_0_VG <-  log(Den_KVH_3.5_0_VG,base = 2.718)
logDen_KVH_5.5_0_VG <-  log(Den_KVH_5.5_0_VG,base = 2.718)
logDen_KVH_7.0_0_VG <-  log(Den_KVH_7.0_0_VG,base = 2.718)

logEmb_GME_2.5_0_NP <-  log(Emb_GME_2.5_0_NP,base = 2.718)
logEmb_GME_3.0_0_NP <-  log(Emb_GME_3.0_0_NP,base = 2.718)
logEmb_GME_4.5_0_NP <-  log(Emb_GME_4.5_0_NP,base = 2.718)
logEmb_GME_6.0_0_NP <-  log(Emb_GME_6.0_0_NP,base = 2.718)
logEmb_GME_8.0_0_NP <-  log(Emb_GME_8.0_0_NP,base = 2.718)
logDen_GME_2.5_0_NP <-  log(Den_GME_2.5_0_NP,base = 2.718)
logDen_GME_3.0_0_NP <-  log(Den_GME_3.0_0_NP,base = 2.718)
logDen_GME_4.5_0_NP <-  log(Den_GME_4.5_0_NP,base = 2.718)
logDen_GME_6.0_0_NP <-  log(Den_GME_6.0_0_NP,base = 2.718)
logDen_GME_8.0_0_NP <-  log(Den_GME_8.0_0_NP,base = 2.718)

logEmb_GME_3.5_0_VG <- log(Emb_GME_3.5_0_VG,base = 2.718)
logEmb_GME_5.5_0_VG <- log(Emb_GME_5.5_0_VG,base = 2.718)
logEmb_GME_7.0_0_VG <- log(Emb_GME_7.0_0_VG,base = 2.718)
logDen_GME_3.5_0_VG <- log(Den_GME_3.5_0_VG,base = 2.718)
logDen_GME_5.5_0_VG <- log(Den_GME_5.5_0_VG,base = 2.718)
logDen_GME_7.0_0_VG <- log(Den_GME_7.0_0_VG,base = 2.718)



#Test the data for normality
shapiro.test(Emb_KVH_2.0_0_NP)
shapiro.test(Emb_KVH_2.5_0_NP)
shapiro.test(Emb_KVH_2.5_90_P)
shapiro.test(Emb_KVH_2.8_0_NP)
shapiro.test(Emb_KVH_2.8_0_P)
shapiro.test(Emb_KVH_3.1_0_NP)
shapiro.test(Emb_LVL_2.5_0_NP)
shapiro.test(Emb_OSB_2.5_0_NP)
shapiro.test(Emb_OSB_2.5_0_P)
shapiro.test(Emb_OSB_2.8_0_NP)
shapiro.test(Emb_OSB_2.8_0_P)

shapiro.test(Den_KVH_2.0_0_NP)
shapiro.test(Den_KVH_2.5_0_NP)
shapiro.test(Den_KVH_2.5_90_P)
shapiro.test(Den_KVH_2.8_0_NP)
shapiro.test(Den_KVH_2.8_0_P)
shapiro.test(Den_KVH_3.1_0_NP)
shapiro.test(Den_LVL_2.5_0_NP)
shapiro.test(Den_OSB_2.5_0_NP)
shapiro.test(Den_OSB_2.5_0_P)
shapiro.test(Den_OSB_2.8_0_NP)
shapiro.test(Den_OSB_2.8_0_P)

#Gmelina and Data from Frau Westermann's tests
shapiro.test(Emb_KVH_2.0_0_NP_Westermann)
shapiro.test(Emb_KVH_2.0_0_NP_Til_Ho_Westermann)
shapiro.test(Emb_KVH_3.5_0_NP)
shapiro.test(Emb_KVH_5.5_0_NP)
shapiro.test(Emb_KVH_7.0_0_NP)
shapiro.test(Emb_KVH_3.5_0_VG)
shapiro.test(Emb_KVH_5.5_0_VG)
shapiro.test(Emb_KVH_7.0_0_VG)

shapiro.test(Den_KVH_2.0_0_NP_Westermann)
shapiro.test(Den_KVH_2.0_0_NP_Til_Ho_Westermann)
shapiro.test(Den_KVH_3.5_0_NP)
shapiro.test(Den_KVH_5.5_0_NP)
shapiro.test(Den_KVH_7.0_0_NP)
shapiro.test(Den_KVH_3.5_0_VG)
shapiro.test(Den_KVH_5.5_0_VG)
shapiro.test(Den_KVH_7.0_0_VG)

shapiro.test(Emb_GME_2.5_0_NP)
shapiro.test(Emb_GME_3.0_0_NP)
shapiro.test(Emb_GME_4.5_0_NP)
shapiro.test(Emb_GME_6.0_0_NP)
shapiro.test(Emb_GME_8.0_0_NP)
shapiro.test(Emb_GME_3.5_0_VG)
shapiro.test(Emb_GME_5.5_0_VG)
shapiro.test(Emb_GME_7.0_0_VG)

shapiro.test(Den_GME_2.5_0_NP)
shapiro.test(Den_GME_3.0_0_NP)
shapiro.test(Den_GME_4.5_0_NP)
shapiro.test(Den_GME_6.0_0_NP)
shapiro.test(Den_GME_8.0_0_NP)
shapiro.test(Den_GME_3.5_0_VG)
shapiro.test(Den_GME_5.5_0_VG)
shapiro.test(Den_GME_7.0_0_VG)

#Test the data for lognormality
shapiro.test(logDen_KVH_2.0_0_NP)
shapiro.test(logDen_KVH_2.5_0_NP)
shapiro.test(logDen_KVH_2.5_90_P)
shapiro.test(logDen_KVH_2.8_0_NP)
shapiro.test(logDen_KVH_2.8_0_P)
shapiro.test(logDen_KVH_3.1_0_NP)
shapiro.test(logDen_LVL_2.5_0_NP)
shapiro.test(logDen_OSB_2.5_0_NP)
shapiro.test(logDen_OSB_2.5_0_P)
shapiro.test(logDen_OSB_2.8_0_NP)
shapiro.test(logDen_OSB_2.8_0_P)

shapiro.test(logEmb_KVH_2.0_0_NP)
shapiro.test(logEmb_KVH_2.5_0_NP)
shapiro.test(logEmb_KVH_2.5_90_P)
shapiro.test(logEmb_KVH_2.8_0_NP)
shapiro.test(logEmb_KVH_2.8_0_P)
shapiro.test(logEmb_KVH_3.1_0_NP)
shapiro.test(logEmb_LVL_2.5_0_NP)
shapiro.test(logEmb_OSB_2.5_0_NP)
shapiro.test(logEmb_OSB_2.5_0_P)
shapiro.test(logEmb_OSB_2.8_0_NP)
shapiro.test(logEmb_OSB_2.8_0_P)

#Gmelina and data from Frau Westermann's tests

shapiro.test(logEmb_KVH_2.0_0_NP_Westermann)
shapiro.test(logEmb_KVH_2.0_0_NP_Til_Ho_Westermann)
shapiro.test(logEmb_KVH_3.5_0_NP)
shapiro.test(logEmb_KVH_5.5_0_NP)
shapiro.test(logEmb_KVH_7.0_0_NP)
shapiro.test(logEmb_KVH_3.5_0_VG)
shapiro.test(logEmb_KVH_5.5_0_VG)
shapiro.test(logEmb_KVH_7.0_0_VG)

shapiro.test(logDen_KVH_2.0_0_NP_Westermann)
shapiro.test(logDen_KVH_2.0_0_NP_Til_Ho_Westermann)
shapiro.test(logDen_KVH_3.5_0_NP)
shapiro.test(logDen_KVH_5.5_0_NP)
shapiro.test(logDen_KVH_7.0_0_NP)
shapiro.test(logDen_KVH_3.5_0_VG)
shapiro.test(logDen_KVH_5.5_0_VG)
shapiro.test(logDen_KVH_7.0_0_VG)


shapiro.test(logEmb_GME_2.5_0_NP)
shapiro.test(logEmb_GME_3.0_0_NP)
shapiro.test(logEmb_GME_4.5_0_NP)
shapiro.test(logEmb_GME_6.0_0_NP)
shapiro.test(logEmb_GME_8.0_0_NP)
shapiro.test(logEmb_GME_3.5_0_VG)
shapiro.test(logEmb_GME_5.5_0_VG)
shapiro.test(logEmb_GME_7.0_0_VG)

shapiro.test(logDen_GME_2.5_0_NP)
shapiro.test(logDen_GME_3.0_0_NP)
shapiro.test(logDen_GME_4.5_0_NP)
shapiro.test(logDen_GME_6.0_0_NP)
shapiro.test(logDen_GME_8.0_0_NP)
shapiro.test(logDen_GME_3.5_0_VG)
shapiro.test(logDen_GME_5.5_0_VG)
shapiro.test(logDen_GME_7.0_0_VG)


#Load the goft package for testing for the weibull distribution
library(goft)


#Test the data for the weibull distribution
weibull_test(Emb_KVH_2.0_0_NP)
weibull_test(Emb_KVH_2.5_0_NP)
weibull_test(Emb_KVH_2.5_90_P)
weibull_test(Emb_KVH_2.8_0_NP)
weibull_test(Emb_KVH_2.8_0_P)
weibull_test(Emb_KVH_3.1_0_NP)
weibull_test(Emb_LVL_2.5_0_NP)
weibull_test(Emb_OSB_2.5_0_NP)
weibull_test(Emb_OSB_2.5_0_P)
weibull_test(Emb_OSB_2.8_0_NP)
weibull_test(Emb_OSB_2.8_0_P)

weibull_test(Den_KVH_2.0_0_NP)
weibull_test(Den_KVH_2.5_0_NP)
weibull_test(Den_KVH_2.5_90_P)
weibull_test(Den_KVH_2.8_0_NP)
weibull_test(Den_OSB_2.8_0_P)
weibull_test(Den_KVH_3.1_0_NP)
weibull_test(Den_LVL_2.5_0_NP)
weibull_test(Den_OSB_2.5_0_NP)
weibull_test(Den_OSB_2.5_0_P)
weibull_test(Den_OSB_2.8_0_NP)
weibull_test(Den_OSB_2.8_0_P)

# Gmelina and data from Frau Westermann's tests
weibull_test(Emb_KVH_2.0_0_NP_Westermann)
weibull_test(Emb_KVH_2.0_0_NP_Til_Ho_Westermann)
weibull_test(Emb_KVH_3.5_0_NP)
weibull_test(Emb_KVH_5.5_0_NP)
weibull_test(Emb_KVH_7.0_0_NP)
weibull_test(Emb_KVH_3.5_0_VG)
weibull_test(Emb_KVH_5.5_0_VG)
weibull_test(Emb_KVH_7.0_0_VG)

weibull_test(Den_KVH_2.0_0_NP_Westermann)
weibull_test(Den_KVH_2.0_0_NP_Til_Ho_Westermann)
weibull_test(Den_KVH_3.5_0_NP)
weibull_test(Den_KVH_5.5_0_NP)
weibull_test(Den_KVH_7.0_0_NP)
weibull_test(Den_KVH_3.5_0_VG)
weibull_test(Den_KVH_5.5_0_VG)
weibull_test(Den_KVH_7.0_0_VG)


weibull_test(Emb_GME_2.5_0_NP)
weibull_test(Emb_GME_3.0_0_NP)
weibull_test(Emb_GME_4.5_0_NP)
weibull_test(Emb_GME_6.0_0_NP)
weibull_test(Emb_GME_8.0_0_NP)
weibull_test(Emb_GME_3.5_0_VG)
weibull_test(Emb_GME_5.5_0_VG)
weibull_test(Emb_GME_7.0_0_VG)

weibull_test(Den_GME_2.5_0_NP)
weibull_test(Den_GME_3.0_0_NP)
weibull_test(Den_GME_4.5_0_NP)
weibull_test(Den_GME_6.0_0_NP)
weibull_test(Den_GME_8.0_0_NP)
weibull_test(Den_GME_3.5_0_VG)
weibull_test(Den_GME_5.5_0_VG)
weibull_test(Den_GME_7.0_0_VG)

#To fit the material properties to various distributions, Load the fitdistrplus package

library(fitdistrplus)

#fit the normal distribution to the test data
Normal2Emb_KVH_2.0_0_NP <-  fitdist(Emb_KVH_2.0_0_NP,"norm",method = "mle")
Normal2Emb_KVH_2.5_0_NP <-  fitdist(Emb_KVH_2.5_0_NP, "norm", method = "mle")
Normal2Emb_KVH_2.5_90_P <-  fitdist(Emb_KVH_2.5_90_P,"norm",method = "mle")
Normal2Emb_KVH_2.8_0_NP <- fitdist(Emb_KVH_2.8_0_NP, "norm", method = "mle")
Normal2Emb_KVH_2.8_0_P  <-  fitdist(Emb_KVH_2.8_0_P,"norm",method = "mle")
Normal2Emb_KVH_3.1_0_NP <-  fitdist(Emb_KVH_3.1_0_NP, "norm", method = "mle")
Normal2Emb_LVL_2.5_0_NP <-  fitdist(Emb_LVL_2.5_0_NP,"norm",method = "mle")
Normal2Emb_OSB_2.5_0_NP <-  fitdist(Emb_OSB_2.5_0_NP, "norm", method = "mle")
Normal2Emb_OSB_2.5_0_P  <-  fitdist(Emb_OSB_2.5_0_P, "norm", method = "mle")
Normal2Emb_OSB_2.8_0_NP <-  fitdist(Emb_OSB_2.8_0_NP,"norm",method = "mle")
Normal2Emb_OSB_2.8_0_P  <- fitdist(Emb_OSB_2.8_0_P, "norm", method = "mle")

Normal2Den_KVH_2.0_0_NP <-  fitdist(Den_KVH_2.0_0_NP,"norm",method = "mle")
Normal2Den_KVH_2.5_0_NP <-  fitdist(Den_KVH_2.5_0_NP, "norm", method = "mle")
Normal2Den_KVH_2.5_90_P <-  fitdist(Den_KVH_2.5_90_P,"norm",method = "mle")
Normal2Den_KVH_2.8_0_NP <-  fitdist(Den_KVH_2.8_0_NP, "norm", method = "mle")
Normal2Den_KVH_2.8_0_P  <-  fitdist(Den_KVH_2.8_0_P,"norm",method = "mle")
Normal2Den_KVH_3.1_0_NP <-  fitdist(Den_KVH_3.1_0_NP, "norm", method = "mle")
Normal2Den_LVL_2.5_0_NP <-  fitdist(Den_LVL_2.5_0_NP,"norm",method = "mle")
Normal2Den_OSB_2.5_0_NP <-  fitdist(Den_OSB_2.5_0_NP, "norm", method = "mle")
Normal2Den_OSB_2.5_0_P  <-  fitdist(Den_OSB_2.5_0_P, "norm", method = "mle")
Normal2Den_OSB_2.8_0_NP <-  fitdist(Den_OSB_2.8_0_NP,"norm",method = "mle")
Normal2Den_OSB_2.8_0_P  <-  fitdist(Den_OSB_2.8_0_P, "norm", method = "mle")


#summary of fitting the normal distribution to the test data
summary(Normal2Emb_KVH_2.0_0_NP)
summary(Normal2Emb_KVH_2.5_0_NP)
summary(Normal2Emb_KVH_2.5_90_P)
summary(Normal2Emb_KVH_2.8_0_NP)
summary(Normal2Emb_KVH_2.8_0_P)
summary(Normal2Emb_KVH_3.1_0_NP)
summary(Normal2Emb_LVL_2.5_0_NP)
summary(Normal2Emb_OSB_2.5_0_NP)
summary(Normal2Emb_OSB_2.5_0_P)
summary(Normal2Emb_OSB_2.8_0_NP)
summary(Normal2Emb_OSB_2.8_0_P)

summary(Normal2Den_KVH_2.0_0_NP)
summary(Normal2Den_KVH_2.5_0_NP)
summary(Normal2Den_KVH_2.5_90_P)
summary(Normal2Den_KVH_2.8_0_NP)
summary(Normal2Den_KVH_2.8_0_P)
summary(Normal2Den_KVH_3.1_0_NP)
summary(Normal2Den_LVL_2.5_0_NP)
summary(Normal2Den_OSB_2.5_0_NP)
summary(Normal2Den_OSB_2.5_0_P)
summary(Normal2Den_OSB_2.8_0_NP)
summary(Normal2Den_OSB_2.8_0_P)


#plot the graphs for fitting the normal distribution to the test data
plot(Normal2Emb_KVH_2.0_0_NP)
plot(Normal2Emb_KVH_2.5_0_NP)
plot(Normal2Emb_KVH_2.5_90_P)
plot(Normal2Emb_KVH_2.8_0_NP)
plot(Normal2Emb_KVH_2.8_0_P)
plot(Normal2Emb_KVH_3.1_0_NP)
plot(Normal2Emb_LVL_2.5_0_NP)
plot(Normal2Emb_OSB_2.5_0_NP)
plot(Normal2Emb_OSB_2.5_0_P)
plot(Normal2Emb_OSB_2.8_0_NP)
plot(Normal2Emb_OSB_2.8_0_P)

plot(Normal2Den_KVH_2.0_0_NP)
plot(Normal2Den_KVH_2.5_0_NP)
plot(Normal2Den_KVH_2.5_90_P)
plot(Normal2Den_KVH_2.8_0_NP)
plot(Normal2Den_KVH_2.8_0_P)
plot(Normal2Den_KVH_3.1_0_NP)
plot(Normal2Den_LVL_2.5_0_NP)
plot(Normal2Den_OSB_2.5_0_NP)
plot(Normal2Den_OSB_2.5_0_P)
plot(Normal2Den_OSB_2.8_0_NP)
plot(Normal2Den_OSB_2.8_0_P)


#fit the data to the lognormal distribution

lognormal2Emb_KVH_2.0_0_NP  <-  fitdist(Emb_KVH_2.0_0_NP,"lnorm",method = "mle")
lognormal2Emb_KVH_2.5_0_NP  <-  fitdist(Emb_KVH_2.5_0_NP, "lnorm", method = "mle")
lognormal2Emb_KVH_2.5_90_P  <-  fitdist(Emb_KVH_2.5_90_P,"lnorm",method = "mle")
lognormal2Emb_KVH_2.8_0_NP  <-  fitdist(Emb_KVH_2.8_0_NP, "lnorm", method = "mle")
lognormal2Emb_KVH_2.8_0_P   <-  fitdist(Emb_KVH_2.8_0_P,"lnorm",method = "mle")
lognormal2Emb_KVH_3.1_0_NP  <-  fitdist(Emb_KVH_3.1_0_NP, "lnorm", method = "mle")
lognormal2Emb_LVL_2.5_0_NP  <-  fitdist(Emb_LVL_2.5_0_NP,"lnorm",method = "mle")
lognormal2Emb_OSB_2.5_0_NP  <-  fitdist(Emb_OSB_2.5_0_NP, "lnorm", method = "mle")
lognormal2Emb_OSB_2.5_0_P   <-  fitdist(Emb_OSB_2.5_0_P, "lnorm", method = "mle")
lognormal2Emb_OSB_2.8_0_NP  <-  fitdist(Emb_OSB_2.8_0_NP,"lnorm",method = "mle")
lognormal2Emb_OSB_2.8_0_P   <-  fitdist(Emb_OSB_2.8_0_P, "lnorm", method = "mle")

lognormal2Den_KVH_2.0_0_NP  <-  fitdist(Den_KVH_2.0_0_NP,"lnorm",method = "mle")
lognormal2Den_KVH_2.5_0_NP  <-  fitdist(Den_KVH_2.5_0_NP, "lnorm", method = "mle")
lognormal2Den_KVH_2.5_90_P  <-  fitdist(Den_KVH_2.5_90_P,"lnorm",method = "mle")
lognormal2Den_KVH_2.8_0_NP  <-  fitdist(Den_KVH_2.8_0_NP, "lnorm", method = "mle")
lognormal2Den_KVH_2.8_0_P   <-  fitdist(Den_KVH_2.8_0_P,"lnorm",method = "mle")
lognormal2Den_KVH_3.1_0_NP  <-  fitdist(Den_KVH_3.1_0_NP, "lnorm", method = "mle")
lognormal2Den_LVL_2.5_0_NP  <-  fitdist(Den_LVL_2.5_0_NP,"lnorm",method = "mle")
lognormal2Den_OSB_2.5_0_NP  <-  fitdist(Den_OSB_2.5_0_NP, "lnorm", method = "mle")
lognormal2Den_OSB_2.5_0_P   <-  fitdist(Den_OSB_2.5_0_P, "lnorm", method = "mle")
lognormal2Den_OSB_2.8_0_NP  <-  fitdist(Den_OSB_2.8_0_NP,"lnorm",method = "mle")
lognormal2Den_OSB_2.8_0_P   <-  fitdist(Den_OSB_2.8_0_P, "lnorm", method = "mle")

#summary of fitting the lognormal distribution to the test data

summary(lognormal2Emb_KVH_2.0_0_NP)
summary(lognormal2Emb_KVH_2.5_0_NP)
summary(lognormal2Emb_KVH_2.5_90_P)
summary(lognormal2Emb_KVH_2.8_0_NP)
summary(lognormal2Emb_KVH_2.8_0_P)
summary(lognormal2Emb_KVH_3.1_0_NP)
summary(lognormal2Emb_LVL_2.5_0_NP)
summary(lognormal2Emb_OSB_2.5_0_NP)
summary(lognormal2Emb_OSB_2.5_0_P)
summary(lognormal2Emb_OSB_2.8_0_NP)
summary(lognormal2Emb_OSB_2.8_0_P)

summary(lognormal2Den_KVH_2.0_0_NP)
summary(lognormal2Den_KVH_2.5_0_NP)
summary(lognormal2Den_KVH_2.5_90_P)
summary(lognormal2Den_KVH_2.8_0_NP)
summary(lognormal2Den_KVH_2.8_0_P)
summary(lognormal2Den_KVH_3.1_0_NP)
summary(lognormal2Den_LVL_2.5_0_NP)
summary(lognormal2Den_OSB_2.5_0_NP)
summary(lognormal2Den_OSB_2.5_0_P)
summary(lognormal2Den_OSB_2.8_0_NP)
summary(lognormal2Den_OSB_2.8_0_P)


#plot the graphs for fitting the lognormal distribution to the test data

plot(lognormal2Emb_KVH_2.0_0_NP)
plot(lognormal2Emb_KVH_2.5_0_NP)
plot(lognormal2Emb_KVH_2.5_90_P)
plot(lognormal2Emb_KVH_2.8_0_NP)
plot(lognormal2Emb_KVH_2.8_0_P)
plot(lognormal2Emb_KVH_3.1_0_NP)
plot(lognormal2Emb_LVL_2.5_0_NP)
plot(lognormal2Emb_OSB_2.5_0_NP)
plot(lognormal2Emb_OSB_2.5_0_P)
plot(lognormal2Emb_OSB_2.8_0_NP)
plot(lognormal2Emb_OSB_2.8_0_P)

plot(lognormal2Den_KVH_2.0_0_NP)
plot(lognormal2Den_KVH_2.5_0_NP)
plot(lognormal2Den_KVH_2.5_90_P)
plot(lognormal2Den_KVH_2.8_0_NP)
plot(lognormal2Den_KVH_2.8_0_P)
plot(lognormal2Den_KVH_3.1_0_NP)
plot(lognormal2Den_LVL_2.5_0_NP)
plot(lognormal2Den_OSB_2.5_0_NP)
plot(lognormal2Den_OSB_2.5_0_P)
plot(lognormal2Den_OSB_2.8_0_NP)
plot(lognormal2Den_OSB_2.8_0_P)

# Fit the  data to the Weibull Distribution using the Maximum likelihood method
#and add Weibull2 in front of their names

weibull2Emb_KVH_2.0_0_NP  <-  fitdist(Emb_KVH_2.0_0_NP,"weibull",method = "mle")
weibull2Emb_KVH_2.0_0_NP  <-  fitdist(Emb_KVH_2.0_0_NP,"weibull",method = "mle")
weibull2Emb_KVH_2.5_0_NP  <-  fitdist(Emb_KVH_2.5_0_NP, "weibull", method = "mle")
weibull2Emb_KVH_2.5_90_P  <-  fitdist(Emb_KVH_2.5_90_P,"weibull",method = "mle")
weibull2Emb_KVH_2.8_0_NP  <-  fitdist(Emb_KVH_2.8_0_NP, "weibull", method = "mle")
weibull2Emb_KVH_2.8_0_P   <-  fitdist(Emb_KVH_2.8_0_P,"weibull",method = "mle")
weibull2Emb_KVH_3.1_0_NP  <-  fitdist(Emb_KVH_3.1_0_NP, "weibull", method = "mle")
weibull2Emb_LVL_2.5_0_NP  <-  fitdist(Emb_LVL_2.5_0_NP,"weibull",method = "mle")
weibull2Emb_OSB_2.5_0_NP  <-  fitdist(Emb_OSB_2.5_0_NP, "weibull", method = "mle")
weibull2Emb_OSB_2.5_0_P   <-  fitdist(Emb_OSB_2.5_0_P, "weibull", method = "mle")
weibull2Emb_OSB_2.8_0_NP  <-  fitdist(Emb_OSB_2.8_0_NP,"weibull",method = "mle")
weibull2Emb_OSB_2.8_0_P   <-  fitdist(Emb_OSB_2.8_0_P, "weibull", method = "mle")

weibull2Den_KVH_2.0_0_NP  <-  fitdist(Den_KVH_2.0_0_NP,"weibull",method = "mle")
weibull2Den_KVH_2.5_0_NP  <-  fitdist(Den_KVH_2.5_0_NP, "weibull", method = "mle")
weibull2Den_KVH_2.5_90_P  <-  fitdist(Den_KVH_2.5_90_P,"weibull",method = "mle")
weibull2Den_KVH_2.8_0_NP  <-  fitdist(Den_KVH_2.8_0_NP, "weibull", method = "mle")
weibull2Den_KVH_2.8_0_P   <-  fitdist(Den_KVH_2.8_0_P,"weibull",method = "mle")
weibull2Den_KVH_3.1_0_NP  <-  fitdist(Den_KVH_3.1_0_NP, "weibull", method = "mle")
weibull2Den_LVL_2.5_0_NP  <-  fitdist(Den_LVL_2.5_0_NP,"weibull",method = "mle")
weibull2Den_OSB_2.5_0_NP  <-  fitdist(Den_OSB_2.5_0_NP, "weibull", method = "mle")
weibull2Den_OSB_2.5_0_P   <-  fitdist(Den_OSB_2.5_0_P, "weibull", method = "mle")
weibull2Den_OSB_2.8_0_NP  <-  fitdist(Den_OSB_2.8_0_NP,"weibull",method = "mle")
weibull2Den_OSB_2.8_0_P   <-  fitdist(Den_OSB_2.8_0_P, "weibull", method = "mle")


#Summary of fitting the material properties to the Weibull Distribution
summary(weibull2Emb_KVH_2.0_0_NP)
summary(weibull2Emb_KVH_2.5_0_NP)
summary(weibull2Emb_KVH_2.5_90_P)
summary(weibull2Emb_KVH_2.8_0_NP)
summary(weibull2Emb_KVH_2.8_0_P)
summary(weibull2Emb_KVH_3.1_0_NP)
summary(weibull2Emb_LVL_2.5_0_NP)
summary(weibull2Emb_OSB_2.5_0_NP)
summary(weibull2Emb_OSB_2.5_0_P)
summary(weibull2Emb_OSB_2.8_0_NP)
summary(weibull2Emb_OSB_2.8_0_P)

summary(weibull2Den_KVH_2.0_0_NP)
summary(weibull2Den_KVH_2.5_0_NP)
summary(weibull2Den_KVH_2.5_90_P)
summary(weibull2Den_KVH_2.8_0_NP)
summary(weibull2Den_KVH_2.8_0_P)
summary(weibull2Den_KVH_3.1_0_NP)
summary(weibull2Den_LVL_2.5_0_NP)
summary(weibull2Den_OSB_2.5_0_NP)
summary(weibull2Den_OSB_2.5_0_P)
summary(weibull2Den_OSB_2.8_0_NP)
summary(weibull2Den_OSB_2.8_0_P)

#Plot the graphs for fitting the data  to the Weibull Distribution
#NB: The graphs can be seen by running the codes one by one. Export each graph as you run the codes   

plot(weibull2Emb_KVH_2.0_0_NP)
plot(weibull2Emb_KVH_2.5_0_NP)
plot(weibull2Emb_KVH_2.5_90_P)
plot(weibull2Emb_KVH_2.8_0_NP)
plot(weibull2Emb_KVH_2.8_0_P)
plot(weibull2Emb_KVH_3.1_0_NP)
plot(weibull2Emb_LVL_2.5_0_NP)
plot(weibull2Emb_OSB_2.5_0_NP)
plot(weibull2Emb_OSB_2.5_0_P)
plot(weibull2Emb_OSB_2.8_0_NP)
plot(weibull2Emb_OSB_2.8_0_P)

plot(weibull2Den_KVH_2.0_0_NP)
plot(weibull2Den_KVH_2.5_0_NP)
plot(weibull2Den_KVH_2.5_90_P)
plot(weibull2Den_KVH_2.8_0_NP)
plot(weibull2Den_KVH_2.8_0_P)
plot(weibull2Den_KVH_3.1_0_NP)
plot(weibull2Den_LVL_2.5_0_NP)
plot(weibull2Den_OSB_2.5_0_NP)
plot(weibull2Den_OSB_2.5_0_P)
plot(weibull2Den_OSB_2.8_0_NP)
plot(weibull2Den_OSB_2.8_0_P)



# BOXPLOTS OF THE MATERIAL PROPERTIES

#To Draw the box plots of the material properties,first load the ggplot 2 package

library(ggplot2)

#import the file and call it Box BoxPlotStrength

BoxPlotData <-  read.csv("Box Plot Material.csv",header = TRUE,sep = ",")

#Set the material properties as categorical factors 

StrengthsBoxPlot  <-  as.factor("BoxPlotData$Strengths")
MoEBoxPlot  <-  as.factor("BoxPlotData$E-Modulus")
DensityBoxPlot  <-  as.factor("BoxPlotData$Density")

#Check that the material property has been accurately represented as factor

class(StrengthsBoxPlot)
class(MoEBoxPlot)
class(DensityBoxPlot)

# Load the ggplot2 package to Plot the box plots
library(ggplot2)

#Plot the box plots

#Strengths
ggplot(data = BoxPlotData,mapping = aes(x=Strengths,y=SValues))+geom_boxplot()+labs(x="Material Properties")+
  labs(y="Strengths (MPa)")


ggplot(data = BoxPlotData,mapping = aes(x=reorder(Strengths,SValues,median,na.rm=TRUE),y=SValues))+geom_boxplot()+labs(x="Material Properties")+
  labs(y="Strengths (MPa)")+theme_bw()



#E-Modulus
ggplot(data = BoxPlotData,mapping = aes(x=MoE,y=EValues))+geom_boxplot()+labs(x="Elastic Moduli Types")+
  labs(y="Elastic Moduli Values (MPa)")

#Density
ggplot(data = BoxPlotData,mapping = aes(x=Density,y=DenValues))+geom_boxplot()+labs(x="Density")+
  labs(y="Density Value (kg/m3)")+theme_bw()

#reoder the boxplots in ascending order
#Strengths
ggplot(data = BoxPlotData,mapping = aes(x=reorder(Strengths,SValues,median,na.rm=TRUE),y=SValues))+geom_boxplot()+labs(x="Material Properties")+
  labs(y="Strengths (MPa)")+theme_bw()

#E-Modulus
ggplot(data = BoxPlotData,mapping = aes(x=reorder(MoE,EValues,median,na.rm=TRUE), y=EValues))+geom_boxplot()+
  labs(x="Elastic Moduli")+
  labs(y="Elastic Moduli Values (MPa)")+theme_bw()

#Density
ggplot(data = BoxPlotData,mapping = aes(x=reorder(Density,DenValues,median,na.rm=TRUE),y=DenValues))+geom_boxplot()+labs(x="Density")+
  labs(y="Density Value (kg/m3)")+theme_bw()




