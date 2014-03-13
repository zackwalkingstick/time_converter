class TimeConverter

	#attr_accessor :selected_timezone
	#list of Time zones and their UTC Offset
	UTC_HOUR_OFFSET = {'HST'=>-10, 'AKST'=>-9, 'PST'=>-8,'MST'=>-7, 'CST'=>-6, 'EST'=>-5}

	def initialize hours, minutes, seconds, selected_timezone
		@hours = hours.to_i
		@minutes = minutes.to_i
		@seconds = seconds.to_i
		@selected_timezone = selected_timezone.upcase
	end
	
	#------Conversion Methods------#
	def convert
		"#{convert_time utc_convert}:#{convert_time @minutes}:#{convert_time @seconds}"
	end

	def convert_time arg
		arg.to_s.length == 1? "0#{arg}": arg
	end
	#------Conversion Methods------#

	#------Workhorse Converter-----#
	def utc_convert
		hour = @hours + UTC_HOUR_OFFSET[@selected_timezone]
		if hour.to_s[0] == "-"
			hour + 24
		else
			hour
		end
	end
	#------Workhorse Converter-----#
	
end

	#FUTURE CODE THAT WILL HELP IMPLEMENT DAYLIGHT SAVINGS TIME

	#list of Time Zones and their UTC offset during daylight savings
	#UTC_DS_HOUR_OFFSET = {'HST'=>-9, 'AKST'=>-8, 'PST'=>-7,'MST'=>-6, 'CST'=>-5, 'EST'=>-4}

	#def daylight_savings_convert_hrs 
	#	UTC_Converter UTC_DS_HOUR_OFFSET
	#end


	#def selected_date year, month, day
	#	@year = year
	#	@month = month
	#	@day = day
	#end

