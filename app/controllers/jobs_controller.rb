class JobsController < ApplicationController

  def show
    @job_title = "SOMETHING"
    @users = [
      {
        user_name: "headfdsafd1",
        first_name: "d1fda",
        last_name: "l1fdaf",
        email: "12/12/fdas12",
        password_digest: "what is that"
      },
      {
        user_name: "hefdsaad2",
        first_name: "dfdas2",
        last_name: "lfdas2",
        email: "12/12/12",
        password_digest: "what is that"
      },
      {
        user_name: "heaaaaaad3",
        first_name: "dfdas3",
        last_name: "lfdsa3",
        email: "12/12ff/12",
        password_digest: "what is that"
      },
    ]
  end

end