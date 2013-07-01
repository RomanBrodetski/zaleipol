# RailsAdmin config file. Generated on June 25, 2013 15:08
# See github.com/sferik/rails_admin for more informations

RailsAdmin.config do |config|


  ################  Global configuration  ################
  config.authorize_with do
    authenticate_or_request_with_http_basic('Site Message') do |username, password|
      username == 'admin' && password == 'zaleipol'
    end
  end
  # Set the admin name here (optional second array element will appear in red). For example:
  config.main_app_name = ['Zaleipol', 'Admin']

  config.model 'Page' do
      edit do
        field :plug
        field :parent
        field :title
        field :description, :code_mirror  
      end
      show do
        field :plug
        field :parent
        field :title
        field :description
        field :child_pages
      end
      list do
        field :plug
        field :parent
        field :title
      end
  end

  config.model 'Review' do
      edit do
        field :image, :paperclip
      end
  end

end
