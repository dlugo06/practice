require 'awesome_print'

class Vertex
  attr_accessor :id, :edges

  def initialize(id)
    @id = id
    @edges = []
  end
end

# DO NOT EDIT
# generate graph from int and array of arrays
def deserialize(n, edges)
  vertices = {}
  while n > 0
    n -= 1
    vertices[n] = Vertex.new(n)
  end
  for edge in edges
    v1 = edge[0]
    v2 = edge[1]
    vertices[v1].edges.push(vertices[v2])
    vertices[v2].edges.push(vertices[v1])
  end

  # UNCOMMENT OUT THIS AREA IF YOU WOULD LIKE TO SEE THE GRAPH YOU'VE BUILT:
  #
  # for id, vertex in vertices
  #   puts ''
  #   puts 'ID: ' + vertex.id.to_s
  #   for edge in vertex.edges
  #     puts 'Edge ID: ' + edge.id.to_s
  #   end
  # end

  # p vertices
  return vertices[0]
end

# sample_graph is the vertex with id 0
sample_cyclic_graph = deserialize(5, [[1,0], [1, 2], [2, 0], [3, 0], [3,4]])
# sample_cycle_2 = deserialize(8, [[0, 1], [1, 2], [2, 4], [3, 5], [4, 5], [1, 7], [4, 6], [4, 7], [5, 6]])
sample_tree = deserialize(5, [[1, 2], [3, 2], [3, 4], [3, 0]])

def tree? starting_vertex
  visited = {}
  result = true

  traverse = lambda do |previous_vertex, current_vertex|
    visited[current_vertex.id] = true

    current_vertex.edges.each do |edge|
      traverse.call(current_vertex, edge) && next unless visited[edge.id]
      edge_is_currents_parent = !(previous_vertex && edge.id == previous_vertex.id)
      result = false and return if visited[edge.id] && edge_is_currents_parent
    end
  end

  traverse.call(nil, starting_vertex)

  result
end
p tree?(sample_tree)
p tree?(sample_cyclic_graph)
