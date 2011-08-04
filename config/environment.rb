# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
Bigblockdeals::Application.initialize!

Time::DATE_FORMATS[:good_reads_title] = "%m/%d/%y"
Time::DATE_FORMATS[:good_reads_article] = "%b %e, %Y"