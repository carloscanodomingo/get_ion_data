IONOLABTEC v1.36
--------------------------
Copyright (c) 2013-2022 IONOLAB Group, Hacettepe University, Ankara.

IONOLABTEC executable is provided for non-commercial purposes only. Commercial usage is prohibited, that is, 
it cannot be included in (or bundled with) any commercial product, and any outputs (TEC etc.) produced by the 
software cannot be sold or used in any commercial product. 

This disclaimer applies to all versions prior to and including v1.36.

Please use the references provided in the REFERENCES.txt to cite, if you use IONOLABTEC output in your research.

----------------------------------------------------------------------------------------------------------------

ionolabtec.exe is a command line tool to calculate GPS TEC for a given GPS receiver and date
by downloading and processing the necessary RINEX, SP3, DCB and IONEX files. IONOLABTEC executable
uses the wget executable located in the apps folder to perform the necessary downloads.

If this is your first attempt to run the program, please follow the steps below.

1. Verify the MATLAB Compiler Runtime (MCR) is installed and ensure you    
   have installed version 8.1 (R2013a). You can download the necessary
   'MCRInstaller.exe' from the IONOLAB-TEC Executable page on the IONOLAB 
   website (www.ionolab.org). You can also download the Windows 32-bit 
   version of the MCR for R2013a  from the MathWorks Web site by navigating to
        http://www.mathworks.com/products/compiler/mcr/index.html
   NOTE: You will need administrator rights to run MCRInstaller.
   You need to do this step only once.
2. Extract the ZIP file "ionolabtecv1.36.zip" to an appropriate place
3. In Windows Explorer select the folder which holds extracted contents
4. Press the Shift key on the keyboard and right-click on the folder while pressing the Shift key
5. Then select "Open command window here" option from the right-click menu.
6. Once the Command Window is open now you can run the ionolabtec executable 
  a. Type "ionolabtec ankr 2015-05-19" in the command window
  b. The program will start downloading the necessary RINEX, SP3, DCB and IONEX files from 
     the HTTP/FTP sites specified in the config file "ionolabtec.cfg" to the local folders 
     specified in the config file "ionolabtec.cfg" (see contents of 'data' directory created in 
     the current working directory) and calculate GPS TEC value from the RINEX file downloaded. 
     GPS TEC results will be saved to a text file named with the receiver name and the date given 
     (e.g., ankr_20150519.txt).
  c. If files already present in the local directories, then those files are not downloaded again.
     Try running the same command (ionolabtec ankr 2015-05-19) again, you will notice that program will
     not download the downloaded files again.

     NOTE: If 4-letter station-code fails, then please try the 9-letter station-code, e.g.,
	 
           ionolabtec ISTA00TUR 2022-05-19
		   
USAGE			 
--------------------------
ionolabtec v1.36 Copyright (c) 2013-2022 IONOLAB Group, Hacettepe University, Ankara.
For non-commercial use only.

Usage: ionolabtec [-cfg config_file] [-disabledownload] [-stec] receiver_code date

    -cfg config_file: Name (or full path) of the configuration file
                      [default: ionolabtec.cfg]
    -disabledownload: Disables file downloading.
               -stec: Enables IONOLAB-STEC output generation.
       receiver_code: Four- or nine-letter code for the GPS receiver station
                      (e.g., ankr or ANKR00TUR)
                date: Date in yyyy-mm-dd format (e.g., 2015-10-29).
                
EXAMPLE VTEC OUTPUT FILE
-----------------------
# Created by ionolabtec v1.36
# Copyright (c) 2013-2022 IONOLAB Group, Hacettepe University, Ankara
# Web site: http://www.ionolab.org/
# Contact: Prof. Feza Arikan (arikan@hacettepe.edu.tr) 
# RINEX file: ankr1390.15d.Z
# SP3 file: COD18452.EPH.Z
# DCB file(s): P1P21505_ALL.DCB.Z 
# IONEX file: codg1390.15i.Z
# Observation variables used: P1, P2, L1, L2
# IONOLAB-TEC and IONOLAB-BIAS results for GPS receiver ankr (lat: 39.89N, lon: 32.76E) on 2015-05-19.
# IONOLAB-BIAS: -15.04 TECU (IONOLAB)
# NOTE1: Time is in UTC and expressed in ISO 8601 format, i.e., yyyymmddTHHMMSS.
# NOTE2: Unavailable TEC values are indicated with a value of 999.99
# Time (UTC)    VTEC (TECU)
20150519T000000 016.79
20150519T000030 016.79
...
...

EXAMPLE STEC OUTPUT FILE
-----------------------
# Created by ionolabtec v1.36
# Copyright (c) 2013-2022 IONOLAB Group, Hacettepe University, Ankara
# Web site: http://www.ionolab.org/
# Contact: Prof. Feza Arikan (arikan@hacettepe.edu.tr) 
# RINEX file: ankr1390.15d.Z
# SP3 file: COD18452.EPH.Z
# DCB file(s): P1P21505_ALL.DCB.Z 
# IONEX file: codg1390.15i.Z
# Observation variables used: P1, P2, L1, L2
# IONOLAB-STEC and IONOLAB-BIAS results for GPS receiver ankr (lat: 39.89N, lon: 32.76E) on 2015-05-19.
# IONOLAB-BIAS: -15.04 TECU (IONOLAB)
# NOTE1: Time is in UTC and expressed in ISO 8601 format, i.e., yyyymmddTHHMMSS.
# NOTE2: Unavailable STEC values are indicated with a value of 999.99
# NOTE3: SatID is the GPS satellite ID, and Elv and Azm are the elevation and azimuth angles of the GPS satellite according to the receiver location.
# NOTE4: Azimuth angles are measured clockwise from local north.
# SatID Time (UTC)       Elv (Deg) Azm (Deg) STEC (TECU)
G01     20150519T000000  +48.12    +312.56   019.53
G01     20150519T000030  +48.34    +312.57   019.48
...
...


TWEAKS
-----------------------
1. You can edit "ionolabtec.cfg" config file to point to your own remote/local RINEX collection by changing
   the "rinexfolder:" and/or "rinexsites:" options.

2. If the receiver location is not present in the RINEX file, the you can create "receiver_coords.txt"
   file inside RINEX base directory (e.g., data/RINEX). Then, you can add XYZ (ECEF) cooerdinates 
   of the receiver together with the receiver code, e.g.,
       ankr	 4121934.2600  2652189.8100  4069034.9100
       ista	 4208830.7150  2334850.1024  4171267.0925
			 ...
			 
       
CONTACT INFORMATION
--------------------------
Web site: http://www.ionolab.org/
Contact:  Prof. Feza Arikan      
          IONOLAB Group
          Engineering 06800 Beytepe Ankara / TURKEY
          Dep. of Electrical and Electronic Engineering
          Hacettepe University
          Beytepe Ankara/Turkey 06800
E-mail:   arikan@hacettepe.edu.tr
