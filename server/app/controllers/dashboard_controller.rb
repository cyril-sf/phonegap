class DashboardController < ApplicationController
 def index
   render json: {attr: 'value'}
 end
end
