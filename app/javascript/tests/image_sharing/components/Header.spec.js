import { expect } from 'chai';
import { mount } from 'enzyme';
import { Row, Col } from 'reactstrap';
import { describe, it } from 'mocha';
import React from 'react';
import Header from '../../../image_sharing/components/Header';

describe('Header', () => {

  const wrapper = mount(<Header title="This is the title text" />);

  it('should have a title prop', () => {
    expect(wrapper.props()).to.have.ownPropertyDescriptor('title');
    expect(wrapper.props().title).to.equal('This is the title text');
  });

  it('should render one Row', () => {
    expect(wrapper.find(Row)).to.have.lengthOf(1);
  });

  it('should render one Col', () => {
    expect(wrapper.find(Col).props()).to.have.ownPropertyDescriptor('lg');
    expect(wrapper.find(Col)).to.have.lengthOf(1);
  });

  it('should render the title', () => {
    expect(wrapper.text()).to.equal('This is the title text');
  });
});
