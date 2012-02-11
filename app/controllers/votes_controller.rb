class VotesController < ActionController::Base
  def create
    @vote = Vote.new
    @vote.user = current_user
    @vote.application = Application.find(params[:vote][:application_id])
    if params[:vote][:vote] == 'yes'
      @vote.vote = true
    else 
      @vote.vote = false
      @vote.no_comment = params[:vote][:no_comment]
    end
    if @vote.save
      redirect_to application_path(@vote.application.id)
    else
      flash[:notice] = @vote.errors.full_messages.to_s
      redirect_to application_path(@vote.application.id)
    end
  end
end
