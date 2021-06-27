import React from 'react';

const blue =
  'https://upload.wikimedia.org/wikipedia/commons/3/3f/Button_Icon_Blue.svg';

const red =
  'https://upload.wikimedia.org/wikipedia/commons/0/07/Button_Icon_Red.svg';

const buttonStyle = {
  width: '300px',
  height: 'auto'
};

function WarningSignal({ isActive }) {
  const stateMessage = () => {
    return isActive ? '¡Threat detected!' : 'Everything OK!';
  };

  return (
    <div className="is-flex is-flex-direction-column is-justify-content-flex-end">
      <h1 className="title is-1 has-text-centered">{stateMessage()}</h1>
      <div className="has-text-centered">
        <img style={buttonStyle} src={isActive ? red : blue} />
      </div>
    </div>
  );
}

export default WarningSignal;
