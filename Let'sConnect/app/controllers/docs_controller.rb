class DocsController < ApplicationController
  before_action :find_doc, only: [:show, :edit, :update, :destroy]
def index
 @docs= Doc.where(user_id: current_user).paginate(page: params[:page], per_page: 2)
end

def show

end

def new
 @doc = current_user.docs.build
end

def create
 @doc = current_user.docs.build(doc_params)
  
   if @doc.save
   	redirect_to @doc
   else
   	render 'new'
   end
end

def edit
end

def update
  if @doc.update(docs_params)
		redirect_to @doc
  else
		render 'edit'
  end
end

def destroy
	 if @doc.destroy
    redirect_to docs_path
  end
end
 
 private
 
  def find_doc
    @doc = Doc.find(params[:id])
  end

  def doc_params
  	params.require(:doc).permit(:title, :Content)
  end



end