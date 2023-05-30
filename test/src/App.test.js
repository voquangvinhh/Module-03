import React from 'react';
import { shallow } from 'enzyme';
import App from './App';

describe('App component', () => {
  it('Start with default value', () => {
    const component = shallow(<App />);
    const expectedValue = "0";
    const actualValue = component.find('div.default-value').text();
    expect(actualValue).toEqual(expectedValue);
  });
});