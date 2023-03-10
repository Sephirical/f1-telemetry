import * as dgram from 'dgram';
import {constants, F1TelemetryClient} from '..';
import CarDamage from '../models/car_damage.model';
import EventPenalty from '../models/event_penalty.model';
import FinalClassficiation from '../models/final_classification.model';
import FinalClassficiationTyreStint from '../models/final_classification_tyrestint.model';
import LapData from '../models/lap_data.model';
import LapHistory from '../models/lap_history.model';
import Participants from '../models/participants.model';
import Session from '../models/session.model';
import SessionHistory from '../models/session_history.model';
import { sequelize } from '../sequelize';

const {PACKETS} = constants;

const client = new F1TelemetryClient({
  port: 20777,
});

sequelize.authenticate;

client.on(PACKETS.event, async (stream) => {
  if (stream.m_eventStringCode === "PENA") {
    await EventPenalty.create({
      session_uid: stream.m_header.m_sessionUID,
      penalty_type: stream.m_eventDetails.penaltyType,
      infringement_type: stream.m_eventDetails.infringementType,
      index: stream.m_eventDetails.vehicleIdx,
      other_index: stream.m_eventDetails.otherVehicleIdx,
      time: stream.m_eventDetails.time,
      lap_num: stream.m_eventDetails.lapNum,
      places_gained: stream.m_eventDetails.placesGained,
      frame: stream.m_header.m_frameIdentifier
    });
  }
});
client.on(PACKETS.session, async (stream) => {
  await Session.findOrCreate<Session>({
    where: {
      uid: stream.m_header.m_sessionUID,
    },
    defaults: {
      uid: stream.m_header.m_sessionUID,
      playercar_index: stream.m_header.m_playerCarIndex,
      track_id: stream.m_trackId,
      formula: stream.m_formula,
      network_game: stream.m_networkGame,
      season_link: stream.m_seasonLinkIdentifier,
      weekend_link: stream.m_weekendLinkIdentifier,
      session_link: stream.m_sessionLinkIdentifier,
      gamemode: stream.m_gameMode,
      ruleset: stream.m_ruleSet,
    }
  })
});
// client.on(PACKETS.carSetups, console.log);
// client.on(PACKETS.lapData, async (stream) => {
//   try {
//     const [session, created] = await Session.findOrCreate<Session>({
//       where: {
//         uid: stream.m_header.m_sessionUID
//       },
//       defaults: {
//         uid: stream.m_header.m_sessionUID,
//         playercar_index: stream.m_header.m_playerCarIndex,
//       }
//     });

//     const player = stream.m_lapData[stream.m_header.m_playerCarIndex];
//     const player_lap_data = {
//       session_uid: stream.m_header.m_sessionUID,
//       index: stream.m_header.m_playerCarIndex,
//       last_laptime: player.m_lastLapTimeInMS,
//       current_laptime: player.m_currentLapTimeInMS,
//       sector1_time: player.sector1TimeInMS,
//       sector2_time: player.sector2TimeInMS,
//       lap_distance: player.m_lapDistance,
//       total_distance: player.m_totalDistance,
//       safetycar_delta: player.m_safetyCarDelta,
//       car_position: player.m_carPosition,
//       currentlap_num: player.m_currentLapNum,
//       pit_status: player.m_pitStatus,
//       num_pitstops: player.m_numPitStops,
//       sector: player.m_sector,
//       currentlap_invalid: player.m_currentLapInvalid,
//       penalties: player.m_penalties,
//       warnings: player.m_warnings,
//       num_unserved_drivethrough_pens: player.m_numUnservedDriveThroughPens,
//       num_unserved_stopgo_pens: player.m_numUnservedStopGoPens,
//       grid_position: player.m_gridPosition,
//       driver_status: player.m_driverStatus,
//       result_status: player.m_resultStatus,
//       pitlane_timer_active: player.m_pitLaneTimerActive,
//       pitlane_time: player.m_pitLaneTimeInLaneInMS,
//       pitstop_timer: player.m_pitStopTimerInMS,
//       pitstop_serve_pen: player.m_pitStopShouldServePen,
//     };

//     await LapData.create<LapData>(player_lap_data);
//   } catch (e) {
//     console.error(e);
//   }
// });
// client.on(PACKETS.session, async (stream) => {
//   const [session, created] = await Session.findOrCreate<Session>({
//     where: {
//       id: stream.m_header.m_sessionUID
//     },
//     defaults: {
//       id: stream.m_header.m_sessionUID,
//       playercar_index: stream.m_header.m_playerCarIndex,
//     }
//   });
// });
client.on(PACKETS.participants, async (stream) => {
  try {
    const hasCreated = await Participants.findOne({
      where: {
        session_uid: stream.m_header.m_sessionUID,
      }
    });
    if (!hasCreated) {
      let insert_data: any[] = [];
      stream.m_participants.map((p: any, i: number) => {
        if (i < stream.m_numActiveCars) {
          insert_data.push({
            session_uid: stream.m_header.m_sessionUID,
            index: i,
            is_ai: p.m_aiControlled,
            driver_id: p.m_driverId,
            network_id: p.m_networkId,
            team_id: p.m_teamId,
            is_my_team: p.m_myTeam,
            race_number: p.m_raceNumber,
            nationality: p.m_nationality,
            name: p.m_name,
            telemetry: p.m_yourTelemetry,
          })
        } else {
          return;
        }
      });
      await Participants.bulkCreate<Participants>(insert_data);
    }
  } catch (e) {
    console.error(e);
  }
});
// client.on(PACKETS.carTelemetry, console.log);
// client.on(PACKETS.carDamage, async (stream) => {
//   // tyre index: RL, RR, FL, FR
//   try {
//     const [session, created] = await Session.findOrCreate<Session>({
//       where: {
//         uid: stream.m_header.m_sessionUID
//       },
//       defaults: {
//         uid: stream.m_header.m_sessionUID,
//         playercar_index: stream.m_header.m_playerCarIndex,
//       }
//     });

//     const player = stream.m_carDamageData[stream.m_header.m_playerCarIndex];
//     const player_damage_data = {
//       session_uid: stream.m_header.m_sessionUID,
//       index: stream.m_header.m_playerCarIndex,
//       rl_tyrewear: player.m_tyresWear[0],
//       rr_tyrewear: player.m_tyresWear[1],
//       fl_tyrewear: player.m_tyresWear[2],
//       fr_tyrewear: player.m_tyresWear[3],
//       rl_tyredamage: player.m_tyresDamage[0],
//       rr_tyredamage: player.m_tyresDamage[1],
//       fl_tyredamage: player.m_tyresDamage[2],
//       fr_tyredamage: player.m_tyresDamage[3],
//       rl_brakedamage: player.m_brakesDamage[0],
//       rr_brakedamage: player.m_brakesDamage[1],
//       fl_brakedamage: player.m_brakesDamage[2],
//       fr_brakedamage: player.m_brakesDamage[3],
//       fl_wingdamage: player.m_frontLeftWingDamage,
//       fr_wingdamage: player.m_frontRightWingDamage,
//       rear_wingdamage: player.m_rearWingDamage,
//       floor_damage: player.m_floorDamage,
//       diffuser_damage: player.m_diffuserDamage,
//       sidepod_damage: player.m_sidepodDamage,
//       drs_fault: player.m_drsFault,
//       ers_fault: player.m_ersFault,
//       gearbox_damage: player.m_gearBoxDamage,
//       engine_damage: player.m_engineDamage,
//       mguh_wear: player.m_engineMGUHWear,
//       es_wear: player.m_engineESWear,
//       ce_wear: player.m_engineCEWear,
//       ice_wear: player.m_engineICEWear,
//       mguk_wear: player.m_engineMGUKWear,
//       tc_wear: player.m_engineTCWear,
//       engine_blown: player.m_engineBlown,
//       engine_seized: player.m_engineSeized,
//     }
//     await CarDamage.create<CarDamage>(player_damage_data);
//   } catch (e) {
//     console.error(e);
//   }
// });
client.on(PACKETS.finalClassification, async (stream) => {
  try {
    let tyre_insert: any[];
    tyre_insert = [];
    const hasCreated = await FinalClassficiation.findOne({
      where: {
        session_uid: stream.m_header.m_sessionUID,
      }
    });
    
    if (!hasCreated) {
      const trimmed = stream.m_classificationData.splice(0, stream.m_numCars);
      const insert_data = trimmed.map((c: any, i: number) => {
        c.m_tyreStintsActual.map((t: any, ti: number) => {
          if (ti < c.m_numTyreStints) {
            tyre_insert.push({
              session_uid: stream.m_header.m_sessionUID,
              index: i,
              stint: ti,
              tyre_actual: t,
              tyre_visual: c.m_tyreStintsVisual[ti],
              tyre_endlap: c.m_tyreStintsEndLaps[ti],
            })
          }
        });
        return {
          session_uid: stream.m_header.m_sessionUID,
          index: i,
          position: c.m_position,
          num_laps: c.m_numLaps,
          grid_position: c.m_gridPosition,
          points: c.m_points,
          num_pitstops: c.m_numPitStops,
          result_status: c.m_resultStatus,
          best_laptime: c.m_bestLapTimeInMS,
          total_racetime: c.m_totalRaceTime,
          penalties_time: c.m_penaltiesTime,
          num_penalties: c.m_numPenalties,
          num_tyrestints: c.m_numTyreStints,
        }
      });
      await Promise.all([FinalClassficiation.bulkCreate<FinalClassficiation>(insert_data), FinalClassficiationTyreStint.bulkCreate<FinalClassficiationTyreStint>(tyre_insert)]);
    }
  } catch (e) {
    console.error(e);
  }
});
client.on(PACKETS.sessionHistory, async (stream) => {
  try {
    const session_history: any = {
      session_uid: stream.m_header.m_sessionUID,
      index: stream.m_carIdx,
      best_lap_num: stream.m_bestLapTimeLapNum,
      best_sector1_lap_num: stream.m_bestSector1LapNum,
      best_sector2_lap_num: stream.m_bestSector2LapNum,
      best_sector3_lap_num: stream.m_bestSector3LapNum,
    }

    const lap_history: any = {
      session_uid: stream.m_header.m_sessionUID,
      index: stream.m_carIdx,
      lap_num: stream.m_numLaps,
      lap_time: stream.m_lapHistoryData[stream.m_numLaps - 1].m_lapTimeInMS,
      sector1_time: stream.m_lapHistoryData[stream.m_numLaps - 1].m_sector1TimeInMS,
      sector2_time: stream.m_lapHistoryData[stream.m_numLaps - 1].m_sector2TimeInMS,
      sector3_time: stream.m_lapHistoryData[stream.m_numLaps - 1].m_sector3TimeInMS,
      lap_valid: stream.m_lapHistoryData[stream.m_numLaps - 1].m_lapValidBitFlags,
    }

    await Promise.all([
      SessionHistory.upsert(session_history),
      LapHistory.upsert(lap_history)
    ]);
    if (stream.m_numLaps > 1) {
      await LapHistory.upsert({
        session_uid: stream.m_header.m_sessionUID,
        index: stream.m_carIdx,
        lap_num: stream.m_numLaps - 1,
        sector3_time: stream.m_lapHistoryData[stream.m_numLaps - 2].m_sector3TimeInMS,
        lap_time: stream.m_lapHistoryData[stream.m_numLaps - 2].m_lapTimeInMS,
      });
    }
  } catch (e) {
    console.error(e);
  }
});

client.start();

// stops the client
[`exit`,
 `SIGINT`,
 `SIGUSR1`,
 `SIGUSR2`,
 `uncaughtException`,
 `SIGTERM`,
].forEach((eventType) => {
  (process as NodeJS.EventEmitter).on(eventType, () => {
    client.stop();
  });
});
