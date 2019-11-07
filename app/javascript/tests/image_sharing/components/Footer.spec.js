import { expect } from 'chai';
import { shallow } from 'enzyme';
import { describe, it } from 'mocha';
import React from 'react';
import Footer from '../../../image_sharing/components/Footer';
import { Col, Row } from "reactstrap";


describe('Footer', () => {
  const wrapper = shallow(<Footer />);

  it('should render one div with text-center class', () => {
    expect(wrapper.find('p')).to.have.lengthOf(1);
    expect(wrapper.find('p').text()).to.equal('Copyright: AppFolio Inc. Onboarding');
  });

  it('should render one Row', () => {
    expect(wrapper.find(Row)).to.have.lengthOf(1);
  });

  it('should render one Col', () => {
    expect(wrapper.find(Col).props()).to.have.ownPropertyDescriptor('lg');
    expect(wrapper.find(Col)).to.have.lengthOf(1);
  });
});
