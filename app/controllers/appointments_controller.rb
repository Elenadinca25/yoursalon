class AppointmentsController < ApplicationController
    
    def index
        @appointments = Appointment.all 
    end

    def show
        @appointment = Appointment.find(params[:id])
    end

    def make_appointment
        customer = Customer.find_or_create_by(name: params[:customer][:name])
        hairstyle = Hairstyle.find_by(id: params[:appointment][:hairstyle_id])
        salon = hairstyle.stylist.salon
        date = Time.new(params[:appointment]["time(1i)"].to_i, params[:appointment]["time(2i)"].to_i, params[:appointment]["time(3i)"].to_i, params[:appointment]["time(4i)"].to_i, params[:appointment]["time(5i)"].to_i)
        appointment = Appointment.create(date: date, customer_id: customer.id, hairstyle_id: hairstyle.id, salon_id: salon.id)
        if appointment.valid?
            redirect_to appointment_path(appointment)
        else
            flash[:errors] = appointment.errors.full_messages
            redirect_to new_appointment_path
        end 
    end


    def destroy
        Appointment.destroy(params[:id]) 
        redirect_to salons_path
    end

    private
    
    def createAppointmentParams
        params.require(:appointment).permit(:date, :customer_id, :hairstyle_id, :salon_id)
    end

    def updateAppointmentParams
        params.require(:appointment).permit(:date, :customer_id, :hairstyle_id, :salon_id)
    end

end
