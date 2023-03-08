import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "session", updatedAt: false })
class Session extends Model {
  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.BIGINT.UNSIGNED)
  declare public uid: number;

  @CreatedAt
  created_at: Date;

  @Column(DataType.TINYINT.UNSIGNED)
  public playercar_index: number;

  @Column(DataType.TINYINT)
  public track_id: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public formula: number;

  @Column(DataType.BOOLEAN)
  public network_game: boolean;

  @Column(DataType.INTEGER.UNSIGNED)
  public season_link: number;

  @Column(DataType.INTEGER.UNSIGNED)
  public weekend_link: number;

  @Column(DataType.INTEGER.UNSIGNED)
  public session_link: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public gamemode: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public ruleset: number;
}

export default Session;