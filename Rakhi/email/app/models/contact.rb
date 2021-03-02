class Contact < MailForm::Base
  attribute :name,      :validate => true
  attribute :email,     :validate => /\A([\W\.%\+\-]+)@([\W\-]+\.)+([\W]{2,})\Z/i
  attribute :file,      :attachment => true

  attribute :messages
  attribute :nickname, :captcha => true

  def headers
    {
      :subject => "sending email",
      :to => "devkaterakhi@gmail.com",
      :from => %("#{name}" <#{email}>)
    }
  end
end
