class ApplicationController < ActionController::Base
  before_action :authenticate_user!
  before_action :count_unreads

  include Pundit
  # Pundit: white-list approach.
  after_action :verify_authorized, except: [:index, :show, :new, :create], unless: :skip_pundit?
  after_action :verify_policy_scoped, only: :index, unless: :skip_pundit?

  # Uncomment when you *really understand* Pundit!
  rescue_from Pundit::NotAuthorizedError, with: :user_not_authorized
  def user_not_authorized
    flash[:alert] = "You are not authorized to perform this action."
    redirect_to(root_path)
  end

  private

  def count_unreads
    all_buds = policy_scope(BuddyConnection)
    @buddiesapp = all_buds.where(user_1_id: current_user) + all_buds.where(user_2_id: current_user)
    @chatroomsapp = []
    @buddiesapp.each do |buddy|
      @chatroomsapp << policy_scope(Chatroom).where(buddy_connection_id: buddy.id)
    end
    @messages_unreadapp = []
    @chatroomsapp.each do |chat|
      Message.where(chatroom: chat).each do |message|
        @messages_unreadapp << message unless message.read || message.user_id == current_user.id
      end
    end
  end

  def skip_pundit?
    devise_controller? || params[:controller] =~ /(^(rails_)?admin)|(^pages$)/
  end
end
