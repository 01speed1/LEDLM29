import React, { useState } from 'react';

export default function Sensors() {
  //Get sensor dat

  const mockedData = [
    { ship: 'Eagle Master', value: 100, position: 1 },
    { ship: 'Eagle Master 2', value: 99, position: 2 },
    { ship: 'Eagle Master 3', value: 204, position: 3 },
    { ship: 'Eagle Master 4', value: 369, position: 4 },
    { ship: 'Eagle Master 5', value: 20, position: 5 },
    { ship: 'Eagle Master 5', value: 20, position: 5 },
    { ship: 'Eagle Master 5', value: 20, position: 5 },
    { ship: 'Eagle Master 5', value: 20, position: 5 }
  ];

  const [sensors, setSensors] = useState(mockedData);

  return (
    <>
      <h2 className="title">Sensors List</h2>
      <div className="is-flex is-justify-content-space-between is-flex-wrap-wrap">
        {sensors.map(sensor => (
          <div className="sensor box">
            <div className="sensor_position title">
              Sensor #{sensor.position}
            </div>
            <div className="columns">
              <div className="column sensor_ship">
                <div className="subtitle">Ship kind detected:</div>
                <span className="tag is-large">{sensor.ship}</span>
              </div>
              <div className="column">
                <span>Magtos:</span>
                <div className="sensor_value box has-background-success-dark has-text-grey-lighter	has-text-grey-lighter	 title is-1">
                  {sensor.value}
                </div>
              </div>
            </div>
            <button className="button is-danger is-large">
              Destroy {sensor.ship}!!
            </button>
          </div>
        ))}
      </div>
    </>
  );
}
