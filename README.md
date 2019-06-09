# InsultinatorBot
A slackbot that generates insults to sling at your colleagues or friends

<div>
  <p>
    <h3>To get started with this slackbot, follow these steps</h3>
    <ol>
      <li> Clone this repository or download and extract the files to a folder on your system </li>
      <li> Install virtualenv on your system. `sudo apt install virtualenv` </li>
      <li> Create a virtual environment in which to run this slack bot. `virtualenv Insultinator` </li>
      <li> Install slackclient in the virtual environment. `pip install slackclient` </li>
      <li> At https://api.slack.com/apps/new, create a Slack App, and copy its Bot User OAuth Access Token </li>
      <li> Save the token as an environment variable in your virtual environment. `export SLACK_BOT_TOKEN='[your bot user access token]'`</li>
      <li> Begin the slack bot with the command `python InsultinatorBot.py` </li>
    </ol>
  </p>
</div>

<div>
<h3> InsultinatorBot Operation </h3>
<p>
  The bot will load a basic library from the adjectives.txt, adverbs.txt, and nouns.txt files in the system. It will load the names of all the users in the slack workspace upon starting up.
  The command `@[your Slack App name] insult` will generate a random insult targeted at a random person in your workspace.
</p>
</div>

<div>
  <h3> Upcoming Features </h3>
  <p>
    Features in progress include the ability to target insults at particular people and the ability to add words to the  Insultinator's library from Slack.
  </p>
</div>
    
