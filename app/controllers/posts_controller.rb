class PostsController < ApplicationController
    before_action :logged_in_user, :admin_user, only: [:new, :create, :destroy, :edit, :update]

    def index
        @posts = Post.all.order('created_at DESC').paginate(per_page: 3, page: params[:page])
    end

    def new
        @post = current_user.posts.new
    end

    def create
        @post = current_user.posts.build(post_params)
        
        if @post.save
            redirect_to @post
        else
            render 'new'
        end
    end

    def show
        @post = Post.find(params[:id])
    end

    def edit
        @post = Post.find(params[:id])
    end

    def update
        @post = Post.find(params[:id])
        
        if @post.update(params[:post].permit(:title, :body))
            redirect_to @post
        else
            render 'edit'            
        end
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy

        redirect_to :back
    end


    private
        def post_params
            params.require(:post).permit(:title, :body)
        end

end
