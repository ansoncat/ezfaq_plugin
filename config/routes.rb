if Rails::VERSION::MAJOR >= 3
  RedmineApp::Application.routes.draw do
    match 'ezfaq/index/:id' => 'ezfaq#index'
    match 'ezfaq/new/:id' => 'ezfaq#new'
    match 'ezfaq/copy/:id' => 'ezfaq#copy'
    match 'ezfaq/show/:id' => 'ezfaq#show'
    match 'ezfaq/edit/:id' => 'ezfaq#edit'
    match 'ezfaq/preview/:id' => 'ezfaq#preview'
    match 'ezfaq/history/:id' => 'ezfaq#history'
    match 'ezfaq/destroy/:id' => 'ezfaq#destroy'
    match 'ezfaq/show_history_version/:id' => 'ezfaq#show_history_version'

    match 'ezfaq/list_invalid_faqs/:id' => 'ezfaq#list_invalid_faqs'
    match 'ezfaq/faq_setting/:id' => 'ezfaq#faq_setting'
    match 'ezfaq/add_faq_category/:id' => 'ezfaq#add_faq_category'

    match 'faq_categories/index/:id' => 'faq_categories#index'
    match 'faq_categories/change_order/:id' => 'faq_categories#change_order'
    match 'faq_categories/edit/:id' => 'faq_categories#edit'
    match 'faq_categories/destroy/:id' => 'faq_categories#destroy'
  end
else
  ActionController::Routing::Routes.draw do |map|
    map.connect 'ezfaq/index/:id', :controller => 'ezfaq', :action => 'index'
    map.connect 'ezfaq/new/:id', :controller => 'ezfaq', :action => 'new'
    map.connect 'ezfaq/copy/:id', :controller => 'ezfaq', :action => 'copy'
    map.connect 'ezfaq/show/:id', :controller => 'ezfaq', :action => 'show'
    map.connect 'ezfaq/edit/:id', :controller => 'ezfaq', :action => 'edit'
    map.connect 'ezfaq/preview/:id', :controller => 'ezfaq', :action => 'preview'
    map.connect 'ezfaq/history/:id', :controller => 'ezfaq', :action => 'history'
    map.connect 'ezfaq/destroy/:id', :controller => 'ezfaq', :action => 'destroy'
    map.connect 'ezfaq/show_history_version/:id', :controller => 'ezfaq', :action => 'show_history_version'
    map.connect 'ezfaq/list_invalid_faqs/:id', :controller => 'ezfaq', :action => 'list_invalid_faqs'
    map.connect 'ezfaq/faq_setting/:id', :controller => 'ezfaq', :action => 'faq_setting'
    map.connect 'ezfaq/add_faq_category/:id', :controller => 'ezfaq', :action => 'add_faq_category'
    map.connect 'faq_categories/index/:id', :controller => 'faq_categories', :action => 'index'
    map.connect 'faq_categories/change_order/:id', :controller => 'faq_categories', :action => 'change_order'
    map.connect 'faq_categories/edit/:id', :controller => 'faq_categories', :action => 'edit'
    map.connect 'faq_categories/destroy/:id', :controller => 'faq_categories', :action => 'destroy'
  end
end
