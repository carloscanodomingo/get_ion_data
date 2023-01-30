HOW TO RUN LINUX EXECUTABLE (64-bit)
--------------------------------------
   1. Install MCR for MATLAB 8.5 (R2015a).
   2. chmod +x ./linux64/ionolabtecL64
   3. chmod +x ./linux64/ionolabtec.sh 
   4. cp ./linux64/ionolabtecL64 .
   5. cp ./linux64/ionolabtec.sh .
   6. Update the directories (e.g., MATLAB_HOME=/opt/matlab) in "ionolabtec.sh" to point to the correct MATLAB 8.5 (R2015a) runtime libraries
   7. Run ionolabtec.sh instead of ionolabtecL64 (you can also export the environment variables defined in ionolabtec.sh and run ionolabtecL64 directly)
      e.g.
         ./ionolabtec.sh ankr 2015-04-23
         ./ionolabtec.sh ISTA00TUR 2022-05-19
        
