# Barometric_Altitude_Prediction
Matlab function to help create a function that predicts altitude based on barometric pressure

To get pressure and altitude value arrays into matlab, I recommend using this method.

1. Make sure you have your flight data file saved in the same location as this matlab script. You will need to use this file location, whatever it may be, as your matlab path in order for this to work.

2. Double click on your flight data file. It should appear somewhere in one of your tabs if you are on the correct path.

3. A new window will open that shows your flight data much as it would in excel. On the "Import" toolbar on the top, you should see a box that says "Output Type" at the top. Click the drop down directly below this title (The default is probbly set to "table"). Select "Column vectors"

4. Click on the column of data that you wish to import. I recommend starting with pressure. On the right side of the same "Import" tool bar click import selection. (A little box should pop up confirming the import into your matlab workspace with the variable name.

5. Go back to your main matlab window. In your workspace you should see a variable with the name of the column you imported and it should have a label such as "Nx1 double"

6. Save your variable as the transpose of itself using the command windoow. This would be a good opportunity to rename your variable:
Type " p = PressurePSI' " (THE APOSTROPHE IS IMPORTANT AS IT TURNS YOUR ARRAY FROM A COLUMN TO A ROW)

7. Repeat steps 4-6 for alitude. (" alt = Altitudeft' ")

8. pass the variables into the function to graph the values against eachother:
Type " altitudePrediction(p,alt) "
