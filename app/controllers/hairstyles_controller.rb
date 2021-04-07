class HairstylesController < ApplicationController
    def index
        @hairstyles = Hairstyle.all 
    end

    def show
        @hairstyle = Hairstyle.find(params[:id])
    end
end
