require 'rails_helper'

RSpec.describe CollateralsTagsController, type: :controller do
  context 'connect collateral and tag' do
    it 'return connected collateral' do
      collateral = Collateral.create(title: "Title")
      tag = Tag.create( name: 'tag')
      collateral_tag = CollateralsTag.create(collateral: collateral, tag: tag, weight: 100)

      expect(collateral_tag.collateral).to eq collateral
    end
    it 'return connected tag' do
      collateral = Collateral.create(title: "Title")
      tag = Tag.create( name: 'tag')
      collateral_tag = CollateralsTag.create(collateral: collateral, tag: tag, weight: 100)

      expect(collateral_tag.tag).to eq tag
    end
  end
end
