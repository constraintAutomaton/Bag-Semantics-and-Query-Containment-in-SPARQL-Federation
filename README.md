# Bag Semantics and Query Containment in SPARQL Federation

📄 **[Download the PDF](../../releases/latest/download/main.pdf)**

**Authors:** Bryan-Elliott Tam, Pieter Colpaert, Ruben Taelman  
**Affiliation:** Ghent University, Belgium

## Abstract

Querying federations of distributed data sources lets applications integrate multiple datasets without centralization, but comes at the cost of higher execution times and bandwidth usage. Query containment for federated SPARQL queries, however, remains unexplored.

This paper formalizes query containment under bag-set semantics for federated SPARQL queries. We introduce *Unions of Conjunctive Federated Queries* (UCFQ), a new class of queries sitting strictly between Conjunctive Queries (CQ) and Unions of Conjunctive Queries (UCQ), capturing the query forms that arise under automatic source selection. We then introduce the *Bag Federation Reduction* (BFR), a transformation from UCFQ to CQ under bag semantics, after which containment can be decided using existing techniques.

## Compiling

Requires a full TeX Live installation.

```bash
make
```

The compiled PDF is output as `main.pdf`.

## License

This work is licensed under [CC BY 4.0](LICENSE).
