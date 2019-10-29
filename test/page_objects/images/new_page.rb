module PageObjects
  module Images
    class NewPage < PageObjects::Document
      path :new_image
      path :images

      # element :url, locator: '#js-image-url' do
      #   element :error_message, locator: '.invalid-feedback'
      # end

      form_for :new_image, locator: '#new_image' do
        element :image_url, locator: '#image_url'
        element :image_tag_list, locator: '#image_tag_list'
        element :error_message, locator: '.invalid-feedback'
      end

      def create_image!(url: nil, tags: nil)
        image_url.set url if url.present?
        image_tag_list.set tags if tags.present?
        node.find('#js-submit-button').click
        stale!
        window.change_to(ShowPage, NewPage)
      end
    end
  end
end
