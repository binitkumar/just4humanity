class PageCommentsController < ApplicationController
  before_action :set_page_comment, only: [:show, :edit, :update, :destroy]

  # GET /page_comments
  # GET /page_comments.json
  def index
    @page_comments = PageComment.all
  end

  # GET /page_comments/1
  # GET /page_comments/1.json
  def show
  end

  # GET /page_comments/new
  def new
    @page_comment = PageComment.new
  end

  # GET /page_comments/1/edit
  def edit
  end

  # POST /page_comments
  # POST /page_comments.json
  def create
    @page_comment = PageComment.new(page_comment_params)
    @page = @page_comment.page

    respond_to do |format|
      if verify_recaptcha(model: @page_comment) && @page_comment.save
        format.html { redirect_to @page_comment.page, notice: 'Page comment was successfully created.' }
        format.json { render :show, status: :created, location: @page_comment }
      else
        format.html { render "pages/show" }
        format.json { render json: @page_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /page_comments/1
  # PATCH/PUT /page_comments/1.json
  def update
    respond_to do |format|
      if @page_comment.update(page_comment_params)
        format.html { redirect_to @page_comment, notice: 'Page comment was successfully updated.' }
        format.json { render :show, status: :ok, location: @page_comment }
      else
        format.html { render :edit }
        format.json { render json: @page_comment.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /page_comments/1
  # DELETE /page_comments/1.json
  def destroy
    @page_comment.destroy
    respond_to do |format|
      format.html { redirect_to page_comments_url, notice: 'Page comment was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_page_comment
      @page_comment = PageComment.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def page_comment_params
      params.require(:page_comment).permit(:name, :email, :phone_no, :message, :page_id)
    end
end
