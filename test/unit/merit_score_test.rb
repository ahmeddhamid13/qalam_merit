require 'test_helper'

describe Merit::Score do
  it 'Point#sash_id delegates to Score' do
    score = Merit::MeritScore.new
    score.sash_id = 33

    point = Merit::MeritScore::Point.new
    point.score = score

    _(point.sash_id).must_be :==, score.sash_id
  end
end
