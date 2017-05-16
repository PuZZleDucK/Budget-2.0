# The $ocial Budget - BudgetHack 2017

### Team

The Voice of Victoria, saying it out loud

- puzzleduck
- luke2.0
- davislf2
- Dee

### Goal

Public Input on Funding Allocation for a Budget 2.0

### Possibilities

Follow the vTaiwain model: 1. poll the population, 2. broadcast issue 3. public consultation, 4. binding decision making

Build a system where citizens can "share ideas", "make proposals", "summarize points of view", "put forward positions", "engage in conversations", "vote on outcomes" and refine other citizens ideas and so forth

Components completed:
- users [x]
- topics [x] education p.o.c.
- ideas [x]
- support [x]
- outcomes [x] - top ranking

Nice to do someday:
- replies [ ]
- edits [ ]
- moderation [ ]

### Technology

- Rails 5 application
- Ruby 2.3.1
- Bootstrap layout
- Deployment is on [Heroku](https://budget-2point0.herokuapp.com/)
- Push to repository with passing tests will result in deployment
- CI Pipeline is [Semaphore](https://semaphoreci.com/puzzleduck/budget-2-0)

### Developers

- Get the project ```git clone https://github.com/PuZZleDucK/Budget-2.0.git```
- Install rails dependancies ```bundle install```
- Init DB with ```rails db:migrate```
- Create dummy data using ```rails db:seed```
- Test with ```rails test```
- Run development with ```rails server```

[![Build Status](https://semaphoreci.com/api/v1/puzzleduck/budget-2-0/branches/master/badge.svg)](https://semaphoreci.com/puzzleduck/budget-2-0)
