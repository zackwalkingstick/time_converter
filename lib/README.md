time_converter
==============

Converts 24 hr UTC time into USA Time

Description:
The goal of this app is to take the default UTC time and convert it to your choice of USA time ('PST', 'EST', 'CST' etc....).
Currently, you can see that if you create a new senario and/or alter a current scenario in the .features file the app will successfully 
convert your time (hours:minutes:seconds ex: 12:00:00) to the selected USA format.

My eventual goal for this gem is to convert UTC time to any time zone in the world but have yet to complete that work. Also, in its
current state daylight savings is not fully implemented so the conversion is currently happening in a non-daylight savings time scenario. 
Obviously this is my next phase to make this app actually useful. This update will involve knowing the daylight savings dates for each given 
year and converting according to what year is chosen.

I can see this program eventually being hooked up to a simple front end UI where the user can select a time (current, future or past time),
a date and the desired time zone and will return the accurate time conversion upon clicking the 'convert' button available.
