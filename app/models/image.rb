class Image < ApplicationRecord
  validates :url, presence: true
  validates_format_of :url, multiline: true, with: /^(http|https):\/\/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?(\/.*)?$/ix
  validates_format_of :tag_list, multiline: true, with: /^$|^([a-z]+)(,\s*[a-z]+)*$/i, message: 'must be a comma separated list'
  acts_as_taggable
end
