ActiveAdmin.register Event do

  permit_params :current,
                :current_donation_amount,
                :year,
                :donation_goal,
                :donation_text,
                :about_text,
                :livestream_url,
                :video_url,
                :donation_url

end
