# Time Series Plot of Cases of COVID-19 in the USA with Date of School Reopening for Reference
This is a simple script to automatically update a time series plot to show/debunk the fact that schools reopening in the USA will result in more COVID-19 cases. The data is directly from the WHO website and is downloaded and read every time you run COVID-19.R.
# Installation
1. Download COVID-19.R.
2. Run COVID-19.R.
3. Get updated plots every time you run it that are automatically saved as PDF files in the same directory
# Analysis
The plot as of 2020-08-10 (YYYY-MM-DD) shows no rise in rate of COVID cases, however there are a few limitations to why our prediction isn't true so far. The main limitation is the time, because since we made the graph right now (I had to because of the Hackathon deadline), not all states have opened their schools. However, since the script auto updates whenever it is run, we can use the same code to retrieve new information that may prove our initial prediction of rate of cases increasing. 

Additionally, looking at the statistics of COVID cases by age issued by the CDC, we can see that the percentage of cases under 18 (minors and students) has risen from 2020-08-03 (YYYY-MM-DD) to 2020-08-09 (YYYY-MM-DD) from approximately 10.17% to 10.32%. While a .15% increase may not immediately seem important, a .15% increase is extremely large when looking at a country's whole COVID statistics. Conclusively, this means that while looking at the case rate, the relationship isn't obvious, but by looking at the cases by age, we can tell that our initial prediction was correct: opening schools has increased cases in students.
