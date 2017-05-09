
# The $ocial Budget - BudgetHack 2017

### Team

- puzzleduck
- richard913
- luke2.0
- saikumar.beera
- davislf2
- lukejh
- bransell
- annel

### Goal

Public Input on Funding Allocation for a Budget 2.0

### Possibilities

Follow the vTaiwain model: 1. poll the population, 2. broadcast issue 3. public consultation, 4. binding decision making

Build a system where citizens can "share ideas", "make proposals", "summarize points of view", "put forward positions", "engage in conversations", "vote on outcomes" and refine other citizens ideas and so forth

Components:
- users
- topics
- votes
- replies
- edits
- moderation
- outcomes

### Technology

- Rails 5 application
- Ruby 2.3.1
- Bootstrap layout
- Deployment is on [Heroku](https://budget-2point0.herokuapp.com/)
- Push to repository with passing tests will result in deployment
- CI Pipeline is [Semaphore](https://semaphoreci.com/puzzleduck/budget-2-0)
* Services (job queues, cache servers, search engines, etc.)

### Developers

- Get the project ```git clone https://github.com/PuZZleDucK/Budget-2.0.git```
- Install rails dependancies ```bundle install```
- Init DB with ```rails db:migrate```
- Test with ```rails test```
- Run development with ```rails server```
