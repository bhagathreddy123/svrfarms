class Contact < ApplicationMailer
  def send_contact(a, b, c, d, e, f)
    @a=a
    @b=b
    @c=c
    @d=d
    @e=e
    @f=f
    mail(:to =>"svrforms@gmail.com", :subject => "User Requirements")
  end
end



  

  