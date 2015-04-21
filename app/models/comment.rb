class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :post
      def date_added
      created_at.localtime.strftime("%-m/%-d/%Y | %l:%M %p")
    end
end
