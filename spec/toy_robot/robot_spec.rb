require "spec_helper"

RSpec.describe ToyRobot::Robot do
  describe '#move' do
    context 'when position is within table limits' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'NORTH') }
      let(:robot) { ToyRobot::Robot.new(position: position, table: ToyRobot::Table.new(height: 5, width: 5)) }

      it 'moves 3 spaces towards North' do
        3.times { robot.move }

        expect(robot.report).to eq("Robot is currently at (0,3) and it's facing NORTH")
      end
    end

    context 'when position is out of table limits' do
      context 'moving out of limits towards NORTH' do
        let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'NORTH') }
        let(:robot) { ToyRobot::Robot.new(position: position, table: ToyRobot::Table.new(height: 4, width: 4)) }

        it 'moves to the limit of table height towards North' do
          5.times { robot.move }

          expect(robot.report).to eq("Robot is currently at (0,3) and it's facing NORTH")
        end
      end

      context 'moving out of limits towards EAST' do
        let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'EAST') }
        let(:robot) { ToyRobot::Robot.new(position: position, table: ToyRobot::Table.new(height: 4, width: 4)) }

        it 'moves to the limit of table height towards EAST' do
          5.times { robot.move }

          expect(robot.report).to eq("Robot is currently at (3,0) and it's facing EAST")
        end
      end

      context 'moving out of limits towards SOUTH' do
        let(:position) { ToyRobot::Position.new(x: 0, y: 3, direction: 'SOUTH') }
        let(:robot) { ToyRobot::Robot.new(position: position, table: ToyRobot::Table.new(height: 4, width: 4)) }

        it 'moves to the limit of table height towards SOUTH' do
          5.times { robot.move }

          expect(robot.report).to eq("Robot is currently at (0,0) and it's facing SOUTH")
        end
      end

      context 'moving out of limits towards WEST' do
        let(:position) { ToyRobot::Position.new(x: 3, y: 3, direction: 'WEST') }
        let(:robot) { ToyRobot::Robot.new(position: position, table: ToyRobot::Table.new(height: 4, width: 4)) }

        it 'moves to the limit of table height towards WEST' do
          5.times { robot.move }

          expect(robot.report).to eq("Robot is currently at (0,3) and it's facing WEST")
        end
      end
    end

    describe '#turn_left' do
      context 'when robot turns left multiple times' do
        let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'NORTH') }
        let(:robot) { ToyRobot::Robot.new(position: position, table: ToyRobot::Table.new(height: 5, width: 5)) }

        it 'turns the correct direction' do
          3.times { robot.turn_left }

          expect(robot.report).to eq("Robot is currently at (0,0) and it's facing EAST")
        end
      end
    end

    describe '#turn_right' do
      context 'when robot turns right multiple times' do
        let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'NORTH') }
        let(:robot) { ToyRobot::Robot.new(position: position, table: ToyRobot::Table.new(height: 5, width: 5)) }

        it 'turns the correct direction' do
          3.times { robot.turn_right }

          expect(robot.report).to eq("Robot is currently at (0,0) and it's facing WEST")
        end
      end
    end
  end
end
