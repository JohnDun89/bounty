require('pry')
require_relative('models/bounty.rb')


intergallactic_footpad_1 = Bounty.new(
{
  'name' => 'vincent',
  'species' => 'intelligent auto bear',
  'bounty_value' => '90',
  'last_known_location' => 'yoesemite, earth'
}
)

intergallactic_footpad_2 = Bounty.new(
  {
  'name' => 'angry tony',
  'species' => 'squid people',
  'bounty_value' => '65000000',
  'last_known_location' => 'calamari system'
  }
  )
binding.pry
nil
