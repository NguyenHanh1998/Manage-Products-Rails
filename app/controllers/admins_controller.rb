class AdminsController < ApplicationController

    def index
    end

    def show
        @admin = Admin.find_by id: params[:id]
    end
    
    def new
        @admin = Admin.new
    end

    def create

    end
end
