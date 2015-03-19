class CommentsController < ApplicationController
    before_action :logged_in_user, only: [:create, :destroy]

    def create
        @post = Post.find(params[:post_id])
        @comment = @post.comments.create(params[:comment].permit(:body))
        @comment.user_id = current_user.id
        @comment.post_id = @post.id

        if @comment.save
            redirect_to post_path(@post)
        else
            redirect_to post_path(@post)
        end
    end

    def destroy
        @post = Post.find(params[:post_id])
        @comment = @post.comments.find(params[:id])
        
        
        if current_user.admin? || current_user.id == @comment.user_id
            @comment.destroy
            redirect_to post_path(@post)
        else
            redirect_to post_path(@post)
        end
    end

    private

        # Confirms the correct user.
        def comment_owner
          @user = User.find(params[:id])
          redirect_to(root_url) unless current_user?(@user)
        end

end
