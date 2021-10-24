GraphQL & Springboot Learning
=============================

Following along an Udemy course

Build using `mvn clean install` and then run the GraphQLWithSpringBootApplication class

Launch webapp using http://localhost:8080/graphiql.  Alternatively you can use altair browser plug and use URL http://localhost:8080/graphql. 

It also uses H2 in-memory database, and it inserts data from data.sql file.  For admin console of database connect to it using http://localhost:8080/h2-console.  User/psw is sa/password.

The database structure 
```
   Student(id, firstName, lastName..)
     --> Address(id, street..) - one-to-one relationship with student
     --> Subject(subjectName, marksObtained..) - one-to-many  relationship with student.  It holds marks scored by the student for a given subject.

```


## Queries that are supported 

### Simple Query
This query doesn't have a parameter and returns a String
```
query{
   firstQuery
}
```

### Query with parameter
Accepts a Type called sampleRequest with 2 fields firstName and lastName.  It then concatenates and returns full name.

Note that firstName is a required field.  Try the query without firstName to see the validation error. 

```
query{
  fullName(sampleRequest: {
    firstName: "Satish"
    lastName: "Babu"
  })
}
```


### Query that pulls data from JPA

```
query{
    Student(id: 101){
        id
        firstName
        lastName
        email
        street
        city
        learningSubjects {
            id
            subjectName
            marksObtained
        }
    }
}
```

### Query with filter condition 
The filter can be on the edge between student and subject (subselect of student)

```
query{
  Student(id: 101){
    id
    firstName
    lastName
    email
    street
    city
    fullName
    learningSubjects(subjectNameFilter: Java) {
      id
      subjectName
      marksObtained
    } 
  }
}
```