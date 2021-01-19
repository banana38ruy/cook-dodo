class Quantity < ActiveHash::Base
  self.data = [
    { id: 1, name: '--' },
    { id: 2, name: '小さじ４分の１' },
    { id: 3, name: '小さじ２分の１' },
    { id: 4, name: '小さじ１' },
    { id: 5, name: '小さじ２' },
    { id: 6, name: '大さじ１' },
    { id: 7, name: '大さじ２' },
    { id: 8, name: '大さじ３' },
    { id: 9, name: '１カップ（200ML)' },
    { id: 10, name: '2カップ（400ML)' },
    { id: 11, name: '3カップ（600ML)' },
    { id: 12, name: '4カップ（800ML)' },
    { id: 13, name: '5カップ（1L)' },
    { id: 14, name: '6カップ（1200ML)' },
    { id: 15, name: '7カップ（1400ML)' },
    { id: 16, name: '8カップ（1600ML)' },
    { id: 17, name: '9カップ（1800ML)' },
    { id: 18, name: '10カップ（2L)' }
  ]
  
  include ActiveHash::Associations
  has_many :recipes
  end
