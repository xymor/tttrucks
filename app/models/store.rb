class Store
  include Mongoid::Document
  field :name, type: String
  field :email, type: String
  field :open, type: Mongoid::Boolean
  field :image, type: String
  field :photos, type: Array
  field :tags, type: Array
  field :description, type: String
  field :lat, type: BigDecimal
  field :lng, type: BigDecimal
  field :votes, type: Integer, default: 0
  field :props, type: Hash

  def self.voteUp(id)
    s = Store.find(id)
    s.votes++
    s.save
  end

  def tags_list=(arg)
    self.tags = arg.split(',').map { |v| v.strip }
  end

  def tags_list
    self.tags.join(', ') if self.tags
  end

  def photos_list=(arg)
    if arg
      self.photos = arg.split(',').map { |v| v.strip }
    end
  end

  def photos_list
    self.photos.join(', ') if self.photos
  end

  def props_hash=(arg)
    if arg.size > 2
      self.props = JSON.parse arg.gsub('=>', ':')
    end
  end

  def props_hash
    self.props.to_s
  end

  def as_indexed_json(options={})
    as_json()
  end

  def main_image
     photos[0] if photos
  end

end
