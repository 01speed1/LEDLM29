import React from 'react';
import SensorAlertMessage from './SensorAlertMessage';

export default function Sensors({ sensorsData }) {
  return (
    <>
      <h2 className="title">Sensors List</h2>
      <div className="is-flex is-justify-content-space-between is-flex-wrap-wrap">
        {sensorsData.map(sensor => (
          <SensorAlertMessage {...sensor} />
        ))}
      </div>
    </>
  );
}
