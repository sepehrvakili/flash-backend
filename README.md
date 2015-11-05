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

Must provide these parameters:
- auth_token

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

###Send `put` request to `/decks/:id`

Must provide these parameters in addition to the deck id in the url route:

```
auth_token
title
```

##To Delete a Deck

###Send `delete` request to `/decks/:id`

The deck id should be included in the url route.

#CARDS

##To Add a Card

###Send `post` request to `/decks/:id/cards`

Must provide these parameters in addition to the deck id in the url route.

```
auth_token: "ahsd234234f;lhsdf2lh3;fh23f2f"
question: “What is the largest animal?”
answer: “Elephant”
```

##To Edit a Card

###Send `put` request to `/decks/:id/cards/:id`

Must provide these parameters in addtion to the deck id and card id in the url route.

```
auth_token
question
answer
```

##To Show all Cards for a Deck

###Send `get` request to `/decks/:id/cards`

Must provide these parameteres in addition to the deck id in the url route.

```
auth_token
```

You will receive an array of key value pairs of all cards for that deck:

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
