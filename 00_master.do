/****************************
File: Master File
Author: Bishmay Barik
Purpose: Public Goods
****************************/

*1_master.do

clear all
macro drop all
set more off


cap global dir "/Volumes/bishmayexp/Thesis"


* Set global for main directories

global raw "$dir/01_Raw data"
global clean "$dir/02_Clean Data"


// Set scheme for plots
capture net install scheme-modern, from("https://raw.githubusercontent.com/mdroste/stata-scheme-modern/master/")
set scheme modern, perm
