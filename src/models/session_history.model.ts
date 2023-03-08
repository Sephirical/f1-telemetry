import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "session_history", timestamps: false })
class SessionHistory extends Model {
  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.BIGINT.UNSIGNED)
  public session_uid: number;

  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.TINYINT.UNSIGNED)
  public index: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public best_lap_num: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public best_sector1_lap_num: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public best_sector2_lap_num: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public best_sector3_lap_num: number;
}

export default SessionHistory;