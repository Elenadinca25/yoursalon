class StylistsController < ApplicationController

    def index
        @stylists = Stylist.all
    end

    def show
        @stylist = Stylist.find(params[:id])
        @hairstyles = @stylist.hairstyles
        @appointment = Appointment.new
    end

    def destroy
    end

end
