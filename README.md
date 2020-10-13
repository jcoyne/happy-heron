# H2 Self-deposit front end for the Stanford Digital Repository

## Design

* Comps: https://projects.invisionapp.com/share/EQXC9CLKCR2
* Design Documentation: https://docs.google.com/document/d/1fcr2DYo7OrX-qTdeUOTWKSS1rlq_47sehESmbvgUsrk/edit

## Install Dependencies

Ruby dependencies can be installed with `bundle install`, JavaScript dependencies are installed via `yarn install`.

## Testing

Start up dependencies with `docker-compose up`, then run tests with `bundle exec rspec`.

## Type checking

H2 uses Sorbet optional Ruby type checking. Run a manual static type check via `srb tc`; note that CI for H2 will automate this. After adding a new gem to the Gemfile, or running `bundle update`, build the new type definitions with `srb rbi update`.

### Automation

If you would like to automate this step, consider using a git pre-commit hook. To do this, create a file named `.git/hooks/pre-commit` and add code like the following:

```sh
# .git/hooks/pre-commit
if git diff --cached --name-only --diff-filter=ACM | grep --quiet 'Gemfile.lock'
then
    exec env SRB_YES=1 bundle exec srb rbi update
fi

if git diff --cached --name-only --diff-filter=ACM | grep --quiet '^app/'
then
    exec bundle exec rake rails_rbi:all
    exec bundle exec srb rbi hidden-definitions
    exec bundle exec srb rbi suggest-typed
fi
```

Thereafter, every time you commit changes to `Gemfile.lock` or `app`, Sorbet will update type-checking information. Once it's done, add & commit the changes in `sorbet/` (feel free to squash them into the prior commit).

## Deployment

H2 is deployed via Capistrano to servers running the Passenger server in standalone mode (as a systemd service rather than as an Apache module). Passenger configuration lives in `config/Passengerfile.json` which is managed by Puppet and does not live in the application repository.

## Architecture

At the end of the 2020 workcycle, H2 should use sdr-api to do file and metadata deposits.
