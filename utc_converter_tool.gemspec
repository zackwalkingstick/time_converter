Gem::Specification.new do |s|
	s.name        = 'utc_converter_tool'
	s.version     = '0.0.2'
	s.date        = '2014-03-11'
	s.summary     = 'UTC time zone converter'
	s.description = 'This gem is intended to convert UTC time to other time zones'
	s.authors     = ['Zack Walkingstick']
	s.email       = 'zackwalkingstick@gmail.com'
	s.homepage    = 'http://rubygems.org/gems/utc_converter_tool'
	s.licenses    = ['GPL-3.0']
	s.files       = ["lib/README.md",
				     "lib/cucumber/features/time_converter.feature",
				     "lib/cucumber/features/step_definitions/time_converter_steps.rb",
				     "lib/cucumber/features/step_definitions/time_converter.rb"
					]
	end