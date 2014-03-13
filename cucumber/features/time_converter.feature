Feature: 24 hour UTC to USA Time Converter
	In order to easily convert Current UTC time to USA time
	As a developer 
	I want to convert the UTC time to the desired USA time zone.

Scenario:
	Given I have entered 12:00:00
	And I have selected "CST"
	When I press convert
	Then the result returned should be 06:00:00

Scenario:
	Given I have entered 05:00:00
	And I have selected "EST"
	When I press convert
	Then the result returned should be 24:00:00

Scenario:
	Given I have entered 22:00:00
	And I have selected "HST"
	When I press convert
	Then the result returned should be 12:00:00

Scenario:
	Given I have entered 21:00:00
	And I have selected "AKST"
	When I press convert
	Then the result returned should be 12:00:00

Scenario:
	Given I have entered 01:00:00
	And I have selected "PST"
	When I press convert
	Then the result returned should be 17:00:00

Scenario:
	Given I have entered 24:00:00
	And I have selected "MST"
	When I press convert
	Then the result returned should be 17:00:00

Scenario:
	Given I have entered 22:00:00
	And I have selected "MST"
	When I press convert
	Then the result returned should be 15:00:00


