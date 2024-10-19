# Graphs: Overview

## Introduction

Graphs are fundamental data structures that represent relationships between objects, consisting of **vertices** (nodes) and **edges** (connections). The origins of graph theory can be traced back to the "Seven Bridges of Königsberg" problem, solved by Leonhard Euler in 1736, which marked the foundation of graph theory and topology (Diestel, 2005).

Graphs play a vital role in computer science, where they are widely used for modeling relationships in areas such as social networks, computer networks, and biology (Cormen et al., 2009). Several algorithms exist to traverse and analyze graphs, each serving different purposes in problem-solving.

### Definitions

A graph is a way to represent relationships between pairs of objects (Goodrich et al. 2014) or entities. A graph can be defined by a set of vertices and a collection of edges. The edges can contain a weight to represent an arbitrary value, such as cost, or distance, or quantify, for example. Vertices (also called nodes) represent entities in graphs, whereas edges represent relationships between those entities (Xia et al., 2021). In an abstract point of view, a graph *G* is a set of vertex *V* and a collection *E* of pairs of vertex (the edges).

The graph may be directed, when the edges are ordered pairs
*(u, v)* of vertices, with *u* preceding *v*. This type of graph is also called **digraph**. The graph is undirected, when the edges are unordered pairs of vertices, also represented as *(u, v)*.
In this type of graph, the edge *(u, v)* is identical to the edge
*(v, u)*.

The two vertices connected by an edge are called endpoints.
Adjacent vertices are two vertices that are joined by an edge.
Adjacent edges are two edges that have an endpoint in common.
A vertex joined to itself by an edge is called loop.
An edge is incident to a vertex if the vertex is an endpoint of the edge.

Usually, the edges can be represented by a triplet *(u, v, w)*, with *u* and *v* as the endpoints, and *w* as the weight.
The degree of a vertex *v* (*deg{v}*) corresponds to the number of the incident edges to the vertex *v*.
The input degree (*indeg(v)*) of a vertex *v* consists of the number of incident edges in *v*.
The output degree (*outdeg(v)*) of a vertex *v* is the number of incident edges from *v*.

If \emph{G} is a graph with \emph{m} edges, then:

![Equation 1](./images/eq1.png)

The definition **1** is justified by the fact that the edge *(u, v)* is counted twice, one for the endpoint *(u)* and another for the endpoint *(v)*.

If *G* is a directed graph with *m* edges, then:

![Equation 2](./images/eq2.png)

In a directed graph one edge *(u, v)* counts as one unit for the output degree of the source *u* and one unit for the input degree of the target *v*.

Let us consider a simple graph with *n* vertices and *m* edges. If *G* is not a directed graph, then:

![Equation 3](./images/eq3.png)

Two edges can not have the same start point and end point and there is no loops. So, a maximum degree of an edge in *G* is *n - 1*. So, by the definition **1**:

![Equation 4](./images/eq4.png)

Based on the definition **2**, the maximum degree of a vertex in *G* of a directed graph is:

![Equation 5](./images/eq5.png)

### Graph Algorithms

- **Breadth-First Search (BFS)**: This algorithm explores nodes level by level, making it useful for finding the shortest path in unweighted graphs (Cormen et al., 2009). It starts at a source vertex and visits all its neighbors before moving to the next level of vertices.

- **Depth-First Search (DFS)**: DFS explores as far as possible along each branch before backtracking, commonly used in topological sorting and cycle detection (Sedgewick & Wayne, 2011).

- **Dijkstra's Algorithm**: This is an efficient algorithm for finding the shortest path in weighted graphs with non-negative edges, using a priority queue to select the next vertex to explore (Even, 2011).

## Implementation Strategies

Graphs can be implemented in different ways, each with its trade-offs in terms of space and time complexity.

### Edge List

An **edge list** is a basic representation where all edges are listed as pairs of vertices. For example, an undirected graph with edges (A, B) and (B, C) would be represented as `[(A, B), (B, C)]`.

- **Space Complexity**: O(E), where E is the number of edges.
- **Edge Lookup**: O(E), since each edge must be checked.

### Adjacency Matrix

An **adjacency matrix** is a 2D array where the cell at row i and column j indicates whether there is an edge between vertex i and vertex j (Sedgewick & Wayne, 2011).

- **Space Complexity**: O(V²), where V is the number of vertices. This approach is more memory-intensive, especially for sparse graphs.

- **Edge Lookup**: O(1), as each connection can be checked directly.

### Adjacency List

An **adjacency list** is a more space-efficient structure where each vertex maintains a list of its adjacent vertices. For instance, a graph where vertex A is connected to B and C would have a list like `A: [B, C]` (Cormen et al., 2009).

- **Space Complexity**: O(V + E), as space grows with both the number of vertices and edges.

- **Edge Lookup**: O(V) in the worst case, but generally faster for sparse graphs.

### Time Complexity of Graph Traversals

- **Breadth-First Search (BFS)** and **Depth-First Search (DFS)** have a time complexity of O(V + E) (Cormen et al., 2009).

- **Dijkstra's Algorithm**: O((V + E) log V), where a priority queue is used to efficiently select the next node (Even, 2011).

For a deeper dive into these implementation methods, you can check my repository [graphs-ds](https://github.com/francisco-ricardo/graphs_ds), which is still in progress.

## Applications

Graphs are used in various practical applications, ranging from machine learning to social and computer networks.

- **Neural Networks**: Graphs are used to model layers of neurons and their connections. Each node represents a neuron, and the edges represent synaptic connections.

- **Social Networks**: Sites like Facebook or LinkedIn use graph structures where users are nodes, and connections represent friendships or professional relationships (Sedgewick & Wayne, 2011).

- **Computer Networks**: Routers and devices can be modeled as nodes, and network links as edges. Graph-based algorithms are used to optimize routing and traffic control (Cormen et al., 2009).

### Existing Graph-based Solutions

- **Neo4j**: A popular graph database that stores data as nodes and edges, offering efficient querying of relationships in large datasets (Diestel, 2005).

- **Google Maps**: Uses graph algorithms, including Dijkstra’s algorithm, to compute the shortest paths between geographic locations (Even, 2011).

Other notable applications include:

- **Biological Networks**: Graphs are used to model molecular interactions in bioinformatics.

- **Compiler Design**: Directed acyclic graphs (DAGs) help resolve dependencies in compilers (Sedgewick & Wayne, 2011).

- **Recommendation Systems**: Companies like Netflix or Amazon use graphs to model user behavior and item relationships for generating recommendations.

## Conclusion

Graphs are an essential tool in modeling relationships and networks in various fields. Understanding how to efficiently implement and traverse graphs allows developers to build optimized systems for everything from network routing to database design. Through careful selection of implementation strategies and algorithms, we can leverage the full potential of graphs.

## References

- Cormen, T. H., Leiserson, C. E., Rivest, R. L., & Stein, C. (2009). *Introduction to Algorithms*. MIT Press.
- Diestel, R. (2005). *Graph Theory*. Springer.
- Sedgewick, R., & Wayne, K. (2011). *Algorithms*. Addison-Wesley.
- Even, S. (2011). *Graph Algorithms*. Cambridge University Press.
- Goodrich, M. T., Tamassia, R., & Goldwasser, M. H. (2014). *Data structures and algorithms in Java*. John Wiley & Sons.
- Xia, F., Sun, K., Yu, S., Aziz, A., Wan., L., Pan, S., and Liu, H. (2021). *Graph learning: A survey*. IEEE Transactions on Artificial Intelligence, vol. 2, no. 2, pp. 109–127.






# DESCRIPTION

It is a latex document about Graphs Theory.

## HOW TO COMPILE

```bash
cd latex
make doc=article build

```
