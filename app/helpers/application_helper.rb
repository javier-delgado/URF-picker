module ApplicationHelper
  def put_background_image(image_path)
    "<style media='screen'>
      html { 
        background: url(#{image_path}) no-repeat center center; 
        background-size: cover;
        background-attachment: fixed;
      }
    </style>".html_safe
  end
end
