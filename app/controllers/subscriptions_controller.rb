class SubscriptionsController < ApplicationController

	before_action :authenticate_user!

	def index
		@subscriptions = Subscription.where(:subscriber => current_user)

	end

	def new
		@subscription = Subscription.new
	end

	def create
    @subscription = Subscription.new(subscription_params)

    respond_to do |format|
      if @subscription.save
        format.html { redirect_to subscriptions_path, notice: 'subscription was successfully created.' }
        format.json { render :show, status: :created, location: @subscription }
      else
        format.html { render :new }
        format.json { render json: @subscription.errors, status: :unprocessable_entity }
      end
    end
  end

  private
  	def subscription_params
  		par_hash = params.require(:subscription)
  										 .permit(:feeder_id)
  										 .merge(subscriber: current_user)
  	end

end
