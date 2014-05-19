# Read about factories at https://github.com/thoughtbot/factory_girl

FactoryGirl.define do
  factory :wine do
    name "Eroica"
    vineyard "Chateau Ste. Michelle"
    description "Eroica is an elegant off-dry Washington Riesling that has blazed a trail for high-end American Riesling."
    # Eroica delivers a unique combination of mandarin orange aromas characteristic of Washington state Rieslings, melded with the mineral, spiced apple and slate notes with lively, crisp acidity associated with German Riesling. The wine’s zesty acidity, combined with a touch of sweetness, makes it a tremendously versatile and food friendly wine.
    price 29.99
    vintage 2011
    category "white"
    grape "Riesling"
    occasion "everyday"
  end
end
