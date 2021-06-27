import React, { useState } from 'react';

import Sensors from './Sensors';
import WarningSignal from './Sensors/WarningSignal';

export default function App() {
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

  const [sensors, setSensors] = useState(mockedData || []);

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
