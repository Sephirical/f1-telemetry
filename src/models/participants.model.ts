import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "participants", timestamps: false })
class Participants extends Model {
  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.BIGINT.UNSIGNED)
  public session_uid: number;

  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.TINYINT.UNSIGNED)
  public index: number;

  @Column(DataType.BOOLEAN)
  public is_ai: boolean;

  @Column(DataType.TINYINT.UNSIGNED)
  public driver_id: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public network_id: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public team_id: number;

  @Column(DataType.BOOLEAN)
  public is_my_team: boolean;

  @Column(DataType.TINYINT.UNSIGNED)
  public race_number: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public nationality: number;

  @Column(DataType.STRING(48))
  public name: string;

  @Column(DataType.TINYINT.UNSIGNED)
  public telemetry: number;
}

export default Participants;