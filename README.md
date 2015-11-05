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

###Send `post` request to `/decks`

Must provide these parameters:

```
auth_token
title
```

##To Show All Decks

###Send `get` request to `/decks`

Required parameters:

```
auth_token
deck_id
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

###Send `put` request to `/decks`

Required parameters:

```
auth_token
deck_id
title
```

##To Delete a Deck

###Send `delete` request to `/decks`

Required parameters:

```
deck_id
```

#CARDS

##To Add a Card

###Send `post` request to `/decks/cards`

Required parameters:

```
auth_token
question
answer
```

##To Edit a Card

###Send `put` request to `/decks/cards`

Required parameters:

```
auth_token
card_id
question
answer
```

##To Show all Cards for a Deck

###Send `get` request to `/decks/cards`

Required parameters:

```
auth_token
card_id
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
