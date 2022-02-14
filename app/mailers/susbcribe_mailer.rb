class SusbcribeMailer < ApplicationMailer
    default from: "Micolet <contacto@micolet.com>"
    def create 
        flash[:notice]= “formulario enviado”
        redirect_to "/users/success"
       end
end
