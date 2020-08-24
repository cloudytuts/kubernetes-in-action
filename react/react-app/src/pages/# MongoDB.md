# MongoDB

Selecting a database (collection)

`use learning_mongo`

Create a new *cars* collection in the *learning_mongo* database.

`db.cars.insert({"make":"Subaru"})`

This will create both the *learning_mongo* database and *cars* collection.


## Setting Variables
You can set variables in MongoDB. To create a variable named `arr`
`var arr=["one","two","three"]`

```javascript
for (i=0;i<10000;i++) {
    db.numbers.insert(
        {"number":i}
    )
}
```

Now check the number of entries added
`db.numbers.count()`

now find a record

`db.numbers.find({"number":1})`

Examine the execution of a find.
`db.numbers.find({"number":1}).explain("executionStats")`
You will notice from the output that Mongo searched through all 10000 documents. 

Create an index to minimize the number of documents that need to be searched.
`db.numbers.createIndex({number:1})`


## Importing Data

`mongoimport --dv learning_mongo --collection tours --jsonArray --file tours.json`

