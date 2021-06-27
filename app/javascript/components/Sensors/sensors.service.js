import axios from 'axios';

import { DateTime } from 'luxon';

const GET_ALERTS_ENDPOINT = '/alerts_its_a_trap';

export function getAlerts() {
  return axios.get(GET_ALERTS_ENDPOINT);
}

export const updateSensors = async setSensors => {
  try {
    const {
      data: { sensors }
    } = await getAlerts();

    setSensors(sensors);
  } catch (error) {
    console.log(error);
    alert('Connection with server fail');
  }
};

export const parseDate = date => DateTime.fromISO(date);

export const sortSensorData = sensorsData => {
  return sensorsData.reduce((previous, current) => {
    previous[current.position] = previous[current.position]
      ? previous[current.position]
      : [];

    previous[current.position].push(current);

    return previous;
  }, {});
};

export const getLatestSensorData = sensorsData => {
  const sortedData = sortSensorData(sensorsData);

  const lastData = [];

  for (const sensor in sortedData) {
    lastData.push(sortedData[sensor].pop());
  }

  return lastData;
};
