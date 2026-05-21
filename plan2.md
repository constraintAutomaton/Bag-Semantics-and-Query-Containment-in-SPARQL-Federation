# Title: Bag Semantics and Query Containment in Federated SPARQL

## Section

### Introduction

This section introduces query containment and its applications (view selection, caching, and equivalence detection).
In relational databases, set-semantic query containment is well-researched.
Bag-semantic and bag-set semantic containment have also been studied.
However, open problems remain and several fragments are undecidable.

For SPARQL, research has focused on set-semantic containment.
However, to the best of our knowledge, bag-set semantic SPARQL query containment remains unexplored despite SPARQL's native bag-set semantics.
Federated query containment is also unexplored.

This paper focuses on conjunctive SPARQL federated queries under bag-set semantics, bringing the algorithm closer to real-world applicability.

### Related Work

- Query containment
  - Relational databases
  - XPath
  - SPARQL
- Federated Queries

### Preliminaries

#### SPARQL Query Language

- Core terminology: triples, triple patterns, BGP
- SELECT queries and their relationship to conjunctive queries

#### Federated Queries

- SPARQL 1.1 SERVICE clause
- Automatic source selection with FedQPL

#### SpeCS Approach

- Summarizes the approach

#### Bag Semantic Query Containment

Describe how the SpeCS approach can be adapted for bag/bag-set semantics.
Establish that unions of conjunctive queries are an open problem in query containment under (undecidable) bag and (open, but results from the bag semantic might be extrapolated to to this semantic, I need to do it myself) bag-set semantics.

### Query Processing Semantics in Federated Queries

- SPARQL SERVICE clause
- Automatic source selection
  - Exhaustive source selection
  - Other algorithms and how they relate to exhaustive source selection

### Unification of Automatic Source Selection and SPARQL 1.1 Federated Queries

This short section explains how to translate SPARQL 1.1 federated expressions into FedQPL.

### Translating a FedQPL Class of Union of Federated Queries Into Bag Semantic Queries

Building on the undecidability of unions of conjunctive queries under bag and bag-set semantics (established in the Preliminaries), this section presents a translation from a FedQPL class into bag semantic queries.

### Federated Query Containment Under Bag Semantics

- General case
  - New condition for query containment
    - Without consideration for variables in the federation
    - With consideration of variables in the federation, where variables are:
      - From a table provided with the query
      - Bound during query execution
- Consideration for automatic source selection
  - If access to the source selection algorithm is available, how does it simplify the problem
