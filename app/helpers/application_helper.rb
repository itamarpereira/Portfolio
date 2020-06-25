module ApplicationHelper
  def project_image_url(project)
    project.photo.attached? ? "#{cl_image_path(project.photo.key)}" : "https://images.unsplash.com/photo-1557318041-1ce374d55ebf?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&auto=format&fit=crop&w=800&q=80"
  end
end
