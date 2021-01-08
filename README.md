# README

This is a breakable toy for playing with and understanding hotwire, turbolinks, and stimulus JS as they might be used for other projects.
For more info on how those work check out the docs for [turbo](https://turbo.hotwire.dev/handbook/introduction) and [stimulus](https://stimulus.hotwire.dev/handbook/introduction) or read about why you should try [hotwire](https://hotwire.dev/)

Requirements
- See [toolversions file](https://github.com/brimatteng/hotwired/blob/main/.tool-versions) for current language versions
- Postgres
- Redis


Get started: 
```
bundle install
bundle exec rake db:setup
bundle exec rails server
```

Then visit the one interesting route so far: 
`http://localhost:3000/parts?debug=true`
