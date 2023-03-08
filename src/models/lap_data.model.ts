import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "lap_data", timestamps: false })
class LapData extends Model {
  @PrimaryKey
  @AllowNull(false)
  @AutoIncrement
  @Column(DataType.BIGINT.UNSIGNED)
  declare public id: number;
  
  @Column(DataType.BIGINT.UNSIGNED)
  public session_uid: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public index: number;

  @Column(DataType.INTEGER.UNSIGNED)
  public last_laptime: number;

  @Column(DataType.INTEGER.UNSIGNED)
  public current_laptime: number;

  @Column(DataType.SMALLINT.UNSIGNED)
  public sector1_time: number;

  @Column(DataType.SMALLINT.UNSIGNED)
  public sector2_time: number;

  @Column(DataType.FLOAT)
  public lap_distance: number;

  @Column(DataType.FLOAT)
  public total_distance: number;

  @Column(DataType.FLOAT)
  public safetycar_delta: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public car_position: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public currentlap_num: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public pit_status: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public num_pitstops: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public sector: number;

  @Column(DataType.BOOLEAN)
  public currentlap_invalid: boolean;

  @Column(DataType.TINYINT.UNSIGNED)
  public penalties: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public warnings: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public num_unserved_drivethrough_pens: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public num_unserved_stopgo_pens: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public grid_position: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public driver_status: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public result_status: number;

  @Column(DataType.BOOLEAN)
  public pitlane_timer_active: boolean;

  @Column(DataType.SMALLINT.UNSIGNED)
  public pitlane_time: number;

  @Column(DataType.SMALLINT.UNSIGNED)
  public pitstop_timer: number;

  @Column(DataType.BOOLEAN)
  public pitstop_serve_pen: boolean;
}

export default LapData;