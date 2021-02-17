class ApplicationController < ActionController::Base

 # ここから追加します
 before_action :configure_permitted_parameters, if: :devise_controller?

 def configure_permitted_parameters
   devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name]) # 新規登録時(sign_up時)にnameというキーのパラメーターを追加で許可する
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:family_name_kana])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name_kana])



 end

end
