class EventsController < ApplicationController

  def current
    redirect_to event_path(year: current_event.year)
  end

  def show
    respond_to do |format|
      format.html
      format.json {
        render json: {
          current_donation_amount: event.current_donation_amount,
          percentage: "#{(100 * event.current_donation_amount / event.donation_goal)}%"
        }
      }
    end
  end

  def donate
    event.update_attributes(current_donation_amount: event.current_donation_amount + donation_amount)
    redirect_to event.donation_url
  end

  private

  helper_method :event
  def event
    @event ||= Event.find_by_year!(params[:year])
  end

  def current_event
    Event.order(year: :desc).where(current: true).first!
  end

  def donation_amount
    [params.permit(:amount)[:amount].gsub(/[^.0-9]/, '').to_f, 0.0].max
  end

end
