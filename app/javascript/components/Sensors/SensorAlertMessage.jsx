import React from 'react';

export default function SensorAlertMessage({ position, ship, value }) {
  return (
    <div className="sensor box">
      <div className="sensor_position title">Sensor #{position}</div>
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
