class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

# サインインした後の遷移先の指定。resourceは形で覚える。テンプレートとして覚えてもおっけ。
  def after_sign_in_path_for(resource)
    # 今回でいえば、（）内はcurrent_userと同じ動作
    user_path(resource)
  end

  protected
# ストロングパラメータと同じ役割
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:email])
  end
end
