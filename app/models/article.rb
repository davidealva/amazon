class Article < ApplicationRecord
    belongs_to :user
    has_rich_text :content

    has_one :action_text_rich_text,
    class_name: 'ActionText::RichText',
    as: :record
end
