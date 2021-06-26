import React from 'react';
import PropTypes from 'prop-types';

export default function HelloWorld({ greeting }) {
  return <>Greeting: {greeting} </>;
}

HelloWorld.propTypes = {
  greeting: PropTypes.string
};
