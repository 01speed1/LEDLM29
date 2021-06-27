import React, { useState, useEffect } from 'react';

import Sensors from './Sensors';
import WarningSignal from './Sensors/WarningSignal';

import { updateSensors } from './Sensors/sensors.service';

export default function App() {
  let queryInterval;
  const [sensors, setSensors] = useState([]);

  useEffect(async () => {
    queryInterval = setInterval(() => updateSensors(setSensors), 1000);
    return () => {
      clearInterval(queryInterval);
    };
  }, []);

  const isActive = () => !!sensors.length;

  return (
    <>
      <section className="hero is-medium is-danger">
        <div className="hero-body">
          <div className="columns">
            <div className="column">
              <p className="title">Magtobossometricos active sensors</p>
              <p className="subtitle">Death Star Preemptive Alert System</p>
            </div>
            <div className="column">
              <WarningSignal isActive={isActive()} />
            </div>
          </div>
        </div>
      </section>
      <section className="section is-small">
        <Sensors sensorsData={sensors} />
      </section>
    </>
  );
}
