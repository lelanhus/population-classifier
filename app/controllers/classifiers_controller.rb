class ClassifiersController < ApplicationController
  before_action :set_classifier, only: [:show, :edit, :update, :destroy]

  # GET /classifiers
  # GET /classifiers.json
  def index
    @classifiers = Classifier.all
  end

  # GET /classifiers/1
  # GET /classifiers/1.json
  def show
  end

  # GET /classifiers/new
  def new
    @classifier = Classifier.new
  end

  # GET /classifiers/1/edit
  def edit
  end

  # POST /classifiers
  # POST /classifiers.json
  def create
    @classifier = Classifier.new(classifier_params)

    respond_to do |format|
      if @classifier.save
        format.html { redirect_to @classifier, notice: 'Classifier was successfully created.' }
        format.json { render :show, status: :created, location: @classifier }
      else
        format.html { render :new }
        format.json { render json: @classifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /classifiers/1
  # PATCH/PUT /classifiers/1.json
  def update
    respond_to do |format|
      if @classifier.update(classifier_params)
        format.html { redirect_to @classifier, notice: 'Classifier was successfully updated.' }
        format.json { render :show, status: :ok, location: @classifier }
      else
        format.html { render :edit }
        format.json { render json: @classifier.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /classifiers/1
  # DELETE /classifiers/1.json
  def destroy
    @classifier.destroy
    respond_to do |format|
      format.html { redirect_to classifiers_url, notice: 'Classifier was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_classifier
      @classifier = Classifier.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def classifier_params
      params.require(:classifier).permit(:x1, :x2, :x3, :x4, :x5, :x6)
    end
end
