class CreateChampionsParticipants < ActiveRecord::Migration
  def self.up
    create_table :champions_participants, :id => false do |t|
        t.references :champion
        t.references :participant
    end
    add_index :champions_participants, [:champion_id, :participant_id]
    add_index :champions_participants, :participant_id
  end

  def self.down
    drop_table :champions_participants
  end
end
