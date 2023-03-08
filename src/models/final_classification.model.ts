import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "final_classification", timestamps: false })
class FinalClassficiation extends Model {
  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.BIGINT.UNSIGNED)
  public session_uid: number;

  @PrimaryKey
  @AllowNull(false)
  @Column(DataType.TINYINT.UNSIGNED)
  public index: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public position: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public num_laps: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public grid_position: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public points: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public num_pitstops: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public result_status: number;

  @Column(DataType.INTEGER.UNSIGNED)
  public best_laptime: number;

  @Column(DataType.DOUBLE)
  public total_racetime: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public penalties_time: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public num_penalties: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public num_tyrestints: number;
}

export default FinalClassficiation;