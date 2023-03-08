import { Sequelize } from "sequelize-typescript";

export const sequelize = new Sequelize(
  "f1_telemetry",
  "root",
  "password1",
  {
    host: "localhost",
    dialect: "mysql",
    dialectOptions: { 
      decimalNumbers: true, 
      supportBigNumbers: true,
      bigNumberStrings: true
    },
    port: 3306,
    logging: false,
    models: [__dirname + "/models"]
  }
);