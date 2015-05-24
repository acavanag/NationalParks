class GPostsController < ApplicationController
  before_action :set_g_post, only: [:show, :edit, :update, :destroy]

  # GET /g_posts
  # GET /g_posts.json
  def index
    #@g_posts = GPost.all
    @g_posts = GPost.page(params[:page]).per(25)
    render :json => @g_posts.to_json
  end

  # GET /g_posts/1
  # GET /g_posts/1.json
  def show
    set_g_post
    render :json => @g_post.to_json
  end

  # GET /g_posts/new
  def new
    @g_post = GPost.new
  end

  # GET /g_posts/1/edit
  def edit
  end

  # POST /g_posts
  # POST /g_posts.json
  def create
    @g_post = GPost.new(g_post_params)

    respond_to do |format|
      if @g_post.save
        format.html { redirect_to @g_post, notice: 'G post was successfully created.' }
        format.json { render :show, status: :created, location: @g_post }
      else
        format.html { render :new }
        format.json { render json: @g_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /g_posts/1
  # PATCH/PUT /g_posts/1.json
  def update
    respond_to do |format|
      if @g_post.update(g_post_params)
        format.html { redirect_to @g_post, notice: 'G post was successfully updated.' }
        format.json { render :show, status: :ok, location: @g_post }
      else
        format.html { render :edit }
        format.json { render json: @g_post.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /g_posts/1
  # DELETE /g_posts/1.json
  def destroy
    @g_post.destroy
    respond_to do |format|
      format.html { redirect_to g_posts_url, notice: 'G post was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_g_post
      @g_post = GPost.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def g_post_params
      params.require(:g_post).permit(:lat, :lon, :image, :user_id, :user_name, :park, :ip_address)
    end
end
