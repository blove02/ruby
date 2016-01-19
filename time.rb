def determine_current_hour
	current_time = Time.new
	current_hour = current_time.hour
end
 
puts "#{determine_current_hour}"
