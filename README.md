# InsultinatorBot
A slackbot that generates insults to sling at your colleagues or friends.

### To get started with this slackbot, follow these steps
    1. Clone this repository or download and extract the files to a folder on your system
    2. Install virtualenv on your system. `sudo apt install virtualenv`
    3. Create a virtual environment in which to run this slack bot. `virtualenv Insultinator`
    4. Install slackclient in the virtual environment. `pip install slackclient`
    5. At https://api.slack.com/apps/new, create a Slack App, and copy its Bot User OAuth Access Token
    6. Save the token as an environment variable in your virtual environment. `export SLACK_BOT_TOKEN='[your bot user access token]'`
    7. Begin the slack bot with the command `python InsultinatorBot.py`

### InsultinatorBot Operation
  The bot will load a basic library from the adjectives.txt, adverbs.txt, and nouns.txt files in the system. It will load the names of all the users in the slack workspace upon starting up.
  The command `@[your Slack App name] insult` will generate a random insult targeted at a random person in your workspace.
  <h4>InsultinatorBot Commands</h4>
      <i>@InsultinatorBot insult</i> - generates a random insult targeted at a random person in the workspace.<br>
      <i>@InsultinatorBot insult @[name]</i> - generates a random insult targeted at [name]. If [name] is the name or handle of someone in your workspace, slackbot will insult them with an @ mention.

<h3> Upcoming Features </h3>
  <ul>
    <li>the ability to add words to the Insultinator's library by the slack workspace's users via a bot command,
    <li>transitioning the vocabulary storage away from text-based .log files and into a proper database such as postgreSQL,
    <li>and moving from @ commands to / commands which requires a major overhaul of the bot's code-base.
  </ul>

<h3>Known Issues</h3>
  <ul>
    <li>If the connection is interuppted for a moment, Insultinator bot does not attempt to reconnect automatically. Instead, an exception is thrown and the program terminates. 
  </ul>
 
    
    
