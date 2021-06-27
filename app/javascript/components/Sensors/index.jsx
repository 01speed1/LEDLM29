import React from 'react';
import SensorAlertMessage from './SensorAlertMessage';

import { getLatestSensorData } from './sensors.service';

export default function Sensors({ sensorsData }) {
  const orderedData = getLatestSensorData(sensorsData);

  return (
    <>
      <h2 className="title">Sensors List</h2>
      <div className="is-flex is-justify-content-space-between is-flex-wrap-wrap">
        {orderedData.map((sensor, index) => (
          <SensorAlertMessage key={`S${index}`} {...sensor} />
        ))}
      </div>
    </>
  );
}
