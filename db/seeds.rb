
Book.destroy_all
Genre.destroy_all

fiction = Genre.create!(name: 'Fiction')
apple = Genre.create!(name: 'Apple')
non_fiction = Genre.create!(name: 'Non-Fiction')

Book.create!([{
  title: 'Harry Potter',
  author: 'JK Rowling',
  description: 'Bacon ipsum dolor amet filet mignon beef flank bacon meatloaf, tongue tenderloin spare ribs ham hock leberkas venison pork loin shankle porchetta. Strip steak biltong pancetta chuck sirloin, boudin ball tip salami ham hock. Shankle tri-tip shank beef pork belly jowl kevin sirloin pastrami ball tip hamburger pork chop picanha tongue. Frankfurter venison porchetta ground round spare ribs tongue flank, rump tri-tip chicken.',
  amazon_id: '0053285768',
  rating: 5,
  finished_on: 10.days.ago,
  genres: [fiction]
},
{
  title: 'The Game',
  author: 'Neil Straus',
  description: 'Bacon ipsum dolor amet shank short ribs flank drumstick ground round. Brisket corned beef tail capicola pork loin tongue. Hamburger pancetta ham hock, kielbasa turducken picanha pork chop tongue alcatra sirloin jerky fatback landjaeger. Ribeye strip steak andouille, porchetta ground round shankle hamburger. T-bone kielbasa pastrami pork chop.',
  amazon_id: '0348590B2',
  rating: 2,
  finished_on: nil,
  genres: [non_fiction]
},
{
  title: 'Wolf of Wall Street',
  author: 'Jordan Belford',
  description: 'Bacon ipsum dolor amet shank short ribs flank drumstick ground round. Brisket corned beef tail capicola pork loin tongue. Hamburger pancetta ham hock, kielbasa turducken picanha pork chop tongue alcatra sirloin jerky fatback landjaeger. Ribeye strip steak andouille, porchetta ground round shankle hamburger. T-bone kielbasa pastrami pork chop.',
  amazon_id: '23948BG5',
  rating: 5,
  finished_on: 20.days.ago,
  genres: [non_fiction, apple]
  }])

  p "Created #{Book.count} books"
