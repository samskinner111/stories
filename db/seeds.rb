# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

  Story.create([
    { description: 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim.',
      story_type: 'process'},
    { description: 'Donec pede justo, fringilla vel, aliquet nec, vulputate eget, arcu. In enim justo, rhoncus ut, imperdiet a, venenatis vitae, justo. Nullam dictum felis eu pede mollis pretium. Integer tincidunt. Cras dapibus. Vivamus elementum semper nisi. Aenean vulputate eleifend tellus. ', 
      story_type: 'behavior'},
    { description: 'Aenean leo ligula, porttitor eu, consequat vitae, eleifend ac, enim. Aliquam lorem ante, dapibus in, viverra quis, feugiat a, tellus. Phasellus viverra nulla ut metus varius laoreet. Quisque rutrum. Aenean imperdiet. ',
      story_type: 'saying'}
  ])

  Assessment.create([{story_id: 1, duplicate: true, importance: 'neutral', valence: 'positive',
                      match_value_id: 1, match_strength: 'matches', value_violation: false,
                      value_violated_id: 2, comments: 'take one', restrict_comments: true}, 
                     {story_id: 3, duplicate: false, importance: 'low importance', valence: 'negative',
                      match_value_id: 1, match_strength: 'strongly matches', value_violation: true,
                      value_violated_id: 2, comments: 'take two', restrict_comments: false}])


