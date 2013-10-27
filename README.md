RPG
===

* **[Issue Tracking](https://github.com/rpgmakersanonymous/rpg/issues)**
* **[Development Wiki](https://github.com/rpgmakersanonymous/rpg/wiki)**
* **[Website(eventually)](http://rpgmakersanonymous.github.io/rpg/)**

* [Free Game Art](http://opengameart.org/)

### To Edit

##### Code Repo

```
	$ git clone https://github.com/rpgmakersanonymous/rpg.git rpg
	$ cd rpg
	$ git checkout -b feature_branch
```

##### Wiki

It is a separate repo, clone it to **./wiki/**

```
	$ cd ~/rpg # root of your rpg.git repo
	$ git clone https://github.com/rpgmakersanonymous/rpg.wiki.git wiki # put it in a sub-dir
	$ cd wiki
```

##### GH-Pages
It is an orphan branch with separate files, treat it like the **wiki**

	```
		$ cd ~/rpg # root of your rpg.git repo
		$ git clone https://github.com/rpgmakersanonymous/rpg.git gh-pages # put it in a sub-dir
		$ git checkout gh-pages # always work on this branch, and push to origin gh-pages
	```


