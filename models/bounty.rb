require('pg')

class Bounty

  attr_accessor :name, :species, :bounty_value, :last_known_location
  attr_accessor :id

  def initialize(attributes)

    @id = attributes['id'].to_i if attributes ['id']
    @name = attributes['name']
    @species = attributes['species']
    @bounty_value = attributes['bounty_value'].to_i
    @last_known_location = attributes['last_known_location']

  end

  def save
    db = PG.connect({
      dbname: 'bounty',
      host: 'localhost'
      })
    sql = "
      INSERT INTO bounties
        (
        name,
        species,
        bounty_value,
        last_known_location
        )
        VALUES
        (
          $1, $2, $3, $4
        )
        RETURNING *
    "
    values = [@name, @species, @bounty_value, @last_known_location]
    db.prepare("save",sql)

    @id =
    db.exec_prepared("save", values)[0]['id'].to_i()
    db.close()
  end

  def self.all()
    db = PG.connect({
      dbname: 'bounty',
      host: 'localhost'
      })
    sql = "SELECT * FROM bounties"
    value = []
    db.prepare("all", sql)
    fellons = db.exec_prepared("all", sql)
    db.close()

    fellons_as_object = fellons.map{ |fellon| Bounty.new(fellon)}
    return fellons_as_object
  end


end
