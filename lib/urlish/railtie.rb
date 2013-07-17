module Urlish
  class Railtie < Rails::Railtie
    initializer 'urlish.model_additions' do
      ActiveSupport.on_load :active_record do
        extend ModelAdditions
      end
    end
  end
end