module ApplicationHelper
  def project_image_url(project)
    project.photo.attached? ? "#{cl_image_path(project.photo.key)}" : "https://images.unsplash.com/photo-1554290712-e640351074bd?ixlib=rb-1.2.1&auto=format&fit=crop&w=665&q=80"
  end
end
