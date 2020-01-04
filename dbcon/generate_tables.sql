DROP TABLE IF EXISTS `nouns`;
DROP TABLE IF EXISTS `adverbs`;
DROP TABLE IF EXISTS `adjectives`;
DROP TABLE IF EXISTS `workspaces`;

CREATE TABLE `nouns` (
  `n_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `noun` varchar(255) UNIQUE NOT NULL,
  PRIMARY KEY (`n_id`)
);

CREATE TABLE `adverbs` (
  `adv_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `adverb` varchar(255) UNIQUE NOT NULL,
  PRIMARY KEY (`adv_id`)
);

CREATE TABLE `adjectives` (
  `adj_id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `adjective` varchar(255) UNIQUE NOT NULL,
  PRIMARY KEY (`adj_id`)
);

CREATE TABLE `workspaces` (
  `id` int(5) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL UNIQUE,
  `token` varchar(255) NOT NULL UNIQUE,
  PRIMARY KEY (`id`)
);

INSERT INTO nouns (noun)
  VALUES ("creep"),
         ("bone-head"),
         ("jerk"),
         ("dingus"),
         ("loser"),
         ("geek"),
         ("weasel"),
         ("dweeb"),
         ("nerd"),
         ("wimp"),
         ("clown"),
         ("baby"),
         ("buffoon"),
         ("chicken"),
         ("chump"),
         ("bumpkin"),
         ("dirtbag"),
         ("doofus"),
         ("fool"),
         ("hypocrite"),
         ("wench"),
         ("low-life"),
         ("mongoloid"),
         ("oaf"),
         ("peasant"),
         ("rat"),
         ("reject"),
         ("slob"),
         ("toad");

INSERT INTO adverbs (adverb)
  VALUES ("an abnormally"),
         ("a deliberately"),
         ("a highly"),
         ("a frightfully"),
         ("a fiercely"),
         ("a famously"),
         ("an extremely"),
         ("an especially"),
         ("an enormously"),
         ("a properly"),
         ("a powerfully"),
         ("an openly"),
         ("a very"),
         ("a totally"),
         ("a completely"),
         ("an entirely"),
         ("a fully"),
         ("a wildly"),
         ("a gigantic"),
         ("a big"),
         ("the ultimate"),
         ("a massively"),
         ("some kind of"),
         ("a supremely"),
         ("an unnaturally"),
         ("an unnecessarily"),
         ("an utterly"),
         ("a woefully");

INSERT INTO adjectives (adjective)
  VALUES ("selfish"),
         ("rude"),
         ("hopeless"),
         ("miserable"),
         ("reckless"),
         ("arrogant"),
         ("big-headed"),
         ("vain"),
         ("pompous"),
         ("callous"),
         ("patronising"),
         ("aloof"),
         ("nasty"),
         ("fussy"),
         ("tactless"),
         ("vulgar"),
         ("boorish"),
         ("cantankerous"),
         ("indolent"),
         ("intolerant"),
         ("miserly"),
         ("sullen"),
         ("surly"),
         ("timid"),
         ("gross"),
         ("dumb"),
         ("foolish"),
         ("creepy"),
         ("ugly"),
         ("slimy"),
         ("weird"),
         ("slobbering"),
         ("freaky"),
         ("stinky"),
         ("bug-eyed"),
         ("greasy"),
         ("boring"),
         ("sneaky"),
         ("wormy"),
         ("obnoxious"),
         ("offensive"),
         ("nervous"),
         ("unbearable"),
         ("unethical"),
         ("useless"),
         ("unimpressive");
