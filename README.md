#Main Backend app URL:

`https://morning-temple-4972.herokuapp.com`

#ADMIN
##To Signup

###Send `post` request to `/signup`

Must provide these parameters:

```
firstname
lastname
email
username
password
```

##To Login

###Send `post` request to `/login`

Must provide these parameters:

```
username
password
```

You will receive the following JSON:

```javascript
{ 
	auth_token: "taljtlhds;fhlh2l3h4;2h34h2342342",
	firstname: "Bob",
	lastname: "Johnson",
	email: "bob@email.com",
	username: "bobjohnson"
}
```

#DECKS

##To Add a Deck

###Send `post` request to `/user/:username/decks`

Must provide these parameters:

Headers:

```
Auth-Token
```

Data:

```
title
```

##To Show All Decks

###Send `get` request to `/user/:username/decks`

Required parameters that you should provide:

Headers:

```
Auth-Token
```

You will receive an array of key value pairs of each deck title and deck id:

```javascript
[
	{ 
		id: 1
		title: “The worlds coolest deck.”, 
	},
	{
		id: 2
		title: "This is another title."
	}
]
```


##To Edit a Deck

###Send `put` request to `/user/:username/decks/:id`

Required parameters in addition to deck `id` in the url:

Headers:

```
Auth-Token
```

Data:

```
title
```

##To Delete a Deck

###Send `delete` request to `/user/:username/decks/:id`

Required parameters in addition to deck `id` in the url:

Headers:

```
Auth-Token
```

#CARDS

##To Add a Card

###Send `post` request to `/user/:username/decks/:id/cards`

Required parameters in addition to deck `id` in the url:

Headers:

```
Auth-Token
```

Data:

```
question
answer
```

##To Edit a Card

###Send `put` request to `/user/:username/decks/:id/cards/:id`

Required parameters in addition to deck `id` and card `id` in the url:

Headers:

```
Auth-Token
```

Data:

```
question
answer
```

##To Show all Cards for a Deck

###Send `get` request to `/user/:username/decks/:id/cards`

Required parameters in addition to deck `id` in the url:

Headers:

```
Auth-Token
```

You will receive an array of key value pairs of all cards for that deck.

This includes card id, card question, card answer:

```javascript
[
	{
		id: 1
		question: "What is the largest animal?"
		answer: "Whale"
	},
	{
		id: 2
		question: "What is the smallest animal?"
		answer: "Shrew"
	}
]
```
