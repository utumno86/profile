ActionMailer::Base.smtp_settings = {
    :port =>           '587',
    :address =>        'smtp.sendgrid.net',
    :user_name =>      'apikey',
    :password =>       ENV['SENDGRID_APIKEY'],
    :domain =>         'mnashprofile.herokuapp.com',
    :authentication => :plain
}
ActionMailer::Base.delivery_method = :smtp
