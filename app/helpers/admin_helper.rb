module AdminHelper
  def admin?
    current_user.present? && current_user.admin?
  end
end
