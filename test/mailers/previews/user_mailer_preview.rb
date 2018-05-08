# Preview all emails at http://localhost:3000/rails/mailers/user_mailer
class UserMailerPreview < ActionMailer::Preview

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/account_activation
  def account_activation
    user = User.first
    user.activation_token = User.new_token
    UserMailer.account_activation(user)
  end

  # Preview this email at http://localhost:3000/rails/mailers/user_mailer/password_reset
  def password_reset
    UserMailer.password_reset
  end

end

#21b5eea18e374c01a9f07fb903bbce22.vfs.cloud9.us-east-2.amazonaws.com
#以下のURLから
#https://21b5eea18e374c01a9f07fb903bbce22.vfs.cloud9.us-east-2.amazonaws.com/rails/mailers/user_mailer/account_activation
