module PageObjects
  module Images
    class IndexPage < PageObjects::Document
      path :images

      element :success

      collection :images,
                 locator: '.js-index-page',
                 item_locator: '.js-image-card',
                 contains: ImageCard do
        def view!
          node.find('#js-view-button').click
          stale!
          window.change_to(ShowPage)
        end
      end

      def add_new_image!
        node.find('#js-add-an-image').click
        stale!
        window.change_to(NewPage)
      end

      def showing_image?(url:, tags: nil)
        images.each do |image|
          return true if image.url == url
        end
        false
      end

      def clear_tag_filter!
        node.click_on('Home')
        stale!
        window.change_to(IndexPage)
      end
    end
  end
end
