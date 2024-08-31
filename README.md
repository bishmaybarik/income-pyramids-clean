# Data Cleaning and Appending Workflow

This repository contains two Stata do-files: `00_master` and `01_Clean`. By following the instructions below, you will generate a cleaned, appended dataset that can be used for panel data analysis.

## Folder Setup

### Step 1: Create Master Folder  
Create a folder where all your data will be stored. This will be your "master" folder, containing subfolders for different stages of the data conversion process. For example, you can name it `Data`.

### Step 2: Create Subfolders  
- Inside the master folder, create the following subfolders:
  - `01_Raw_data`
  - `02_Clean`
  - `03_Codes` (optional, for storing Stata scripts)

- Inside the `01_Raw_data` folder, create a subfolder called `income_india_mem` to store all the CSV files for the income pyramids. You can download these files from the [CMIE Income Pyramids](https://consumerpyramidsdx.cmie.com/kommon/bin/sr.php?kall=wdpi&rrurl=incomepyramidsdx).

- Inside the `02_Clean` folder, create a subfolder called `income_india_mem_dta` to store the cleaned `.dta` files.

## Running the Do-Files

### Step 3: Modify the Directory Path  
In the `00_master` do-file, change the directory path to match your working directory:
```stata
cap global dir "/Volumes/bishmayexp/Thesis"
```
Once done, run the 00_master do-file. This will capture the necessary global macros.

### Step 4: Run the Cleaning Script

- Next, run the 01_Clean do-file. This script will:
  - Convert the CSV files to Stata .dta format.
  - Save the .dta files in the income_india_mem_dta folder.
  - Append the files and add the required variables to create a panel dataset.

After running this, the final output will be a .dta file named member_income_clean.dta, located in the income_india_mem_dta folder, along with other processed files.
