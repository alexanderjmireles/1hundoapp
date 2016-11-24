module ApplicationHelper
  def alert_for(flash_type)
    {
      success: 'alert-success text-center',
      error: 'alert-danger text-center',
      alert: 'alert-warning text-center',
      notice: 'alert-info text-center'
    }[flash_type.to_sym] || flash_type.to_s
  end

  def form_image_select(post)

    if post.image.present?
      return image_tag( attachment_url(post, :image, :fill, 640, 400, format: "jpg"),id: 'image-preview', class: 'img-responsive img-circle profile-image' )
    else
      image_tag 'placeholder.jpg', id: 'image-preview', class: 'img-responsive'
    end
  end

  def profile_avatar_select(user)

    if user.avatar.present?
      return image_tag(attachment_url(user, :avatar, :fill, 640, 400, format: "jpg"),id: 'image-preview', class: 'img-responsive img-circle profile-image' )
    else
      image_tag 'default-avatar.jpg', id: 'image-preview', class: 'img-responsive img-circle profile-image'
    end

  end
end
