# Bazaar

[Website link][heroku]

[heroku]: http://www.the-bazaar.xyz/

Bazaar is a web application clone of Amazon.com. Some features and design choices are inspired by Jet.com. Main development took place over the course of 9 "business" days and 2 weekend days. Bazaar is a single page web app built using a postgres/Ruby on Rails backend. The front end is rendered using ReactJS structured on the Flux architecture. The front end interfaces with Rails primarily through AJAX requests to present a responsive experience with minimal visible load times. Bazaar is still a work in progress! Feel free to send any feedback through the issues tab. Happy browsing!

Current feature being built:
- [ ] search using pg_search

Recently implemented features:
- [x] Redirects back to wherever you were on sign in!
- [x] Anonymous user shopping - [blog post][guest-link]
- [x] Demo user sign-in buttons!
- [x] Checkout and purchasing (front end and back end)
- [x] Integration with [Stripe][stripe-link]

You can find the original project proposal [here][project-proposal].
Here is the day-by-day dev blog:
 * [Day 9][day-9]
 * [Day 8][day-8]
 * [Day 7][day-7]
 * [Day 6][day-6]
 * [Day 5][day-5]
 * [Day 4][day-4]
 * [Day 3][day-3]
 * [Day 2][day-2]
 * [Day 1][day-1]


[guest-link]: http://fpcyan.tumblr.com/post/134748563650/on-guest-accounts-and-eager-loading
[stripe-link]: https://stripe.com/

[project-proposal]: ./docs/project_proposal.md
[day-9]: http://fpcyan.tumblr.com/post/134278919430/w9d5
[day-8]: http://fpcyan.tumblr.com/post/134056134070/w9d4
[day-7]: http://fpcyan.tumblr.com/post/133972751090/w9d3
[day-6]: http://fpcyan.tumblr.com/post/133907376090/w9d2
[day-5]: http://fpcyan.tumblr.com/post/133847063980/w9d1
[day-4]: http://fpcyan.tumblr.com/post/133771899225/w8d5-d6-d7
[day-3]: http://fpcyan.tumblr.com/post/133570478060/w8d4
[day-2]: http://fpcyan.tumblr.com/post/133500995135/w8d3
[day-1]: http://fpcyan.tumblr.com/post/133442467860/w8d2
