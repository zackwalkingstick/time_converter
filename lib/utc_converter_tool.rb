class TimeConverter

	#list of Time zones and their UTC Offset
	UTC_HOUR_OFFSET = {'HST'=>-10, 'AKST'=>-9, 'PST'=>-8,'MST'=>-7, 'CST'=>-6, 'EST'=>-5}

	def initialize hours, minutes, seconds
		@hours = hours
		@minutes = minutes
		@seconds = seconds
	end

	def selected_timezone selected_timezone
		@selected_timezone = selected_timezone
	end

	
	#------Conversion Methods------#
	def convert
		convert_hrs
		convert_min
		convert_sec
		converted_time = "#{convert_hrs}:#{convert_min}:#{convert_sec}"
	end

	def convert_hrs
		UTC_Converter UTC_HOUR_OFFSET
	end

	def convert_min
		@minutes
	end

	def convert_sec
		@seconds
	end
	#------Conversion Methods------#

	#------Workhorse Converter-----#
	def UTC_Converter hash
		hash.each do |k, v|
			if k == @selected_timezone
			converted_hrs = (v.to_i + @hours.to_i) + 24
				if converted_hrs == 25
					return "0#{(converted_hrs - 24)}"
				elsif converted_hrs == 10 or converted_hrs < 25
					return "#{converted_hrs}"
				elsif converted_hrs < 34
					return "0#{(converted_hrs - 24)}"
				elsif converted_hrs > 25
					return "#{(converted_hrs - 24)}"
				elsif converted_hrs > 10
					return "0#{converted_hrs}"
				elsif converted_hrs == 0
					return "24"
				end
				return converted_hrs
			end
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

