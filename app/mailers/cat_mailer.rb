class CatMailer < ActionMailer::Base
  default from: "catbook@esdeluxe.com"
  def welcome(cat)
 	@cat = cat
    mail(to: cat.email, subject: 'Welcome to My Awesome Site')
  end
end
