import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "lap_history", timestamps: false })
class LapHistory extends Model {
  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.BIGINT.UNSIGNED)
  public session_uid: number;

  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.TINYINT.UNSIGNED)
  public index: number;

  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.TINYINT.UNSIGNED)
  public lap_num: number;

  @Column(DataType.INTEGER.UNSIGNED)
  public lap_time: number;

  @Column(DataType.SMALLINT.UNSIGNED)
  public sector1_time: number;

  @Column(DataType.SMALLINT.UNSIGNED)
  public sector2_time: number;

  @Column(DataType.SMALLINT.UNSIGNED)
  public sector3_time: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public lap_valid: number;
}

export default LapHistory;