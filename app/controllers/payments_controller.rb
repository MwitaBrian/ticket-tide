class PaymentsController < ApplicationController
        def create
          @event = Event.find(params[:event_id])
          @payment = @event.payments.build(payment_params)
          @payment.user = current_user
          if @payment.save
            # Payment created successfully
          else
            # Handle payment error
          end
        end
      
        private
      
        def payment_params
          params.require(:payment).permit(:amount, :currency, :description)
        end
      end
end
