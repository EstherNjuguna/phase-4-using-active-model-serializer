class MoviesummarySerializer < ActiveModel::Serializer
  attributes :summary
  def summary
    "#{self.object.title} - #{self.object.description[0..49]}..."
  end
  def summaries
    movies = Movie.all
    render json: movies, each_serializer: MoviesummarySerializer
  end
end
