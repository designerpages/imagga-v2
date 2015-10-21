# Create the base module
module Imagga 

# Swagger common files
require 'imagga/monkey.rb'
require 'imagga/swagger.rb'
require 'imagga/swagger/configuration.rb'
require 'imagga/swagger/request.rb'
require 'imagga/swagger/response.rb'
require 'imagga/swagger/version.rb'


# Models
require 'imagga/models/tag.rb'
require 'imagga/models/taggingresponse.rb'
require 'imagga/models/info.rb'
require 'imagga/models/colorsresult.rb'
require 'imagga/models/taggingresult.rb'
require 'imagga/models/uploadsresponse.rb'
require 'imagga/models/backgroundcolor.rb'
require 'imagga/models/colorsresponse.rb'
require 'imagga/models/unsuccessfulresult.rb'
require 'imagga/models/foregroundcolor.rb'
require 'imagga/models/imagecolor.rb'
require 'imagga/models/categorizationresponse.rb'
require 'imagga/models/cropping.rb'
require 'imagga/models/categorizerslist.rb'
require 'imagga/models/croppingsresponse.rb'
require 'imagga/models/uploaded.rb'
require 'imagga/models/croppingsresult.rb'
require 'imagga/models/categorizationresult.rb'
require 'imagga/models/category.rb'


# APIs
require 'imagga/api/croppings_api.rb'
require 'imagga/api/tagging_api.rb'
require 'imagga/api/content_api.rb'
require 'imagga/api/categorizers_api.rb'
require 'imagga/api/colors_api.rb'
require 'imagga/api/categorizations_api.rb'


end
