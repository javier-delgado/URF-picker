module ApplicationHelper
  def put_background_image(image_path, position = "center")
    "<style media='screen'>
      html { 
        background: url(#{image_path}) no-repeat #{position} center; 
        background-size: cover;
        background-attachment: fixed;
      }
    </style>".html_safe
  end
end
