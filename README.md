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

##To Show All Decks for a User

###Send `get` request to `/decks`

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

##To Show a Specific Deck

###Send `get` request to `/decks/:id`

Must provide these parameters:

Headers:

```
Auth-Token
```

You will receive a JSON like:

```javascript
{ 
	id: 1
	title: “The worlds coolest deck.”
}
```

##To Edit a Deck

###Send `put` request to `/decks/:id`

Required parameters in addition to deck `id` in the url:

Headers:

```
Auth-Token
```

Data:

```
title
```

You will receive a JSON like:

```javascript
{ 
	id: 1
	title: “The New title for this deck.”
}
```

##To Delete a Deck

###Send `delete` request to `/decks/:id`

Required parameters in addition to deck `id` in the url:

Headers:

```
Auth-Token
```

##To Add a Deck

###Send `post` request to `/decks`

Must provide these parameters:

Headers:

```
Auth-Token
```

Data:

```
title
```

You will receive a JSON like:

```javascript
{ 
	id: 2
	title: “The title of the deck you just added.”
}
```

...


#CARDS

##To Show all Cards for a Deck

###Send `get` request to `decks/:id/cards`

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

##To Edit All Cards for a Deck

###Send `put` request to `/decks/:id/cards`

Required parameters in addition to deck `id` in the url:

Headers:

```
Auth-Token
```

Data to be provided by you:

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

##To Add a Card

###Send `post` request to `/decks/:id/cards`

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

You will receive a JSON like:

```
{
	id: 5
	question: "The question I just added"
	answer: "Answer"
}
```

##To Show a Specific Card

###Send `get` request to `/cards/:id`

Required parameters in addition to deck `id` in the url:

Headers:

```
Auth-Token
```

You will receive a JSON like:

```
{
	id: 1
	question: "What is the largest animal?"
	answer: "Whale"
}
```

##To Edit a Card

###Send `put` request to `/cards/:id`

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

You will receive a JSON like:

```
{
	id: 3
	question: "This is the edited question?"
	answer: "Answer"
}
```

##To Delete a Card

###Send `delete` request to `/cards/:id`

Required parameters in addition to card `id` in the url:

Headers:

```
Auth-Token
```


