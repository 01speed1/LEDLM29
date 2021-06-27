import React from 'react';

import Sensors from './Sensors';

export default function App() {
  return (
    <>
      <section className="hero is-medium is-danger">
        <div className="hero-body">
          <p className="title">Magtobossometricos active sensors</p>
          <p className="subtitle">Death Star Preemptive Alert System</p>
        </div>
      </section>
      <section className="section is-small">
        <Sensors />
      </section>
    </>
  );
}
