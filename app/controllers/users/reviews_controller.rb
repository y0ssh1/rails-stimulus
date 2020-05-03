# frozen_string_literal: true

module Users
  class ReviewsController < ApplicationController
    def index
      # 負荷かかる処理だとして適当に遅延させる
      sleep(1)
      reviews = User
                .find(params[:user_id])
                .reviews
                .map do |r|
        render_to_string(
          partial: 'components/review_card',
          locals: { review: r }
        )
      end.join('')
      render plain: reviews
    end
  end
end
