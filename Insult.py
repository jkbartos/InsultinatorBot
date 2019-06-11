# ------------------------------------------------------------------------------
# Author: Jordan K Bartos
# Description: A class that manages and generates insults for a slackbot
# ------------------------------------------------------------------------------
import requests
import re
import random

class Insultinator:
    def __init__(self, slack_client):
        self.slack_client = slack_client

        # load the adverbs
        self.adverbs = []
        with open("adverbs.txt", 'r') as adv_file:
            for line in adv_file:
                self.adverbs.append(line.rstrip())
        
        # load the adj_1s
        self.adjectives = []
        with open("adjectives.txt", 'r') as adj_file:
            for line in adj_file:
                self.adjectives.append(line.rstrip())

        # load the nouns
        self.nouns = []
        with open("nouns.txt", 'r') as noun_file:
            for line in noun_file:
                self.nouns.append(line.rstrip())

        
        # load the users from the slack channel
        users = slack_client.api_call("users.list", limit = 100)
        self.names = [] 
        for i in range(0, len(users["members"])):
            if users["members"][i]["is_bot"] == False and \
               users["members"][i]["id"] != "USLACKBOT":
                self.names.append(users["members"][i]["real_name"])

    def generate_insult(self):
        # get a random name, adverb, two adjectives, and a noun
        rand_name = self.names[random.randint(0, len(self.names) - 1)]
        rand_adverb = self.adverbs[random.randint(0, len(self.adverbs) - 1)]
        rand_adj_one = self.adjectives[random.randint(0, len(self.adjectives) - 1)]
        rand_adj_two = self.adjectives[random.randint(0, len(self.adjectives) - 1)]
        rand_noun = self.nouns[random.randint(0, len(self.nouns) - 1)]
        # get two different adjectives from the adjectives list
        while rand_adj_one == rand_adj_two:
            rand_adj_two = self.adjectives[random.randint(0, len(self.adjectives) - 1)]

        # return formatted response
        return rand_name + " is " + rand_adverb + " " + rand_adj_one + " " + \
               rand_adj_two + " " + rand_noun + "."

    def get_noun(self):
        return self.nouns[random.randint(0,len(self.nouns) - 1]
