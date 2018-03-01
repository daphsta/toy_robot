require "spec_helper"
RSpec.describe ToyRobot::Direction do
  describe '#turn_right' do
    context 'when current direction is WEST' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'WEST') }
      let(:direction) { ToyRobot::Direction.new(position: position) }

      it 'returns NORTH' do
        direction.turn_right

        expect(position.direction).to eq('NORTH')
      end
    end

    context 'when current direction is NORTH' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'NORTH') }
      let(:direction) { ToyRobot::Direction.new(position: position) }

      it 'returns EAST' do
        direction.turn_right

        expect(position.direction).to eq('EAST')
      end
    end

    context 'when current direction is EAST' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'EAST') }
      let(:direction) { ToyRobot::Direction.new(position: position) }

      it 'returns SOUTH' do
        direction.turn_right

        expect(position.direction).to eq('SOUTH')
      end
    end

    context 'when current direction is SOUTH' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'SOUTH') }
      let(:direction) { ToyRobot::Direction.new(position: position) }

      it 'returns WEST' do
        direction.turn_right

        expect(position.direction).to eq('WEST')
      end
    end
  end

  describe '#turn_left' do
    context 'when current direction is NORTH' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'NORTH') }
      let(:direction) { ToyRobot::Direction.new(position: position) }

      it 'returns WEST' do
        direction.turn_left

        expect(position.direction).to eq('WEST')
      end
    end

    context 'when current direction is WEST' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'WEST') }
      let(:direction) { ToyRobot::Direction.new(position: position) }

      it 'returns SOUTH' do
        direction.turn_left

        expect(position.direction).to eq('SOUTH')
      end
    end

    context 'when current direction is SOUTH' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'SOUTH') }
      let(:direction) { ToyRobot::Direction.new(position: position) }

      it 'returns EAST' do
        direction.turn_left

        expect(position.direction).to eq('EAST')
      end
    end

    context 'when current direction is EAST' do
      let(:position) { ToyRobot::Position.new(x: 0, y: 0, direction: 'EAST') }
      let(:direction) { ToyRobot::Direction.new(position: position) }

      it 'returns NORTH' do
        direction.turn_left

        expect(position.direction).to eq('NORTH')
      end
    end
  end
end
