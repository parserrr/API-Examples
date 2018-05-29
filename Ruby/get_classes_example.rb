# Setup credentials
site_ids = { 'int' => -99 }
source_credentials = {
  'SourceName' => 'YourSourceName',
  'Password' => 'YourPassword',
  'SiteIDs' => site_ids
}
user_credentials = {
  'Username' => 'owner',
  'Password' => 'demo1234',
  'SiteIDs' => site_ids
}

#######################
## Standard API call ##
#######################

# Create Savon client using default settings
http_client = Savon.client(wsdl: "https://api.mindbodyonline.com/0_5/ClassService.asmx?WSDL")

# Create request and package it for the call
http_request = {
  'SourceCredentials' => source_credentials,
  'UserCredentials' => user_credentials
}
params = { 'Request' => http_request }

# Fetch current day's classes via GetClasses
# https://developers.mindbodyonline.com/Documentation/ClassService?version=v5.0
result = http_client.call(:get_classes, message: params)

# Parse class data
class_data = result.body.dig(:get_classes_response, :get_classes_result, :classes, :class)

formatted_classes = class_data.map do |scheduled_class|
  {
    name: scheduled_class.dig(:class_description, :name),
    description: scheduled_class.dig(:class_description, :description),
    start_date_time: scheduled_class[:start_date_time].strftime("%B %d, %Y %l:%M%P"),
    end_date_time: scheduled_class[:end_date_time].strftime("%B %d, %Y %l:%M%P")
  }
end

# Display class info
puts "Class schedule:"
formatted_classes.each do |formatted_class|
  puts "Name: #{formatted_class[:name]} (#{formatted_class[:start_date_time]} - #{formatted_class[:end_date_time]})"
  puts "Description: #{formatted_class[:description]}"
end
