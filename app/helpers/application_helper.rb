module ApplicationHelper

  def translate_flash_key_to_bootstrap_class(k)
    case k
    when 'error'
      'alert alert-danger fade in'
    when 'notice'
      'alert alert-warning fade in'
    end
  end
end
