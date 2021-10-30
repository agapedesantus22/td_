class CommentsController < ApplicationController
  def create

    @fact = Fact.find(params[:article_id])
    @comment = @fact.comments.create(comment_params)

    redirect_to fact_path(@fact)
  end
    private
      def comment_params
        params.require(:comment).permit(:commenter, :body)
      end
end
