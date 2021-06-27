import React from 'react';

const cardStyle = {
  width: '48%',
  marginLeft: '5px',
  marginRight: '5px'
};

export default function SensorAlertMessage({
  position,
  ship,
  value,
  time_tracking
}) {
  return (
    <div style={cardStyle} className="sensor box">
      <div className="sensor_position title">Sensor #{position}</div>
      <span> {time_tracking} </span>
      <div className="columns">
        <div className="column sensor_ship">
          <div className="subtitle">Ship kind detected:</div>
          <span className="tag is-large">{ship}</span>
        </div>
        <div className="column">
          <span>Magtos:</span>
          <div className="sensor_value box has-background-success-dark has-text-grey-lighter	has-text-grey-lighter	 title is-1">
            {value}
          </div>
        </div>
      </div>
      <button className="button is-danger is-large">Destroy {ship}!!</button>
    </div>
  );
}
