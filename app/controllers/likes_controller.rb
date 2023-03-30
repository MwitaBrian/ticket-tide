class LikesController < ApplicationController

    def create
        @like = current_user.likes.new(like_params)
        if !@like.save
            flash[:notice] = @like.errors.full_messages.to_sentence
        end
        redirect_to @like.event
    end

    def destroy
        @like = current_user.likes.find(params[:id])
        event = @like.event
        @like.destroy
        redirect to event
    end

    private
    def like_params
        params.require(:like).permit(:event_id)
    end
end
