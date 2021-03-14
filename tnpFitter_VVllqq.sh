#
# https://github.com/nurfikri89/egm_tnp_analysis
#
# script=etc/config/settings_VVllqq_ele_LegacyReReco2016.py
script=etc/config/settings_VVllqq_ele_ReReco2017.py
# script=etc/config/settings_VVllqq_ele_ReReco2018.py

##
## Trigger path
##
# flag="passEle27orEle115orPho175"
flag="passEle35orEle115orPho200"
# flag="passEle32orEle115orPho200"

##
## Check the bins again if you want, otherwise start the framework by creating the binning pkl file
##
# python tnpEGM_fitter.py $script --flag $flag --checkBins
# python tnpEGM_fitter.py $script --flag $flag --createBins

##
## Process the datasets and create the histos for the later fits
##
sample="data_Run2017B"
python tnpEGM_fitter.py $script --flag $flag --createHists --sample $sample
python tnpEGM_fitter.py $script --flag $flag --createHists

##
## Execute the fitting process in order
##
# python tnpEGM_fitter.py $script --flag $flag --doFit
# python tnpEGM_fitter.py $script --flag $flag --doFit --mcSig 
##
# python tnpEGM_fitter.py $script --flag $flag --doFit --altSig --mcSig
# python tnpEGM_fitter.py $script --flag $flag --doFit --altSig
##
# python tnpEGM_fitter.py $script --flag $flag --doFit --altBkg --mcSig
# python tnpEGM_fitter.py $script --flag $flag --doFit --altBkg
##
## Summarize the study
##
# python tnpEGM_fitter.py $script --flag $flag --sumUp

##
## To run single bins
##
# ib=0
# python tnpEGM_fitter.py $script --flag $flag --doFit --iBin $ib | tee LogFiles/fitLog.txt