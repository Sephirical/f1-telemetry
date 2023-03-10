import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "session", updatedAt: false })
class Session extends Model {
  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.BIGINT.UNSIGNED)
  declare uid: number;

  @CreatedAt
  declare created_at: Date;

  @Column(DataType.TINYINT.UNSIGNED)
  declare playercar_index: number;

  @Column(DataType.TINYINT)
  declare track_id: number;

  @Column(DataType.TINYINT.UNSIGNED)
  declare formula: number;

  @Column(DataType.BOOLEAN)
  declare network_game: boolean;

  @Column(DataType.INTEGER.UNSIGNED)
  declare season_link: number;

  @Column(DataType.INTEGER.UNSIGNED)
  declare weekend_link: number;

  @Column(DataType.INTEGER.UNSIGNED)
  declare session_link: number;

  @Column(DataType.TINYINT.UNSIGNED)
  declare gamemode: number;

  @Column(DataType.TINYINT.UNSIGNED)
  declare ruleset: number;
}

export default Session;