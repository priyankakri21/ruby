ActiveAdmin.register Notice do
# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
# permit_params :list, :of, :attributes, :on, :model
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if params[:action] == 'create' && current_user.admin?
#   permitted
# end
permit_params :title, :description, :document

 index do
    selectable_column
    id_column
    column :title
    column :description
    column :document_file_name
    column :created_at
    actions
  end
  filter :title
  filter :description
  filter :document_file_name
  filter :created_at

  form do |f|
    f.inputs do
      f.input :title
      f.input :description
      f.input :document, as: :file

    end
    f.actions
   end

end
