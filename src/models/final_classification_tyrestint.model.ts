import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "final_classification_tyrestint", timestamps: false })
class FinalClassficiationTyreStint extends Model {
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
  public stint: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public tyre_actual: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public tyre_visual: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public tyre_endlap: number;
}

export default FinalClassficiationTyreStint;