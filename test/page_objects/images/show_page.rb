module PageObjects
  module Images
    class ShowPage < PageObjects::Document
      path :image

      element :success
      collection :all_tags, locator: "#js-card-body" do
      end

      def image_url
        node.find('img')[:src]
      end

      def tags
        all_tags.text.split(', ')
      end

      def delete
        node.find('#js-delete-button').click
        yield node.driver.browser.switch_to.alert
      end

      def delete_and_confirm!
        node.find('#js-delete-button').click
        modal = node.driver.browser.switch_to.alert
        modal.accept
        stale!
        window.change_to(IndexPage)
      end

      def go_back_to_index!
        node.find("#js-home-button").click
        stale!
        window.change_to(IndexPage)
      end
    end
  end
end
