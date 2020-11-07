class SearchsController < ApplicationController

	before_action :authenticate_user!

	def search
		@model = params[:model]
		@content = params[:content]
		@method = params[:method]
		if @model == 'user'
			@records = User.search_for(@content, @method)
		else
			@records = Book.search_for(@content, @method)
		end
	end
end

# class SearchsController < ApplicationController
#   def search
#     @range = params[:range]
#     search = params[:search]
#     word = params[:word]

#     if @range == '1'
#       @user = User.search(search,word)
#     else
#       @book = Book.search(search,word)
#     end
#   end
# end
