class Hero
  attr_reader :name, :gender, :hometown

  def initialize(params)
    @name = params[:name]
    @gender = params[:gender]
    @hometown = params[:hometown]
  end

end
