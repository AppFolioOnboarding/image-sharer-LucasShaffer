import { expect } from 'chai';
import { shallow } from 'enzyme';
import { describe, it } from 'mocha';
import React from 'react';
import App from '../../../image_sharing/components/App';
import Header from '../../../image_sharing/components/Header';
import FeedbackStore from '../../../image_sharing/stores/FeedbackStore';
import Footer from '../../../image_sharing/components/Footer';

describe('App', () => {
  const stores = {
    feedbackStore: new FeedbackStore()
  };

  const wrapper = shallow(<App stores={stores} />).dive();

  it('should render a header with a title prop', () => {
    expect(wrapper.find(Header)).to.have.lengthOf(1);
    expect(wrapper.find(Header).props()).to.have.ownPropertyDescriptor('title');
  });

  it('should render a footer', () => {
    expect(wrapper.find(Footer)).to.have.lengthOf(1);
  });
});
