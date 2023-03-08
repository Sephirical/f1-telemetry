import { AllowNull, AutoIncrement, BelongsTo, CreatedAt, Column, DataType, Default, ForeignKey, HasMany, Model, UpdatedAt, PrimaryKey, Table } from "sequelize-typescript";

@Table({ tableName: "car_damage", timestamps: false })
class CarDamage extends Model {
  @PrimaryKey
  @AllowNull(false)
  @AutoIncrement
  @Column(DataType.BIGINT.UNSIGNED)
  declare public id: number;
  
  @Column(DataType.BIGINT.UNSIGNED)
  public session_uid: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public index: number;

  @Column(DataType.FLOAT)
  public rl_tyrewear: number;

  @Column(DataType.FLOAT)
  public rr_tyrewear: number;

  @Column(DataType.FLOAT)
  public fl_tyrewear: number;

  @Column(DataType.FLOAT)
  public fr_tyrewear: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public rl_tyredamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public rr_tyredamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public fl_tyredamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public fr_tyredamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public rl_brakedamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public rr_brakedamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public fl_brakedamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public fr_brakedamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public fl_wingdamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public fr_wingdamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public rear_wingdamage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public floor_damage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public diffuser_damage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public sidepod_damage: number;

  @Column(DataType.BOOLEAN)
  public drs_fault: boolean;

  @Column(DataType.BOOLEAN)
  public ers_fault: boolean;

  @Column(DataType.TINYINT.UNSIGNED)
  public gearbox_damage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public engine_damage: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public mguh_wear: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public es_wear: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public ce_wear: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public ice_wear: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public mguk_wear: number;

  @Column(DataType.TINYINT.UNSIGNED)
  public tc_wear: number;

  @Column(DataType.BOOLEAN)
  public engine_blown: boolean;

  @Column(DataType.BOOLEAN)
  public engine_seized: boolean;
}

export default CarDamage;